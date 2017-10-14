class Place < ApplicationRecord
	validates_presence_of :name, :latitude, :longitude
	belongs_to :category
	has_one :contact
	belongs_to :visiting_time
end
