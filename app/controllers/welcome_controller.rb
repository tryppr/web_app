require 'place'

# Welcome
class WelcomeController < ApplicationController
  def index
    render layout: 'application'
  end

  def about
    render layout: 'application'
  end

  def map
  	@tryppr_route = TrypprRoute.new
  	@tryppr_route.start_location = '52.5078022,13.3889263'
  	@tryppr_route.end_location = '52.5078022,13.3889263'
  	@tryppr_route.places = [Place.find(1), Place.find(4), Place.find(7), Place.find(10), Place.find(14), Place.find(16), Place.find(18), Place.find(6)]
    @schedule = @tryppr_route.facilitate_places
    @route = @tryppr_route.puzzle_route
    render layout: 'application'
  end
end
