class Calculator
	
	
	def initialize (speed)
		@speed = speed
	end
	puts "Enter your speed"
	speed  = gets
	# puts speed

	def car_type(type)
		@car_type = type
	end
	puts "Enter car type"
	type = gets

	def distance(distance)
		@distance = distance
	end
	puts "Enter distance from car"
	distance = gets
	
	def calculate
		if @distance == 10
			"safe"
		else 
			"unsafe"
		end

	end
	puts
	puts "You are safe"

	
end

