module SimonSays

	def echo(string)
		string
	end

	def shout(string)
		string.upcase
	end

	def repeat(string, count = 2)
		((string + " ") * count).strip
	end

	def start_of_word(string, count)
		string[0..count-1]
	end

	def first_word(string)
		string.scan(/[\w']+/)[0]
	end
end