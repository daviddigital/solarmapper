class AddPriceSolarToSuppliers < ActiveRecord::Migration[6.1]
  def change
    add_column :suppliers, :price_solar, :decimal
  end
end
