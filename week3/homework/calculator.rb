class Calculator
	def initialize()
	end 

	def sum(num_array)
		if num_array.length > 0
			return num_array.inject {|result,num_array| result +num_array }
		else
			return 0
		end
	end

	def multiply(x, y)
		return x*y
	end

	def multiply(x, y = nil)
		if y == nil
			return x.inject {|result, x| result * x}
		else
			return (x * y)
		end
	end

	def pow(x, n)
		if n < 0 
			return pow((1/x), -n)
		elsif n == 0 
		 	return 1
		elsif n == 1 
			return x
		elsif n % 2 == 0 
			return pow((x*x), (n/2))
		else
			return x * pow((x*x), (n-1)/2)
		end
	end

	def fac(x)
		if x > 0
			x = (1..x).to_a
			return x.inject {|result, x| result *x}
		else
			return 1
		end
		
	end

end