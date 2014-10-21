require 'spec_helper.rb'

describe RadianDegreeConverter do 

	before do
		@converter = RadianDegreeConverter.new
	end

	it "should convert radians to decimal degrees" do 
		@converter.convert_radians_to_degrees(1.0).should == 57.2957795
	end

	it "should convert decimal degrees to radians" do
		@converter.convert_degrees_to_radians(1.0).should == 0.0174532925
	end

end