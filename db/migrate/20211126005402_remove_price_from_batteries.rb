class RemovePriceFromBatteries < ActiveRecord::Migration[6.1]
  def change
    remove_column :batteries, :price, :decimal
  end
end
