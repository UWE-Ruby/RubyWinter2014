# vim: ts=2:sw=2
module SimonSays
  def echo(string)
    string
  end

  def shout(string)
    string.upcase
  end

  # FIXME ruby, not perl
  def repeat(string, nrepeats = 2)
    output = ((string + " ")*nrepeats).sub(/ $/, '')
  end

  def start_of_word(string, nchars)
    string.slice(0..nchars-1)
  end

  # FIXME naíve - non-word before first word? Single quoted phrase?
  def first_word(string)
    string.sub(/[^a-zA-Z'].*/, '')
  end
end
      
  
