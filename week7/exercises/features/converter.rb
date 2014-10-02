class Converter

	attr_accessor :num, :type

	def initialize num
		@num = num.to_f
	end


	def convert
		self.send("#{@type}_conversion")
	end

	def Fahrenheit_conversion
		(@num - 32) * 5 / 9
	end






end
