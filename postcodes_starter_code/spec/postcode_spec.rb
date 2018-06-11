require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new
      @postcodesio.get_single_postcode('GL55BP') #input a postcode
    end

    it "should respond with a status message of 200" do
      expect(@postcodesio.get_status_code).to be 200
    end

    it "should have a results hash" do
      expect(@postcodesio.single_results).to be_a(Hash)
    end

    it "should return a postcode between 5-7 in length"  do
      expect(@postcodesio.get_postcode_length).to be_between(5,7)
    end

    it "should return an quality key integer between 1-9" do
      expect(@postcodesio.get_quality_integer).to be_between(1,9)
    end

    it "should return an ordnance survey eastings value as integer" do
      expect(@postcodesio.get_eastings_integer).to be_a(Integer)
    end

    # it "should return an ordnance survey eastings value as integer" do
    # end

    it "should return a country which is one of the four constituent countries of the UK" do
      expect(@postcodesio.get_country).to eq("England").or eq("Scotland").or eq("Northern Ireland").or eq("Wales")
    end

    it "should return a string value for NHS authority " do
      expect(@postcodesio.get_NHS_authority).to be_a(String)
    end

    it "should return a longitude float value" do
      expect(@postcodesio.get_longitude).to be_a(Float)
    end

    it "should return a latitude float value" do
      expect(@postcodesio.get_latitude).to be_a(Float)
    end

    it "should return a parliamentary constituency string" do
      expect(@postcodesio.get_constituency).to be_a(String)
    end

    it "should return a european_electoral_region string" do
      expect(@postcodesio.get_european_region).to be_a(String)
    end

    it "should return a primary_care_trust string" do
      expect(@postcodesio.get_primary_care_trust).to be_a(String)
    end

    it "should return a region string" do
      expect(@postcodesio.get_region).to be_a(String)
    end

    it "should return a parish string" do
      expect(@postcodesio.get_parish).to be_a(String)
    end

    it "should return a lsoa string" do
    end

    it "should return a msoa string" do
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
    end

    it "should return a incode string of three characters" do
    end

    it "should return a msoa string" do
    end

    it "should return a incode string of 3-4 characters" do
    end
  end

  context "multiple postcodes validation" do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_multiple_postcodes(['B601JA', 'SW155DU']) #Add in array of postcodes
    end

    it "should respond with a status message of 200" do
      # @response["status"]
      # expect.to return 200
    end

    it "should return the first query as the first postcode in the response" do
    end

    it "should return the second query as the first postcode in the response" do
    end

    it "should have a results hash" do
    end

    it "should return a postcode between 5-7 in length"  do
    end

    it "should return an quality key integer between 1-9" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return a country which is one of the four constituent countries of the UK" do
    end

    it "should return a string value for NHS authority " do
    end

    it "should return a longitude float value" do
    end

    it "should return a latitude float value" do
    end

    it "should return a parliamentary constituency string" do
    end

    it "should return a european_electoral_region string" do
    end

    it "should return a primary_care_trust string" do
    end

    it "should return a region string" do
    end

    it "should return a parish string" do
    end

    it "should return a lsoa string" do
    end

    it "should return a msoa string" do
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
    end

    it "should return a incode string of three characters" do
    end

    it "should return a msoa string" do
    end

    it "should return a incode string of 3-4 characters" do
    end

    it "should have a results hash" do
    end

    it "should return a postcode between 5-7 in length"  do
    end

    it "should return an quality key integer between 1-9" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return a country which is one of the four constituent countries of the UK" do
    end

    it "should return a string value for NHS authority " do
    end

    it "should return a longitude float value" do
    end

    it "should return a latitude float value" do
    end

    it "should return a parliamentary constituency string" do
    end

    it "should return a european_electoral_region string" do
    end

    it "should return a primary_care_trust string" do
    end

    it "should return a region string" do
    end

    it "should return a parish string" do
    end

    it "should return a lsoa string" do
    end

    it "should return a msoa string" do
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
    end

    it "should return a incode string of three characters" do
    end

    it "should return a msoa string" do
    end

    it "should return a incode string of 3-4 characters" do
    end

  end


end
