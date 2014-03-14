class Test

	print "Input something: "
	check = false
	while check == false
	  input = gets.chomp
	  check = true
	end
	puts "#{input} is what you entered."

end

c = Test.new
