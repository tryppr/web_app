class GoogleApi 

	# format of start_position: 'latitude,longitude', place_positions: 'latitude,longitude|latitude,longitude|..'
	def self.get_google_route start_position, end_position, places_positions
		require "rubygems"
		require "json"
		require "net/http"
		require "uri"

		api_key = 'AIzaSyBoR4awxnOv_gCLIMKQmhFclynJ3GTO8wA'

		uri = URI.parse("https://maps.googleapis.com/maps/api/directions/json?origin=#{start_position}&destination=#{end_position}&mode=walking&waypoints=optimize:true|#{places_positions}&key=#{api_key}")

		http = Net::HTTP.new(uri.host, uri.port)
		http.use_ssl = true
		request = Net::HTTP::Get.new(uri.request_uri)

		response = http.request(request)

		puts response.code

		if response.code == "200"
		  result = JSON.parse(response.body)
		  
#		  result.each do |doc|
#		    puts doc["id"] #reference properties like this
#		    puts doc # this is the result in object form    
#		    puts ""
#		    puts ""
#		  end
		else
		  puts "ERROR!!!"
		end
	end

end