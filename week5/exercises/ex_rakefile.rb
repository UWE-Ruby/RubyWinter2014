task :default => [:say_hello, :say_hi]
desc "Outputs hello world"
task :say_hello do
  puts "hello world"
end

desc "Outputs Hi"
task :say_hi do
  puts "Hi"
end