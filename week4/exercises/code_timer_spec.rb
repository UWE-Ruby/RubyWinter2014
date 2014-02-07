require './code_timer'

describe CodeTimer do
	it "should run our code" do
		flag = false
		CodeTimer.time_code do
			flag = true
		end
		flag.should be_true
	end

	it "should time our code" do
		Time.stub(:now).and_return(0,3)
		time = CodeTimer.time_code do
		end
		time.should be_within(0.1).of(3.0)
	end

	it "should run our code multiple times" do
		count = 0
		CodeTimer.time_code 100 do
			count +=1
		end
		count.should eq 100
		time.should be_within(0.1).of(3.0)
	end


end