require 'httparty'
require 'json'

class Postcodesio
  #Want to include HTTParty as a module linking it to the class
  include HTTParty

  attr_accessor :single_results

  base_uri 'https://api.postcodes.io'

  #Grabbing one postcode from the API using HTTParty
  def get_single_postcode(postcode)
    @single_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

#Grabbing an array of many postcodes by parsing the data in the API through a JSON object
  def get_multiple_postcodes(postcodes_array)
    @many_results = JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end

#Methods for one postcode
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

  def get_country
    @single_results["result"]["country"]
  end

#Surely there's a way to make all this more DRY..?
  def get_NHS_authority
    @single_results["result"]["nhs_ha"]
  end

  def get_longitude
    @single_results["result"]["longitude"]
  end

  def get_latitude
    @single_results["result"]["latitude"]
  end

  def get_constituency
    @single_results["result"]["parliamentary_constituency"]
  end

  def get_european_region
    @single_results["result"]["european_electoral_region"]
  end

  def get_primary_care_trust
    @single_results["result"]["primary_care_trust"]
  end

  def get_region
    @single_results["result"]["region"]
  end

  def get_parish
    @single_results["result"]["parish"]
  end

  def get_lsoa
    @single_results["result"]["lsoa"]
  end

  def get_msoa
    @single_results["result"]["msoa"]
  end

  def get_admin_district
    @single_results["result"]["admin_district"]
  end

  def get_in_code
    in_code = @single_results["result"]["incode"]
    in_code.length
  end

  #Methods for many postcodes
  def get_multiple_status
    @many_results["result"]["status"]
  end

end #end of class

single_results = Postcodesio.new
puts single_results.get_single_postcode("GL55BP")
#puts single_results.check_country
