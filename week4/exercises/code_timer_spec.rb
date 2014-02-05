require './code_timer'

describe CodeTimer do 

	it "should run our code" do
		flag = false

		CodeTimer.time_code  do
			flag=true
		end

		flag.should be_true

	end

	it "should time our code" do
		Time.stub(:now).and_return(0,3)
		time = CodeTimer.time_code do
			#sleep 3 #takes a number of seconds that its supposed to sleep for
			#{}"not 3"
		end
		time.should be_within(0.1).of(3.0)
	end

	it "should run our code multiple times" do
		count = 0
		CodeTimer.time_code 100 do
			count += 1
		end
		count.should eq 100
	end

	it "should give the average time it takes to run" do
		Time.stub(:now).and_return(0,300)
		time = CodeTimer.time_code 100 do
		end
		time.should be_within(0.1).of(3.0)
	end
	
end











