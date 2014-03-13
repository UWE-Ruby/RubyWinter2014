class String
	def to_pirate_symbol
		self.downcase.gsub(' ', '_').intern
	end
end

class PirateTranslator
	PIRATE_WORDS = {
		hello_friend: "Ahoy Matey"
	}

  def say something
  	@said = something
  end

  def translate
     
  end 

end
