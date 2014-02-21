class Converter
  attr_accessor :type
  def initialize value
    @value = value.to_f
  end

  def convert
    send "#{@type}_converter"
  end

private
  def Fahrenheit_converter
    ((@value - 32.0) * (5.0/9.0)).round(1)
  end

  def Celsius_converter
      (@value *  (9.0/5.0) + 32.0).round(1)
  end
end