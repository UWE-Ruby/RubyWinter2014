

module SimonSays

  def echo(str)
    str
  end

  def shout(str)
    str.upcase
  end

  def repeat(str, repeat_times=2)
    buffer = []
    repeat_times.times do
      buffer.push str
    end
    buffer.join " "
  end

  def start_of_word(str, letters=1)
    index = letters-1
    str[0..index]
  end

  def first_word(str)
    tokens = tokenize(str)
    tokens[0]
  end

  def tokenize(str)
    str.split(/\W/)
  end

  # no effect...
  # private :tokenize

end
