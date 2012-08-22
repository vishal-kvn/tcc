# class Location < ActiveRecord::Base
class Location < Hashie::Mash
	def self.weather(lat, lng)
		@url = "http://api.met.no/weatherapi/locationforecast/1.8/?lat=#{lat};lon=#{lng}"
		@response = RestClient.get @url
		@response_hash = Hash.from_xml(@response)
		@response_hash["weatherdata"]["product"]["time"][0]["location"]
		#add error check when api is down
	end
end
# 40.0409, -75.6374
# @url = "http://api.met.no/weatherapi/locationforecast/1.8/?lat=40.0409;lon=-75.6374"

# i=Geocoder.search("127.0.0.1")
#  => [#<Geocoder::Result::Freegeoip:0x007ff004a77c58 @data={"ip"=>"127.0.0.1", "city"=>"", "region_code"=>"", "region_name"=>"", "metrocode"=>"", "zipcode"=>"", "latitude"=>"0", "longitude"=>"0", "country_name"=>"Reserved", "country_code"=>"RD"}, @cache_hit=nil>] 
# 1.9.2-p290 :053 > 

# i=Geocoder.search("69.142.67.13")
#  => [#<Geocoder::Result::Freegeoip:0x007ff0034b0320 @data={"city"=>"Exton", "region_code"=>"PA", "region_name"=>"Pennsylvania", "metrocode"=>"504", "zipcode"=>"19341", "longitude"=>"-75.6374", "latitude"=>"40.0409", "country_code"=>"US", "ip"=>"69.142.67.13", "country_name"=>"United States"}, @cache_hit=nil>] 

#  z=Geocoder.search("08618")
 # => [#<Geocoder::Result::Google:0x007ff0031c6920 @data={"address_components"=>[{"long_name"=>"08618", "short_name"=>"08618", "types"=>["postal_code"]}, {"long_name"=>"Trenton", "short_name"=>"Trenton", "types"=>["locality", "political"]}, {"long_name"=>"New Jersey", "short_name"=>"NJ", "types"=>["administrative_area_level_1", "political"]}, {"long_name"=>"United States", "short_name"=>"US", "types"=>["country", "political"]}], "formatted_address"=>"Trenton, NJ 08618, USA", "geometry"=>{"bounds"=>{"northeast"=>{"lat"=>40.2922079, "lng"=>-74.75319999999999}, "southwest"=>{"lat"=>40.2197139, "lng"=>-74.819507}}, "location"=>{"lat"=>40.2450268, "lng"=>-74.7863698}, "location_type"=>"APPROXIMATE", "viewport"=>{"northeast"=>{"lat"=>40.2922079, "lng"=>-74.75319999999999}, "southwest"=>{"lat"=>40.2197139, "lng"=>-74.819507}}}, "types"=>["postal_code"]}, @cache_hit=nil>] 