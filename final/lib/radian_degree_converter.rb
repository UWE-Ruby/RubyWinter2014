# This class converts radians to decimal degrees and decimal degrees to radians.
# It will validate the method input to make sure it is float compatible and return 
# an error message if the input cannot be converted to a float.
#
# Author :: Kevin LaFave
# License :: MIT 
class RadianDegreeConverter

	# This method validates the input to see if it is float compatible.
	# * input : The value that needs to be validated.
	def is_numeric? input
		begin
			Float(input)
		rescue
			false
		else
			true
		end
	end

	# This method returns an error message when the convert method input was not float compatible.
	def error_message
		puts "Invalid input. Must enter an integer or decimal number"
	end

	# This method converts radians to its decimal degrees equivalent.
	# * input : The radian value that needs to be converted to decimal degrees. 
	def convert_radians_to_degrees input
		if is_numeric? input
			@result = input.to_f * 57.2957795
		else
			error_message
			@result = nil
		end
	end

	# This method converts decimal degrees to its radians equivalent.
	# * input : The decimal degree value that needs to be converted to radians.
	def convert_degrees_to_radians input
		if is_numeric? input
			@result = input.to_f * 0.0174532925
		else
			error_message
			@result = nil
		end
	end

end
