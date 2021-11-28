class SuppliersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_supplier, only: [:edit, :update, :show, :destroy]
  before_action :set_system_types, only: [:new, :edit, :create]
  before_action :set_batteries_and_solars_and_post_code_ranges, only: [:index, :new, :edit, :create]

  def index
    if user_signed_in?
      @suppliers = Supplier.with_role(:admin, current_user)
    else
      if params[:postcode]
        postcode = params[:postcode]
        begin 
          ranges = PostCodeRange.where("? >= postcode_from AND ? <= postcode_to", postcode, postcode)
          @suppliers = ranges[0].suppliers.order(instant_price: :asc) 
        rescue
          flash[:errors] = ["Postcode not found, please try again"]
          redirect_to root_path

        end
      else 
        flash[:errors] = ["Postcode not found, please try again"]
        redirect_to root_path
      end
    end
    
  end

  def new
    @supplier = Supplier.new
  end

  def edit
  end

  def show
  end

  def create
    @supplier = Supplier.new(supplier_params)
    begin
      @supplier.save!
      current_user.add_role :admin, @supplier
      redirect_to @supplier
    rescue
      flash.now[:errors] = @supplier.errors.full_messages
      render 'new'
    end
  end

  def destroy
    @supplier.destroy
    redirect_to suppliers_path
  end

  def update
    @supplier.update(supplier_params)
    redirect_to @supplier
  end 

  private

  def supplier_params
    params.require(:supplier).permit(:display_name, :business_name, :business_num, :accred_num, :phone, :display_email, :quote_email, :instant_price, 
    :short_description, :long_description, :short_description, :website, :address, :cover, :system_type_id, :price_solar, :price_battery, :solar_offer, :battery_offer, solar_ids: [], battery_ids: [], post_code_range_ids: [])
  end 

  def set_batteries_and_solars_and_post_code_ranges
    @batteries = Battery.order(name: :asc)
    @solars = Solar.order(name: :asc)
    @post_code_ranges = PostCodeRange.order(postcode_from: :asc)
  end

  def set_system_types
    @system_types = SystemType.order(name: :asc)
  end

  def set_supplier
    @supplier = Supplier.find(params[:id])
    if !user_signed_in?
      postcode = params[:postcode]
      range = PostCodeRange.where("? >= postcode_from AND ? <= postcode_to", postcode, postcode)
      @rebate = range[0].rebate(10, range[0][:rating])
    end
  end
end