class RemoveSizeFromBatteries < ActiveRecord::Migration[6.1]
  def change
    remove_column :batteries, :size, :string
  end
end
