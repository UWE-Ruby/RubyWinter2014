class MadLib

	def initialize
		@word_array = []
		@madlib_types = ["Pirate", "Student", "Vacation"]
		puts "Which MadLib would you like to play?"
		@madlib_types.each{|x| print x + ", "}
	end

	def get_madlib_type
		@madlib = gets.chomp
		#puts "You chose #{@madlib}"
	end
	def read_madlib
		@story = ""
		@story_array = IO.readlines("#{@madlib}_madlib.txt")
		@story_array.each do |line|
			@story += line
		end
		# puts @story_array
		# puts @story
	end

	def print_madlib
		@word_array.each do |h|
			h.each do |key, value|
				@word = "@@@" << key
				puts "replace #{@word} with #{value}"
				@story.sub!(/#{Regexp.quote(@word)}/, value)
				#@story.sub!(/@@@\w*\b/, value)
			end
		end
		puts @story
	end

	def collect_word_types
		@story_array.each do |line|
			this_line = line.split
			this_line.each do |word| 
				if  word =~ /@@@/
					@word_array.push({word.sub(/@@@/, "") => ""})
				end 
			end
		end
		#puts @word_array
		# @word_array.each do |h|
		# 	h.each {|k, v| puts "key is #{k}    value is #{v}"}
		# end
		#puts "exit collect_word_types"
	end

	def user_input
		@word_array.each do |h|
			h.each_key do |key|
				print "Enter a #{key}: "
				v = gets.chomp
				h[key] = v
			end
		end

		# @word_array.each do |h|
		# 	h.each {|k, v| puts "key is #{k}    value is #{v}"}
		# end
	end

end

m = MadLib.new
m.get_madlib_type
m.read_madlib
m.collect_word_types
m.user_input
m.print_madlib