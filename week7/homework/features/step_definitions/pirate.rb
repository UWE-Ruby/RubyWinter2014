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
    pirate_lookup + "\n Shiber Me Timbers You Scurvey Dogs!!"
  end

private

  def pirate_lookup
    key = @said.to_pirate_symbol
    PIRATE_WORDS[key]
  end
 end