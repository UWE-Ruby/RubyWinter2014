class MadLib

	def initialize
		@word_array = []
		@madlib_types = ["Pirate", "Student", "Vacation"]
		puts "Which MadLib would you like to play?"
		@madlib_types.each{|x| print x + ", "}
	end

	def get_madlib_type
		@madlib = gets.chomp
		puts "You chose #{@madlib}"
	end
	def read_madlib
		@story_array = IO.readlines("#{@madlib}_madlib.txt")
		#puts @story_array.length
		#puts @story_array
	end

	def print_madlib
	end

	def collect_word_types
		@story_array.each do |line|
			this_line = line.split
			this_line.each do |w| 
				#puts w
				if  w =~ /@@@/
					#puts "Look for @@@"
					#puts w
					ww = w.sub(/@@@/, "")
					#puts "ww = " + ww
					@word_array.push
					@word_array.push({w.sub(/@@@/, "") => ""})
				end 
			end
		end
		#puts @word_array
		@word_array.each do |h|
			h.each {|k, v| puts "key is #{k}    value is #{v}"}
		end
		puts "exit collect_word_types"
	end

	def user_input
		@word_array.each do |h|
			h.each_key do |key|
				print "Enter a #{key}: "
				v = gets.chomp
				h[key] = v
			end
		end

		@word_array.each do |h|
			h.each {|k, v| puts "key is #{k}    value is #{v}"}
		end
		# @word_array.each do |key,value|
		# 	print "Enter a " + key.to_s + ": "
		# 	v = gets.chomp
		# 	puts "v is " + v
		# end
	end

end

m = MadLib.new
m.get_madlib_type
m.read_madlib
m.collect_word_types
m.user_input