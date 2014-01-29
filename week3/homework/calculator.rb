#!/usr/bin/env ruby

class Calculator
  def initialize
  end

  def sum(addends)
    addends.inject(0, :+)
  end

  def multiply(multiplicands, multiplier = 1)
    # Looks gross to me. What I want is to flatten all incoming arguments
    # to one array.
    (Array(multiplicands) + Array(multiplier)).inject(1, :*)
  end

  def pow(base, index)
#    p = 1
#    # This returns index,
#    index.times { p *= base }
#    # so I have to return p
#    p
#    # instead, let's try the builtin
    base**index
  end

  def fac(integer)
    case integer
    when 0
      1
    when 1
      1
    else
      integer * fac(integer - 1)
    end
  end

end

  
