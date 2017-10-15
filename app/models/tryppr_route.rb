class TrypprRoute
  attr_accessor :start_location, :end_location, :places

  def puzzle_route
    schedule = facilitate_places
    morning_points = get_route(schedule[:morning_places], start_location, schedule[:midday_places][0].position)['routes'][0]['overview_polyline']['points']
    midday_points = get_route(schedule[:midday_places].shift, schedule[:midday_places][0].position, schedule[:evening_places][0].position)['routes'][0]['overview_polyline']['points']
    if schedule[:evening_places].length > 1 
      evening_points = get_route(schedule[:evening_places].shift, schedule[:evening_places][0].position, end_location)['routes'][0]['overview_polyline']['points']
    else
      evening_points = ''
    end
    [morning_points, midday_points, evening_points]
  end

  def get_route(places = self.places, start, finish)
    if places.is_a?(Array)  
      places_positions = places.map{|p| p.position}.join('|') 
    else
      places_positions = places.position
    end
    GoogleApi.get_google_route(start, finish, places_positions)
  end

  def facilitate_places
    places = self.places
    morning_places = TrypprRoute.order_places(180, places.select{|p| p.visiting_time.morning})
    places -= morning_places
    midday_places = TrypprRoute.order_places(300, places.select{|p| p.visiting_time.midday})
    places -= midday_places
    evening_places = TrypprRoute.order_places(500, places.select{|p| p.visiting_time.evening || p.visiting_time.night})
    {
      morning_places: morning_places,
      midday_places: midday_places,
      evening_places: evening_places,
    }
  end

  private

  def self.order_places(time, places)
    result = []
    places.sort { |a, b| b.duration <=> a.duration }.each do |place|
      if time - place.duration >= 0
        result.push(place)
        time -= place.duration
      end
    end
    result
  end
end
