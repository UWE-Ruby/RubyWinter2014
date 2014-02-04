class Worker
	def self.work(x=1)
		result = nil
		x.times  do
			result = yield
		end
		result
	end
end
