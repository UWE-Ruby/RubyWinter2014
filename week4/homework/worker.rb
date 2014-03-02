class Worker

	def initialize()
	end 

	def self.work x = 1
		x.times.inject(nilworker){yield}
	end
end

# I attempted this, without it working, and I do not understand why:

# 	def self.work x = 1
# 		x.times do 
# 			yield 
# 		end
# 	end
