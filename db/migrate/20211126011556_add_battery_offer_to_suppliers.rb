class AddBatteryOfferToSuppliers < ActiveRecord::Migration[6.1]
  def change
    add_column :suppliers, :battery_offer, :text
  end
end
