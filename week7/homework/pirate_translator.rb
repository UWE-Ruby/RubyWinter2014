
class PirateTranslator
  TRANS = {
    'Hello Friend' => 'Ahoy Matey'
  }
  def translate
    TRANS[@word] + "\n " + 'Shiber Me Timbers You Scurvey Dogs!!'
  end

  def say word
    @word = word
  end

end
