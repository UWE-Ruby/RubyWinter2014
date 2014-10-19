class Converter

attr_accessor :type

	def initialize (temp)
		@temp = temp
	end

  def convert
  	send (far_convert)
  end

  def far_convert
  	@result = (@temp - 32.0)* 9 / 5.to_f
  end

end
