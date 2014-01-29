module SimonSays
	def echo(string) 
		#return string as is
		return string
	end

	def shout(string)
		#return string in all uppercase 
		return string.upcase
	end

	def repeat(*args)
		#return string number of times indicated by count
		string = nil
		count = 0
		if args.length > 1
			string = args[0]
			count = args[1]
		else
			string = args[0]
			count = 2
		end
		return ((string + " ") * count).strip
	end

	def start_of_word(string, count)
		#return number of letters indicated by count from start of word
		tmp = string.split(/\s*/)
		char = 0
		letters = ""
		while char < count
			letters += tmp[char]
			char += 1
		end
		return letters
	end

	def first_word(string)
		#return the first word of the string
		return string.split[0]
	end
end