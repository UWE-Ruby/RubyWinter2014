class Converter

	attr_reader = :type

	def initialize (temp_in)
		@temp_in = temp_in.to_f
	end

  def type=(type)
  	@type = type
  end

  def convert
  	self.send ("#{@type}_conversion")
  end

  def Celsius_conversion
  	@result = (@temp_in * 9/5 + 32).round(1)
  end

  def Farenheit_conversion
  	@result = ((@temp_in - 32)*5/9).round(1)
  end

end