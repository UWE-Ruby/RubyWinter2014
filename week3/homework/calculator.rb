class Calculator

  def pow(x, y)
    x**y
  end

# Added 0 to prevent result from returning a nil
  def sum(sum_num)
    sum_num.inject(0, :+)
  end

# Take what ever numbers come in and add them into an array for
# multiplication, added 1 so that we don't get a nil
  def multiply(*mult_num)
    mult_num.flatten.inject(1, :*)
  end

# I couldn't think of a more elegant way to do this...
  def fac(x)
    if x == 0
      1
    else
      x * fac(x-1)
    end
  end
end