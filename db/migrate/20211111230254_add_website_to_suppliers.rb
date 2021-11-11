class AddWebsiteToSuppliers < ActiveRecord::Migration[6.1]
  def change
    add_column :suppliers, :website, :string
  end
end
