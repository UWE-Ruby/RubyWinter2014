class ReneeError < Exception
	def message
		"Renee breaks everything"
	end
end

def hello
	begin
		raise ReneeError.new
		puts yield
	rescue LocalJumpError => e 
		puts e 
	rescue ReneeError => e 
		puts e 
		puts "Don't let Renee near your code"
	ensure
		puts "you ran the hello method"
	end
  
  catch :renee_error do 
  	puts "before throw"
	  throw :renee_error
	  puts "after throw"
	end
	puts "after method"
end


hello { " Hello Akichin "}

hello