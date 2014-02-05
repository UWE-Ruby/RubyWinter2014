
class Calculator

	def sum input
		input.inject 0, :+
	end

	def multiply *args
		args.flatten.inject :*
	end

	def pow x,y
		p = x ** y
	end

	def fac x
		(1..x).inject(:*) || 1 #This handles the case for 0
	end

end




