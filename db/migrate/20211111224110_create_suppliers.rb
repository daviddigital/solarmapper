class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :display_name
      t.string :business_name
      t.string :business_num
      t.string :accred_num
      t.string :phone
      t.string :display_email
      t.string :quote_email
      t.boolean :instant_price
      t.text :short_description
      t.text :long_description

      t.timestamps
    end
  end
end
