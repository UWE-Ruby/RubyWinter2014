

class Calculator

  def sum addends
    addends.reduce(0, :+)
  end

  def multiply arg1, *more_args
    if arg1.is_a?(Array)
      return arg1.reduce(1, :*)
    else
      return more_args.reduce(arg1, :*)
    end
  end

  def pow a, b
    p = 1
    b.times{p *= a}
    p
  end

  def fac n
    (1..n).reduce(1) {|i,j| i*j}
  end

end
