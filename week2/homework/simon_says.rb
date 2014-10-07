module SimonSays

  def echo words
    words
  end

  def shout words
    words.upcase
  end

  def repeat words, times = 2
    ((words+" ")* times).strip
  end

  def start_of_word words, letters
    words[0...letters]
  end

  def first_word words
    words.split[0]
  end

end

