require 'httparty'
require 'json'

class Postcode
  #include the module httparty to make all its methods available here
  include HTTParty
  attr_accessor :single_postcode_results, :multi_postcode_results

#spcify the base uri witht he built in base_uri method and pass it the uri we want as the base for the argument.
  base_uri('https://api.postcodes.io')

  def get_single_postcode(postcode)
    #specifying the end point for our service. If we jsut put self.get it wouldn't understand.
    #It will look in the class and suse the get method to find the base uri inside the class. Then to get where you want to
    #go, it'll addon the address you've put in the argument!
    @single_postcode_results = self.class.get("/postcodes/#{postcode}")
  end

  def get_multiple_postcodes(postcodes_arr)
    #Since this is a post request, we need a BODY which is our json object. On the hhtparty documentation
    #it tells you how to include a JSON object. So here we define the info we want in th eJSON format
    @multi_postcode_results = self.class.post("/postcodes", body: {"postcodes": postcodes_arr}).body
    puts JSON.parse(@multi_postcode_results)

  end


end

# postcode_single = Postcode.new
# postcode_single.get_single_postcode("B601JA")

postcode_multi = Postcode.new
#Include the JSON object as an argument for the method
postcode_multi.get_multiple_postcodes(["GL55BP", "NE23HL"])
postcode_multi.multi_postcode_results
