#dont need to require httparty or json here as all the logic
#is contianed in the other classes

require_relative 'services/single_postcode_service'
require_relative 'services/multi_postcode_service'

class Postcodesio
  #no logic in here! This is the super class and we're getting the
  #logic from the other smaller classes. All we're doing is istantiating
  #each of those smaller classes

  def single_postcode_service
    SinglePostcodeService.new
  end

  def multi_postcode_service
    MultiPostcodeService.new
  end

end
#now we know our individual services will work through the super class

# p service =
# Postcodesio.new.single_postcode_service.get_single_postcode("GL55BP")
p service =
Postcodesio.new.multi_postcode_service.get_multiple_postcodes(["GL55BP", "NE23HL"])
