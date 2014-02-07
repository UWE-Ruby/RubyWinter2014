class Calculator

	def sum (input = [])
		input.inject(0) { |sum, i| sum + i }
	end

	def multiply (*input)
  		input.flatten.reduce(:*)
	end

	def fac (input)
		return 1 if input.zero?
		input.downto(1).inject(:*)
	end
#
	def pow (num, exp)
		num**exp
	end

end