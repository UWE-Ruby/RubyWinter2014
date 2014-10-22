#
# MadLib class
# 
# Author:: Lynn Conway
# 
# MadLib class implements the MadLib class.  The user chooses the
# type of MadLib to play and then enters the different types of 
# words prompted for.  When all words have been entered, the 
# Mad Lib text is printed out using the words prompted for.
#
class MadLib
# 
# MadLib types are specified in an array.  Prompt the user for the
# the type of MadLib game to play.
# 
# @story is a string which contains the finished MadLib.  Initialize 
# to the empty string.
# @word_array is an array of hashes.  Each hash will hold
# a type of word (verb, noun, etc.) and the word the user
# enters.  Initialize to empty array.
#
	def initialize
		@story = ""
		@word_array = []
		@madlib_types = ["Pirate", "LooneyTune", "Space", "Penguin"]
		puts "Which MadLib would you like to play?"
		n = @madlib_types.length
		for i in 0...(n-1)
			print @madlib_types[i] + " or "
		end
		print @madlib_types[n-1] + "?  "
	end
# 
# Read in the type of MadLib game the user wants to play and save
# the string in the variable @madlib.
# 
	def get_madlib_type
		@madlib = gets.chomp
	end
# 
# Read in the MadLib text from the appropriate text file and save each
# each line in @story_array.  Also, save them as one string in @story.
# 	
	def read_madlib
		@story_array = IO.readlines("#{@madlib}_madlib.txt")
		@story_array.each do |line|
			@story += line
		end
	end
#
# The text contains words starting with '@@@'.  These are the words
# that are going to be replaced in the text.  They are stored in an array
# of hashes, @word_array, as the keys.  
#
	def collect_word_types
		@story_array.each do |line|
			this_line = line.split
			this_line.each do |word| 
				if  word =~ /@@@/
					word.sub!(/@@@/, "").sub!(/\W/, "")
					@word_array.push({word => ""})
				end 
			end
		end
	end
# 
# The user is prompted for a particular type of word for the 
# program to use as a replacement word. They are stored the array
# of hashes, @word_array, as the values.  
# 
	def user_input
		@word_array.each do |h|
			h.each_key do |key|
				print "Enter a #{key}: "
				v = gets.chomp
				h[key] = v
			end
		end

	end
# 
# Use the hashes to find the words in the text (hash keys) and replace
# them with the user's chosen words (hash values) in the @story string.
# Print out @story string.
# 
	def print_madlib
		@word_array.each do |h|
			h.each do |key, value|
				@word = "@@@" << key
				@story.sub!(/#{Regexp.quote(@word)}/, value)
			end
		end
		puts @story
	end
# 
# Method to play the MadLib game.
# 
	def play
		self.get_madlib_type
		self.read_madlib
		self.collect_word_types
		self.user_input
		self.print_madlib	
	end

end

#
# Create MadLib class and play the game
#
madlib = MadLib.new
madlib.play
