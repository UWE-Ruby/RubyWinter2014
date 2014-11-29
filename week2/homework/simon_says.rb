module SimonSays
  def echo(simon)
    simon
  end

  def shout(simon)
    simon.upcase
  end

  def start_of_word(simon,last)
    simon[0...last]
  end

  def first_word(simon)
    simon.split.first
  end

  def repeat simon, n=2
    results = (simon + ' ') * n
    results.chop
  end
end
