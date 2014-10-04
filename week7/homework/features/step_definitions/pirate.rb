class PirateTranslator
	Pirate_words = {
		"Hello Friend" => "Ahoy Matey"
	}
	def say(str)
		@said = lookup_pirate(str).to_s
	end

	def translate
		@said + "\n Shiber Me Timbers You Scurvey Dogs!!"
	end

private
	def lookup_pirate(str)
		Pirate_words[str]
	end
end
