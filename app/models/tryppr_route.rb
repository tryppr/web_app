class TrypprRoute 
  attr_accessor :start_location, :end_location, :places

  def puzzle_route
    schedule = facilitate_places
    morning_points = get_route(schedule[:morning_places], start_location, schedule[:midday_places][0].position)['routes'][0]['overview_polyline']['points']
  
  end

  def get_route(places = self.places, start_location, end_location)
    places_positions = places.map{|p| p.position}.join('|')
    GoogleApi.get_google_route(start_location, end_location, places_positions)
  end

  def facilitate_places
    places = self.places
    morning_places = TrypprRoute.order_places(180, places.select{|p| p.visiting_time.morning})
    places -= morning_places
    midday_places = TrypprRoute.order_places(300, places.select{|p| p.visiting_time.midday})
    places -= midday_places
    evening_places = TrypprRoute.order_places(300, places.select{|p| p.visiting_time.evening})
    places -= evening_places
    night_places = TrypprRoute.order_places(300, places.select{|p| p.visiting_time.night})
    {
      morning_places: morning_places,
      midday_places: midday_places,
      evening_places: evening_places,
      night_places: night_places
    }
  end

  private

  def self.order_places time, places
    result = []
    places.sort{|a,b| b.duration <=> a.duration }.each do |place|
      if time - place.duration >= 0  
        result.push(place)
        time -= place.duration
      end
    end
    result
  end

end