class SuppliersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_supplier, only: [:edit, :update, :show, :destroy]
  before_action :set_system_types, only: [:new, :edit, :create]
  before_action :set_batteries_and_solars_and_post_code_ranges, only: [:index, :new, :edit, :create]

  def index
    if params[:postcode]
      postcode = params[:postcode]
      begin 
        ranges = PostCodeRange.where("? >= postcode_from AND ? <= postcode_to", postcode, postcode)
        @suppliers = ranges[0].suppliers.order(instant_price: :asc) 
      rescue
        # TODO Throw error if cant find postcode
        # flash.now[:error] = @post_code_ranges.errors.full_messages
        @suppliers = Supplier.order(instant_price: :asc)
        render 'index'
      end
    else 
      @suppliers = Supplier.order(instant_price: :asc)
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

  # Update to show validation
  def update
    @supplier.update(supplier_params)
    redirect_to @supplier
  end 

  private

  ## Todo add relations 
  def supplier_params
    params.require(:supplier).permit(:display_name, :business_name, :business_num, :accred_num, :phone, :display_email, :quote_email, :instant_price, 
    :short_description, :long_description, :short_description, :website, :address, :cover, :system_type_id, solar_ids: [], battery_ids: [], post_code_range_ids: [])
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
  end
end