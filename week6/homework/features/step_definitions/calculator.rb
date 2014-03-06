class Calculator
	
	
	def initialize (speed)
		@speed = speed
	end

	def car_type(type)
		@car_type = type
	end

	def distance(distance)
		@distance = distance
	end
	
	def calculate
		if @distance == 10
			"safe"
		else 
			"unsafe"
		end
	end

	
end

