class OddNumber
  attr_reader :value

  def initialize value
    @value = value
  end

  def succ
    return OddNumber.new(@value+2) if @value.odd?
    OddNumber.new(@value+1)
  end

  def <=> other
    @value <=> other.value
  end

  def inspect
    @value
  end

end