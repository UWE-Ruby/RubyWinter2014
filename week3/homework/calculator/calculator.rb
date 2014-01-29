
class Calculator

	def sum array
		array.inject(0) {|x, y| x + y}
	end

	def multiply *arg
		arg.flatten.inject(:*)
	end

	def pow (x,y)
		p = x ** y
	end

	def fac x
		(1..x).inject(:*) || 1 #This handles the case for 0
	end

end




