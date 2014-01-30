class Calculator
		
	def sum x=[]
		x.inject(0) {|sum, num| sum + num}
	end
	
	def multiply b
		b.inject(:*)
	end
		
		
	def pow num1, num2
		num1 ** num2
	end
	
	def fac num
		if num == 0
			return 1
		else
			(1..num).inject(1) {|product, num| product * num}
		end
	end
end
