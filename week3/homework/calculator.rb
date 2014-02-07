class Calculator
  def sum numbers
    numbers.inject 0, :+
  end
  def multiply *numbers
    numbers.flatten.inject :*
  end
  def pow x, y
    x**y
  end
  def fac x
    multiply (1..x).to_a
  end
end