module SimonSays

end

def echo(string)
	string
end


def shout (string)
	string.upcase
end


def repeat (string, x=2)
	((string + " ") * x).strip
end

def start_of_word (string, num)
	string[0...num]
end

def first_word(string)
	string.split[0]
end