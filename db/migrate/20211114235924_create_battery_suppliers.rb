class CreateBatterySuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :battery_suppliers do |t|
      t.references :battery, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
