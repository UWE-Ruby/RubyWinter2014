module SimonSays
  def echo(greet)
    greet
  end
  def shout(scream)
    scream.upcase
  end
  def repeat(greet)
    ("#{greet} " * 2).chop
  end
  def repeat(greet, quant=2)
    ("#{greet} " * quant).chop
  end
  def start_of_word (word, place)
    word[0...place]
  end
  def first_word(phrase)
    phrase.split.first
  end
end