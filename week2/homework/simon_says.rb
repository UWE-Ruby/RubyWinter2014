module SimonSays
	def echo(string)
		 return string
	end


	def shout(string)
		return string.upcase
	end
	
	def repeat(string, num = 2)
		a = (string + " ") * num
		return a.rstrip
	end
	
	def start_of_word(string, num)
		string.split(//)
		return string[0..(num - 1)]
	end
	
	def first_word(string)
		b = string.split
		return b[0]
	end

end

