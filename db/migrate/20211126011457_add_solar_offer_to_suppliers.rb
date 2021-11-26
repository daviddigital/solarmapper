class AddSolarOfferToSuppliers < ActiveRecord::Migration[6.1]
  def change
    add_column :suppliers, :solar_offer, :text
  end
end
