class Calculator

	def sum num
		num.inject(0) {|sum, current| sum + current }
	end

	def multiply x, y=1
		n = [x, y].flatten(1)
		n.inject(1) { |sum, current| sum * current }
	end

	def pow n1, n2
		n1**n2
	end

	def fac i
		return 1 if i == 0
		(1..i).inject(:*)
	end
	
end