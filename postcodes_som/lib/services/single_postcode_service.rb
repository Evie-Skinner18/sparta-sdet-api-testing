require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    #Store everything that's parsed through JSON inside an instance variable
    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_postcode
    puts @single_postcode_data["result"]["postcode"]
  end

  def get_response_code
    @single_postcode_data["status"]
  end

  # def get_results
  #   @single_postcode_data["results"]
  # end


end
#create a new instanceof the SinglePostcodeService class which calls the API
response = SinglePostcodeService.new

#call the method on this instance of the object which will store inside it
#theinstance varibale inside which the JSON data is stored
response.get_single_postcode("GL55BP")

#Call the method on this which puts the particular postcode to the console so we can see
response.get_postcode
