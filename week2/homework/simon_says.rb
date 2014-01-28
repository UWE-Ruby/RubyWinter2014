<<<<<<< HEAD

module SimonSays

def echo(str)
	str
end

def shout(str)
	str.upcase
end

def doRepeat(str)
	str.concat(" ".concat(str))
end

def repeat(*args)
	str = nil
	count = 2
	if (!args[0].nil?)
		str = args[0]
	end
	if (!args[1].nil?)
		count = args[1]
	end
	repeatedStr = String.new(str)
	while (count > 1) do
		count = count - 1
		repeatedStr.concat(" ".concat(str))
	end
	repeatedStr
end

def start_of_word(str, count)
	str[0...count]
end

def first_word(str)
	str.split[0]
end
=======
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
>>>>>>> cba25955989e180ca8e193c9e3162b72b1fb0329

end