class Calculator
	
	def sum(*args)
		args.flatten!
		args.inject(0) {|sum, element| sum+element} 
	end
	
	def multiply(*args)
		args.flatten!
		args.inject(1) {|product, element| product*element}
	end
	# derp
	def pow(x, y)
		x ** y	
	end

	def fac(num)	
		# convert num to absolute value, then inject to find the factorial unless num == 0, then return 1
		( (1..num.abs).inject { |factorial, n| factorial * n } unless num == 0 ) || ( 1 )		
	end


end



