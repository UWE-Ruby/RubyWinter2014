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

  def repeat(simon,last)
    last.times.collect { simon }.join(' ')
  end
end
