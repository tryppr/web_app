# Welcome
class WelcomeController < ApplicationController
  def index
  	@tryppr_route = TrypprRoute.new
  	@tryppr_route.start_location = '52.520066,13.415127'
  	@tryppr_route.end_location = '52.520066,13.415127'
  	@tryppr_route.places = [Place.find(1), Place.find(4), Place.find(7), Place.find(10), Place.find(14), Place.find(16), Place.find(18)]
    @waypoints = @tryppr_route.
    render layout: 'application'
  end

	def about
		render layout: 'application'
	end
end
