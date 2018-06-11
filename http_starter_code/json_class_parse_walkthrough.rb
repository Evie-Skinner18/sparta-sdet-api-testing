require 'json'
require 'httparty'

class ParseJson

  attr_accessor :json_file

  def initialize(json)
    @json_file = JSON.parse(File.read(json))
  end

  def do_call
    HTTParty.get('http://data.fixer.io/api/latest?access_key=9d8a9108b5962ddb85c9840f12ed7f90').code
  end


end

run = ParseJson.new('json_example.json')
#
# p run.json_file
p run.do_call
