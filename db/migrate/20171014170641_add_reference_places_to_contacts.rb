class AddReferencePlacesToContacts < ActiveRecord::Migration[5.1]
  def change
    add_reference :contacts, :place, foreign_key: true
  end
end
