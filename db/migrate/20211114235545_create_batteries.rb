class CreateBatteries < ActiveRecord::Migration[6.1]
  def change
    create_table :batteries do |t|
      t.string :size
      t.string :name
      t.decimal :price
      t.text :description
      t.boolean :available

      t.timestamps
    end
  end
end
