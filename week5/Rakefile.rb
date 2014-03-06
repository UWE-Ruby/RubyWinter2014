task :default => [:say_hello, :say_hi]


desc "Outputs hello world"
task :say_hello => [:say_hi] do
  puts "hello world"
end

desc "Outputs hi"
task :say_hi do
  puts "hi"
end

