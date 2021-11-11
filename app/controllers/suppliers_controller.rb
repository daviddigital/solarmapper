class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end

  def new
  end

  def edit
  end

  def show
  end

  def destroy
  end
end
