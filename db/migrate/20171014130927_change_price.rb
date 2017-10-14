class ChangePrice < ActiveRecord::Migration[5.1]
  def change
  	change_column :places, :price, :integer, default: 0
  end
end
