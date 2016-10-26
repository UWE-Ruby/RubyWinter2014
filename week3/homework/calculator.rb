# calculator.rb 
#
#  Neil Woodward, Homework 3
#

class Calculator

	def sum  (args) 

		args.inject(0) {|sum1, element| sum1 + element}		
	
	end

	def multiply (*args)

		if args[0].class == Array

			args = args[0]

		end

		if args.empty?
			0
		
		else
		  args.inject {|prod, element| prod * element}


		end
	end

	def pow(a,b)
	
    a**b

	end

	def fac (num)

		result=1

		if num == 0
      result

    else
		  1.upto(num) do |i|
			  result = result*i
		   end
		  result

		end

	end

end