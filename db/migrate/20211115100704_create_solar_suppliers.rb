class CreateSolarSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :solar_suppliers do |t|
      t.references :solar, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
