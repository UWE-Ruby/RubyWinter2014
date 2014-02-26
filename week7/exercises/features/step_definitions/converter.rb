class Converter
	attr_accessor :type
	def initialize unit
		@unit = unit.to_f
	end

	def type=(type)
		@type = type
	end	

	def convert 
		send "#{@type}_converter"
	end	

	def Fahrenheit_convertion
		((@unit  -  32)  *  5.0/9.0).round(1)
	end

end