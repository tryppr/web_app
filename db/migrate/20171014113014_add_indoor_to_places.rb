class AddIndoorToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :indoor, :boolean
  end
end
