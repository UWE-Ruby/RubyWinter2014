class Worker
	
	# set x to nil, and then append yield to x for n times
	# then return x
	def Worker.work(n=1)
		x = nil
		n.times { x = yield }
		x
	end
end

