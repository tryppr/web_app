class ChangeDuration < ActiveRecord::Migration[5.1]
  def change
  	change_column :places, :duration, :integer, default: 60
  end
end
