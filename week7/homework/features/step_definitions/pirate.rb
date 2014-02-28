class PirateTranslator
	
	def initialize		
	end

	WORDS = {
		"Hello Friend" => "Ahoy Matey"
	}

	def say str
		@phrase = pirate_shout(str).to_s
	end

	def translate
		@result = @phrase +"\n Shiber Me Timbers You Scurvey Dogs!!"
	end

private
	def pirate_shout(str)
		WORDS[str]
	end
end

