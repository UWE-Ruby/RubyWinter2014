class Calculator

  def sum input

    total = 0
    input.each do |i|
      total += i
    end
    total

    input.reduce 0, :+
  end

  def multiply *args
    args.flatten.inject 1, :*
  end

  def pow base, exp
    base**exp
  end

  def fac n 
    multiply (1..n).to_a
  end

end