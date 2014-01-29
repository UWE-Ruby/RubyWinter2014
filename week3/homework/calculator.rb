class Calculator
	def sum input
		if input.empty?
			#input array is empty
			result = 0
		else
			#input array is not empty
			result = input.inject(:+)
		end
		result
	end

	def multiply input, n = 1
		if Array.try_convert(input) == nil
			#input is not an array
			result = input * n
		else
			#input is an array
			result = input.inject(:*)
		end
		result
	end

	def pow input, n = 1
		#raise input to the n power
		result = input ** n
	end

	def fac input
		if input < 2
			#factorial of 0 and 1 is 1
			result = 1
		else
			#multiply all positive integers from input down to 1
			result = input.downto(1).inject(:*)
		end
		result
	end
end