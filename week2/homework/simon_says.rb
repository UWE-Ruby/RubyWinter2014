#simon_says.rb 
#
#  Neil Woodward, 23 Jan 2014
#  Week 2 Homework
#

module SimonSays

	def echo(string)
		string
	end

	def shout(string)
		string.upcase!
	end

	def repeat(string, reps=2)
		((string + " ")* reps).strip
	end

  def start_of_word(string, reps=1)
  	string.each_char.first(reps).join
  end

  def first_word(string)
  	string.scan(/[\w']+/)[0]
  end

end

