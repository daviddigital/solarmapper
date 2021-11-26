class RemoveAvailableFromBatteries < ActiveRecord::Migration[6.1]
  def change
    remove_column :batteries, :available, :boolean
  end
end
