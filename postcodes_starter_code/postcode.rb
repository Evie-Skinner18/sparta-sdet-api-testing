require 'httparty'
require 'json'

class Postcodesio
  include HTTParty

  attr_accessor :single_results

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    @single_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_multiple_postcodes(postcodes_array)
    JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end

  def get_status_code
    @single_results["status"]
  end

  def get_postcode_length
    @single_results["result"]["postcode"].gsub(" ", "").length
  end


end
