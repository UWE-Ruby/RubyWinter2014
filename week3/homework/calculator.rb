class Calculator

def sum input
	input.inject(0,:+)
end

def pow base, exponent
	base**exponent
end

def multiply *input
	input.flatten.inject(1,:*)
end

def fac input
	input = 1 if input == 0
	(1..input).to_a.inject(:*)
end

end