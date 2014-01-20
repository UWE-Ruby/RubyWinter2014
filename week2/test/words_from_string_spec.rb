require_relative "words_from_string.rb"
require_relative "count_frequency.rb"

describe "Words From String Tests!" do
  context "When scanning string" do
  	before(:all) do
  	  scanstring = "Now is the time for all good men to come to the aid of their country."
  	end

  	it "Should handle empty strings . . ." do
  		words_from_string(""). should eq []
  		words_from_string("     ").should eq []
  	end

  	it "Should handle a single word . . ." do
  		words_from_string("cat").should eq ["cat"]
  		words_from_string("     cat     "). should eq ["cat"]
  	end

  	it "Should be able to handle multiple words . . ." do
  	  scanstring = "Now is the time for all good men to come to the aid of their country."

  	  words_from_string(scanstring).should eq ["now", "is", "the", "time", "for", "all","good","men","to","come","to","the","aid","of","their","country"]
  	end

  	it "Should ignore punctuation . . ." do
  		words_from_string("<the!> cat's, ~mat-.").should == words_from_string("the cat's mat")
  	end
  end
end

describe "Count Frequency Tests!" do
	context "Counting word frequency . . ." do
		before(:all) do
			@scanstring = "Bad Bad Bad Kitty."
		end

		it "Should test an empty list successfully . . ." do
			count_frequency([]).should == {}
		end

		it "Should test a single string successfully . . ." do
			count_frequency(["cat"]).should == ({"cat" => 1})
		end

		it "Should test two different words successfully . . ." do
			count_frequency(["bad","cat"]).should == ({"cat"=>1,"bad"=>1})
		end

		it "Should test words with adjacent repeat . . ." do
			count_frequency(["bad","bad","bad","cat"]).should == ({"bad"=>3, "cat"=>1})
		end

		it "Should test words with non-adjacent repeat . . ." do
			count_frequency(["bad","cat","black","cat"]).should == ({"bad"=>1,"cat"=>2,"black"=>1})
		end
	end
end


