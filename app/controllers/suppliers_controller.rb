class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:edit, :update, :show, :destroy]

  def index
    @suppliers = Supplier.all
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
    :short_description, :long_description, :short_description, :website, :address, :cover)
  end 

  def set_supplier
    @supplier = Supplier.find(params[:id])
  end
end
