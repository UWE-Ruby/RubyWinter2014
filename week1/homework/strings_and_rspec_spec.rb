# encoding: utf-8

# Please make these examples all pass
# You will need to change the 3 pending tests
# You will need to write a passing test for the first example 
# 	(Hint: If you need help refer to the in-class exercises)
# The two tests with the pending keyword, require some ruby code to be written
# 	(Hint: You should do the reading on Strings first)

describe String do
	context "When a string is defined" do
		before(:all) do
			@myString = "JayaPrakash likes programming and mystery novels"
		end
<<<<<<< HEAD
		it "should be able to count the charaters" do
			(@myString.length).should eq 48
		end
		it "should be able to split on the ' ' charater" do
			result = @myString.split(' ')
			result.should have(6).items	
		end
		it "should be able to give the encoding of the string" do
			(@myString.encoding).should_not eq nil
			(@myString.encoding.to_s).should eq "UTF-8"
			(@myString.encoding).should eq Encoding.find("UTF-8")
			@myString = @myString.force_encoding(Encoding.find("ASCII-8BIT"))
			(@myString.encoding).should eq Encoding.find("ASCII-8BIT")
			(@myString.encoding).should_not eq Encoding.find("UTF-8")
			(@myString.encoding == Encoding.find("UTF-8")).should eq false
=======
		it "should be able to count the characters" do
			@my_string.should have(@my_string.size).characters
		end
		it "should be able to split on the . charater" do
			result = @my_string.split('.')
			result.should have(2).items	
		end
		it "should be able to give the encoding of the string" do
			@my_string.encoding.should eq (Encoding.find("UTF-8"))
>>>>>>> cba25955989e180ca8e193c9e3162b72b1fb0329
		end
	end
end
