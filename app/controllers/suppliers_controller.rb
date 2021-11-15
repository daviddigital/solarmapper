class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:edit, :update, :show, :destroy]
  before_action :set_system_types, only: [:new, :edit, :create]
  before_action :set_batteries_and_solars_and_post_code_ranges, only: [:index, :new, :edit, :create]

  def index
    if params[:postcode]
      # @suppliers = Supplier.post_code_range.post_code_in(params[:postcode])
      # doesnt work
      ## I am trying to do:
      ## x = list of suppliers 
      ## Supplier.each do |supplier|
      ##    supplier.post_code_range.each do |range|
      ##      if post_code_in(params[:postcode])
      ##          x << supplier  
      ## @suppliers = x 
      
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