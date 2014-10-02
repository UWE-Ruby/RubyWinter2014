module SimonSays

def echo(str)
	str
end

def shout(str)
	str.upcase
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
end