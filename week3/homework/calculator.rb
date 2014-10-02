class Calculator

	def sum num
		num.inject(0) {|sum, element| sum+element}
	end

	def multiply *num
		num.flatten.inject(1) {|multiply, element| multiply*element}
	end

	def pow num, exp
		num**exp
	end

	def fac num
		(1..num).to_a.inject(1) {|fac, element| fac*element}
	end
end

