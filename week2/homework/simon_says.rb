module SimonSays

	def echo(message)
		p message
	end

	def shout(message)
		p message.upcase
	end

	def repeat(message, n=2)
		p ([message] * n).join(' ')
	end

	def start_of_word(word, n)
		p word[0, n]   # I REALLY overthought this method the first 80 times I tried it
					   #  ... but at least I won't forget it now!
	end

	def first_word(message)
		word_one = message.split(" ")
		p word_one[0]
	end
end