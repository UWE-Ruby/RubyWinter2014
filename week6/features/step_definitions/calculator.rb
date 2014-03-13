class Calculator
	attr_accessor :speed, :distance, :car_type, :calculation
	
	def initialize (speed)
		@speed = speed
	end
	puts "Enter your speed"
	@speed  = gets
	# puts @speed

	def car_type(type)
		@car_type = type
	end
	puts "Enter car type"
	@car_type = gets

	def distance(distance)
		@distance = distance
	end
	puts "Enter distance from car"
	@distance = gets

	
	def calculate
		x = 10
		@calculation = @distance * x
		puts "Your safe speed is #{@distance}"
		# @calculation = @distance * @speed
		# # I want to multiply the car distance times 10 mph
		# x = @distance.to_i * 10

		# # this was the code I was using to make the tests pass.
		# if @distance == "10"
		# 	"safe"
		# else 
		# 	"unsafe"
		# end

	end
	# puts @calculation
	# puts "Your safe speed is #{@distance}"

	
end