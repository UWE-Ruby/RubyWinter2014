#!/usr/bin/env ruby

class Calculator
  def initialize
  end

  # must explicitly 0 the inject for parameter [] to not return nil
  def sum(addends)
    addends.inject(0, :+)
  end

  # This looks gross and repetitive to me. (It passes, though.) What I want
  # is to flatten all incoming arguments to one array. How do I do that?
  #
#  def multiply(multiplicands, multiplier = 1)
#    (Array(multiplicands) + Array(multiplier)).inject(1, :*)
#  end
  
  # So, we splat out the parameters to a list, then flatten to an array.
  def multiply(*multiplicands)
    multiplicands.flatten.inject(1, :*)
  end

  def pow(base, index)
#    # just mirroring the code in the spec:
#    p = 1
#    # This returns index,
#    index.times { p *= base }
#    # so we must explicitly return p
#    p
#    # more concisely, we'll use the builtin.
    base**index
    
  end

  def fac(input)
    # I'd like a some error checking for what we were passed
    # But, not in the spec.
    case input
    # Can we combine the first 2 whens?
#    when 0
#      1
#    when 1
#      1
    # Our Benevolent Dictator Google says Yes, with commas, not pipes
    when 0, 1
      1
    else
      input * fac(input - 1)
    end
  end

end
