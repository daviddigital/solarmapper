class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:edit, :update, :show, :destroy]
  before_action :set_system_types, only: [:new, :edit, :create]
  before_action :set_batteries_and_solars, only: [:new, :edit, :create]

  # Filter suppliers by instant price available first
  def index
    @suppliers = Supplier.order(instant_price: :asc)
  end

  def new
    @supplier = Supplier.new
  end

  def edit
  end

  def show
  end

  def create
    @supplier = Supplier.create!(supplier_params)
    @supplier.save
    redirect_to @supplier
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

  ## Todo add relations 
  def supplier_params
    params.require(:supplier).permit(:display_name, :business_name, :business_num, :accred_num, :phone, :display_email, :quote_email, :instant_price, 
    :short_description, :long_description, :short_description, :website, :address, :cover, :system_type_id, solar_ids: [], battery_ids: [])
  end 

  def set_batteries_and_solars
    @batteries = Battery.order(name: :asc)
    @solars = Solar.order(name: :asc)
  end

  def set_system_types
    @system_types = SystemType.order(name: :asc)
  end

  def set_supplier
    @supplier = Supplier.find(params[:id])
  end
end
