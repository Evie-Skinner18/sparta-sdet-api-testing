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

  def get_quality_integer
    @single_results["result"]["quality"]
  end

  def get_eastings_integer
    @single_results["result"]["eastings"]
  end

  def check_country
    @single_results["result"]["country"]
      case ["country"]
      when ["England"]
      when ["Scotland"]
      when ["Northern Ireland"]
      when ["Wales"]
      else
        false
      end

  end #end of check_country

  def get_NHS_authority
    @single_results["result"]["nhs_ha"]
  end

end #end of class

single_results = Postcodesio.new
puts single_results.get_single_postcode("GL55BP")
#puts single_results.check_country
