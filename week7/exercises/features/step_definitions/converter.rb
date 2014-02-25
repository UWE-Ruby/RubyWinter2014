class Converter
	attr_accessor :type

	def initialize arg1
		@temp = arg1
	end

	def convert
		type = type == "F" ? "C" : "F"
	end
end