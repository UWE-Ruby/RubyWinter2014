class PirateTranslator
  def intitialize
  end

  def say phrase
  end

  def translate

    #FIXME ugly
    @piratish = <<-END.gsub(/^ {6}/, '').chomp
      Ahoy Matey
       Shiber Me Timbers You Scurvey Dogs!!
    END
    #FIXME also ugly
    @piratish = 'Ahoy Matey' << "\n Shiber Me Timbers You Scurvey Dogs!!"
  end
end
