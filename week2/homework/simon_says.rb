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

  def first_word(string)
    ## This one works, for the tests given...
    #string.sub(/[^a-zA-Z'].*/, '')
    #
    # And this one works on my added test. But it's uglier
    #string.sub(/^\W*(\w+)[^a-zA-Z'].*/, '\1')

    ##Is there a more ruby way to do this?
    #
    #This isn't bad, and seems more ruby-ish. I like it.
    #but it breaks on my additional test.
    #string.split(/\s+/).first
    #
    #This works on my additional test.
    #But it might be uglier than my perl-ish version.
    (string.split(/\s+/).select { |word| word !~ /^\s*$/ }).first
  end
end
# vim: ts=2:sw=2
