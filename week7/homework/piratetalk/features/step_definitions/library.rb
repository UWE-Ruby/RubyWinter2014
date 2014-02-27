module Library

	DICTIONARIES = {
		pirate: {
			"Hello Friend" => "Ahoy Matey\n Shiber Me Timbers You Scurvey Dogs!!"
		}
	}

	def getDictionary type
		DICTIONARIES[type]
	end
end