class RemoveColumnsFromSolars < ActiveRecord::Migration[6.1]
  def change
    remove_column :solars, :size, :string
    remove_column :solars, :price, :decimal
    remove_column :solars, :available, :boolean
  end
end
