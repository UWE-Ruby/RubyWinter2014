class PirateTranslator

  def say(words)
  	@words = words
  end

  def translate
  	@words.gsub(/\w/, "Ahoy Matey\n Shiber Me Timbers You Scurvey Dogs!!")
  end


end