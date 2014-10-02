class Worker
	def self.work(n=1)
		a = 0
		n.times {a = yield} if block_given?
		a
	end
end