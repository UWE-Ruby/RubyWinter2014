class Worker
	
	def Worker.work(n=1)
		x = nil
		n.times { x = yield }
		x
	end
end

