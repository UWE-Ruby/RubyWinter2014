# encoding: utf-8
#
class Calculator
  def sum(input)
    # I would have gone wth
    # total = 0, etc if I hadn't cheated
    # and looked at the class video
    input.inject 0, :+
  end

  def multiply(*a)
    # [a, b].inject(:*)
    a.flatten.inject(:*)
  end

  def pow(r, p)
    r**p
  end

  def fac(n)
    (1..n).inject(:*) || 1
  end
end
