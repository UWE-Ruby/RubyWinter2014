class Calculator

	# method to check if args passed to method is a multidimensional array
	def is_dim(var)
		var.each do |x| 
			true if x.is_a?(Array)
		end 
		false
	end

	def sum(*args)
		args.flatten! if is_dim(args) # flatten array if its multidimensional
		args.inject(0) {|sum, element| sum+element} 
	end
	
	def multiply(*args)
		args.flatten! if is_dim(args) # flatten array if its multidimensional
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



