class EvenNumber

  def next(num)
    return false unless num.even?
    num + 2
  end

  def compare(num1,num2)
    return false unless num1.even?
    return false unless num2.even?
    true if num1 == num2
  end
  
  def range(num1,num2)
    return false unless num1.even?
    return false unless num2.even?
    (num1..num2).step(2) do |n|
      n
    end

  end

end
