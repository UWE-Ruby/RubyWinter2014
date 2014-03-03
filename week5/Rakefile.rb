task :default => [:say_hello]
desc "output to world"
task :say_hello do
  puts "hello world"
end
