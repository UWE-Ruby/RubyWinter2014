class OddNumberKevin
  def initialize value
    @value = value
  end

  def succ
    return OddNumberKevin.new(@value + 2) if @value.odd?
    OddNumberKevin.new(@value + 1)
  end

  def <=> other
    @value
  end
end