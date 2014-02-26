class PirateTranslator
  def intitialize
  end

  def say phrase
  end

  def translate

    #FIXME ugly, dumb trick from 
    # http://rubyquicktips.com/post/4438542511/heredoc-and-indent
    @piratish = <<-END.gsub(/^ {6}/, '').chomp
      Ahoy Matey
       Shiber Me Timbers You Scurvey Dogs!!
    END

    #FIXME also ugly and dumb.
    @piratish = 'Ahoy Matey' << "\n Shiber Me Timbers You Scurvey Dogs!!"
  end
end
