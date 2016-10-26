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
			@my_string = "Renée is a fun teacher. Ruby is a really cool programming language"
		end
    it "should be able to deine empty string" do
      @my_string.should_not be_empty
    end
		it "should be able to count the charaters" do
      @my_string.should have(@my_string.length).characters
    end
      # ruby count string characters
		it "should be able to split on the . charater" do
      # ruby split code
      #
      #result = @my_string.split(.)
			#pending
			#result.should have(2).items	
		end
		it "should be able to give the encoding of the string" do
#      # encoding string
#      @my_string.encoding.should eq (Encoding.find("("UTF-8").valid_encoding?
		end
	end
end

