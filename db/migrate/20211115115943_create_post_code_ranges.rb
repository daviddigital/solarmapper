class CreatePostCodeRanges < ActiveRecord::Migration[6.1]
  def change
    create_table :post_code_ranges do |t|
      t.numeric :postcode_from
      t.numeric :postcode_to
      t.integer :zone
      t.float :rating

      t.timestamps
    end
  end
end
