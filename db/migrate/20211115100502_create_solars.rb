class CreateSolars < ActiveRecord::Migration[6.1]
  def change
    create_table :solars do |t|
      t.string :name
      t.string :size
      t.text :description
      t.decimal :price
      t.boolean :available

      t.timestamps
    end
  end
end
