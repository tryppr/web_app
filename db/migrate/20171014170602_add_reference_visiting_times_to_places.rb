class AddReferenceVisitingTimesToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_reference :places, :visiting_time, foreign_key: true
  end
end
