module SimonSays
  
  def echo word
	 word
  end
  
  def shout word
  	"#{word.upcase}"
  end
  	
  def repeat(word)
    word + ' ' + word
  end

  def repeat(word, n=2)
  	if n > 2
  	  string = ""
  	  while n > 1
  	    string += "#{word} "
  	    n -= 1
  	  end
  	  string += "#{word}"
  	else 
  	  "#{word} #{word}"
  	end
  end
  
  def start_of_word(word, n)
  	a = 0
  	string = ""
  	while a <= n 
  	  string += word[a]
  	  n -= 1
  	  a += 1
  	end
  	string
  end

  def first_word(phrase)
  	word = phrase.split
  	word[0]
  end

end

#class RunSimon
 # include SimonSays
#end

#below was only for testing
# w = RunSimon.new
# p w.echo("Hello")
# p w.echo("Hello")
# p w.shout("Hello")
# p w.repeat("hello", 3)
# p w.first_word("Hello there")
