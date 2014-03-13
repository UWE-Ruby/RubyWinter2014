class Calculator

	def sum input
		total = 0
		input.each do |i|
			total += i
		end
		total
		input.reduce 0, :+
	end

	def multiply *args
		args.flatten.inject 1, :* #what does the "1, :+" do exactly?
	end

	def pow b,e
		b**e
	end

	def fac n
		multiply (1..n).to_a # one approach
		
	end

