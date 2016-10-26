module SimonSays

  def echo input
    input
  end

  def shout input
    input.upcase
  end

  def repeat input, n = 2
    ([input] * n ).join(' ')
  end

  def start_of_word input, n
    input.slice(0,n)
  end

  def first_word sentance
    sentance.split.first
  end

end