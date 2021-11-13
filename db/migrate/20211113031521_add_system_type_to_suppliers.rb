class AddSystemTypeToSuppliers < ActiveRecord::Migration[6.1]
  def change
    add_reference :suppliers, :system_type, null: false, foreign_key: true
  end
end
