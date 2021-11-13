class CreateSystemTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :system_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
