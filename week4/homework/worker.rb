
class Worker

	def self.work r=1
		result = nil
		r.times.map { |i| result = yield(i) }
		result
	end

end

