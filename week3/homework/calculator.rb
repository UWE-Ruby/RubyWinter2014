#!/usr/bin/env ruby

class Calculator
  def initialize
  end

  def sum(addends)
    addends.inject(0, :+)
  end

  def multiply(multiplicands, multiplier = 1)
    # This looks gross and repetitive to me. What I want is
    # to flatten all incoming arguments to one array. How
    # do I do that?
    (Array(multiplicands) + Array(multiplier)).inject(1, :*)
  end

  def pow(base, index)
#    # just mirroring the code in the spec:
#    p = 1
#    # This returns index,
#    index.times { p *= base }
#    # so we must explicitly return p
#    p
#    # instead, we'll use the builtin.
    base**index
    
  end

  def fac(integer)
    # I'd like a some error checking for what we were passed
    # But, not in the spec.
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
