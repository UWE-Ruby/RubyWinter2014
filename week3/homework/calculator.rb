class Calculator

	def sum(array)
		#array.inject(0){|sum, x| sum +x}
		helper array.flatten, :+, 0
	end

	def multiply(*numbers)
		#numbers.flatten.inject(:*)
		helper numbers.flatten, :*, 1
	end

	def pow(base, p)
		#(1...p).to_a.inject(base){|r,v| r *= base}
		#pow_fac(base, p)
		helper (1..p).to_a, :*, 1, base
	end

	def fac(n)
     #(1..n).to_a.inject(1){|f,v| f *= v}
     #pow_fac(n)
     helper (1..n).to_a, :*, 1
	end

private

	def pow_fac(base=nil, p)
		#(1..p).to_a.inject(1){|f,v| f *= base || v}
		helper (1..p).to_a, :*, 1, base
	end	

	def helper array, method, start, base=nil
		array.inject(start){|f,v| f = f.send(method, base || v)}
	end
end
