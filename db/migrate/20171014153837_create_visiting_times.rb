class CreateVisitingTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :visiting_times do |t|
    	t.boolean :morning
    	t.boolean :midday
    	t.boolean :evening 
    	t.boolean :night
      t.timestamps
    end
  end
end
