class Worker

	def self.work (count = 1)
		count.times { @result = yield(@result) }
		@result
	end

end