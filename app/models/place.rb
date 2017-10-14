class Place < ApplicationRecord
	validates_presence_of :name, :latitude, :longitudes
	belongs_to :category
end
