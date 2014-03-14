require "../../bearror/lib/bearror.rb"
include Bearror
include Kernal

class Worker

	def self.work r= 1
	result = nil
		r.times.map { |i| result = yield(i) }
		result
	end

