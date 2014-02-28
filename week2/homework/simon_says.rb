module SimonSays
	def echo(string)
		@string = string
	end
	def shout(string)
		string = string.upcase
	end
	def repeat(string, x=2)
		string = ((string + " ") * x).strip
	end
	def start_of_word(string, x)
		x = x-1
		string[0..x]
	end
	def first_word(string)
		string = string.split(/\s+/)
		string[0]
	end
end