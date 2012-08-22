module ApplicationHelper
	def clocation
		if @geo_location[0].class == Geocoder::Result::Google
			@geo_location[0].formatted_address
		elsif @geo_location[0].class == Geocoder::Result::Freegeoip 
			@geo_location[0].data["city"] + " " + @geo_location[0].data["region_code"] + "(Current Location)"
		else
			"Undisclosed Location"
		end
	end
end
