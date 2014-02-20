class EvenNumber

  def next(num)
    return false if not num.even?
    num + 2
  end

  def compare(num1,num2)
    return false if not num.even?
    return false if not num.even?
  end

end

@evennumber = EvenNumber.new
puts @evennumber.next(3)
