class Worker

	# Solution for first 3 tests:
	# def self.work
	# 	yield
	# end

	def self.work(num=1)
		result = nil
		num.times { |current| result = yield(current) }
		result
	end

	# After running into trouble with the .times method, I based my
	# solution for test #3 on the helpful explanations from this
	# StackOverflow question: 
	# http://stackoverflow.com/questions/20182646/ruby-yield-called-from-within-integertimes-not-returning-the-evaluated-block

end