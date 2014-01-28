#!/usr/bin/env ruby

class Calculator
  def initialize
  end

  def sum(addends)
    addends.inject(0, :+)
  end

  def multiply(multiplicands)
    multiplicands.inject(1, :*)
  end
end

  
