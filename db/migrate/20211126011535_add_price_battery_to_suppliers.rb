class AddPriceBatteryToSuppliers < ActiveRecord::Migration[6.1]
  def change
    add_column :suppliers, :price_battery, :decimal
  end
end
