require 'spec_helper.rb'

describe KjlTestGem do 

	it 'should indicate success' do 
		KjlTestGem.new().success.should eq "My test gem is successful!"
	end

end