class CreatePostCodeRangeSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :post_code_range_suppliers do |t|
      t.references :post_code_range, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
