require 'httparty'

#We can make requests now from inside Ruby!!

response = HTTParty.get('http://www.codebar.io')
puts response.message
