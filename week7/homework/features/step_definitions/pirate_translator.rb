class PirateTranslator

	attr_accessor :translator

	def say message
		@translator = message
	end

	def translate
		if @translator = "Hello Friend"
			"Ahoy Matey\n Shiber Me Timbers You Scurvey Dogs!!"
		end
	end
	
end