module SimonSays

	# return the string
	def echo(string)
		"#{string}"
	end

	# return string in all capitals 
	def shout(string)
		"#{string.upcase}"
	end

	# repeat the string a min of 2 times, unless specified 
	def repeat(string, repeat=2)
		("#{string} " * repeat).strip
	end

	# return the charaters starting from start of string to length
	def start_of_word(string, length)
		"#{string[0, length]}"
	end

	# return first word in a string using a space has a delimiter 
	def first_word(string)
		"#{string.split(" ")[0]}"
	end
end
