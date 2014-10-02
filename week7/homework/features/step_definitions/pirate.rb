class PirateTranslator



	def say string
		@string = string + @@pirate_farewell
	end


	def translate
		pirate_string = @string.downcase.gsub(/\w+/) do |w|
			if @@pirate_dictionary.has_key?(w)
				@@pirate_dictionary[w].capitalize
			else
				w.capitalize
			end		
		end
		puts pirate_string
		pirate_string

	end
	
	@@pirate_farewell = "\n Shiber Me Timbers You Scurvey Dogs!!"
	@@pirate_dictionary = {"hello" => "ahoy", "friend" => "matey", "but" => "avast", "yes" => "aye"}


end

