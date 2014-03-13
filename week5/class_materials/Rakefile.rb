task :default => [:say_hello, :say_hi]

desc "Output hello world"
task :say_hello => [:say_hi] do
	puts "hello world"
end	

desc "Output hi"
task :say_hi do
	puts "hi"
end	
