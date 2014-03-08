class Converter

	attr_accessor :temp, :type, :degrees_f, :degrees_c

	def initialize temp
		@temp = temp
	end

	def convert
		send "#{@type}"_converter
	end

private
	def Fahrenheit_converter
		@degrees_c = (@temp - 32)  * (5/9)
	end

	def Celsius_converter
		@degrees_f = (@temp * (9/5))  + 32
	end
end