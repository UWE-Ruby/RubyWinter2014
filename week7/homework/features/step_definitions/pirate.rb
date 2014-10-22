
class PirateTranslator
	attr_reader :result

	def say(arg)
		@english = arg
	end


	def translate
		@result = "Ahoy Matey\n Shiber Me Timbers You Scurvey Dogs!!\n "
	end

end
