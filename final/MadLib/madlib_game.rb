class MadLib

	def initialize
		@word_array = []
		@madlib_types = ["Pirate", "Student", "Vacation"]
		puts "Which MadLib would you like to play?"
		n = @madlib_types.length
		for i in 0...(n-1)
			print @madlib_types[i] + " or "
		end
		print @madlib_types[n-1] + "?  "
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
				#puts "replace #{@word} with #{value}"
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
					word.sub!(/@@@/, "").sub!(/\W/, "")
					@word_array.push({word => ""})
					#@word_array.push({word.sub(/@@@/, "") => ""})
				end 
			end
		end
		#puts @word_array
		# @word_array.each do |h|
		# 	h.each {|k, v| puts "key is #{k}    value is #{v}"}
		# end
		# puts "exit collect_word_types"
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
	def play
		self.get_madlib_type
		self.read_madlib
		self.collect_word_types
		self.user_input
		self.print_madlib	
	end

end

madlib = MadLib.new
madlib.play
