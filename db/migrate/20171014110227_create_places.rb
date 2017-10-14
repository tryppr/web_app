class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
    	t.string :name
    	t.float :latitude
    	t.float :longitude
    	t.float :duration
    	t.float :price
    	t.integer :google_id
      t.timestamps
    end
  end
end
