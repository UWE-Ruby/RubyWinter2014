class Calculator
  def sum(numbers)
    return 0 unless numbers.any?
    numbers.inject{|sum,x| sum + x}
  end

  def multiply(*numbers)
    return 0 unless numbers.any?
    numbers.flatten.inject{|multiply,x| multiply * x}
  end

  def pow(*numbers)
    return 0 unless numbers.any?
    numbers.inject{|pow,x| pow ** x}
  end
  
  def fac(number)
    return 1 if number == 1 
    return 1 if number == 0
    number * fac(number-1)
  end    
end
