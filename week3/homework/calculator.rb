class Calculator
	def sum(numbers)
		numbers.inject(0){|sum, n| sum + n}
	end

	def multiply(n1, n2=0)
		if n1.kind_of?(Array)
			n1.inject(){|sum, n| sum * n}
		else
			n1 * n2
		end
	end

	def pow(number, power)
		number**power
	end

	def fac(n)
		if n == 0
			1
		else
			n * fac(n-1)
		end
	end
end