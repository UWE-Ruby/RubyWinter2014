module SimonSays
	def echo(input)
		@input = input
	end
	def shout(input)
		@input = input.upcase
	end
	def repeat(input, num=2)
		@input = ((input + " ") * num).strip
	end
	def start_of_word(input, num=1)
		@input = input.split(//).first(num).join
	end
	def first_word(input)
		@input = input.split(/\s+/).first
	end
end
