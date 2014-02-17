class Calculator

  def sum(num)
    if num[0] == nil
      0
    else
	  num.inject(:+)
	end
  end

  def multiply(a, b=1)
  	if a.class == Array
  	  a.inject(:*)
  	else
  	  a * b
  	end
  end

  def pow(num,exp)
  	num ** exp
  end

  # factorial expressions
  def fac(fact_num)
  	if fact_num == 0 
  	  1
    else
  	  product = 1
  	  while fact_num > 0
  	  	product = product * fact_num
  	  	fact_num -= 1
  	  end
  	  product
  	end
  end
end

c = Calculator.new
puts c.multiply(2,6)
puts c.multiply([2,3,4])
puts c.pow(2,6)
puts c.fac(0)
puts c.fac(5)