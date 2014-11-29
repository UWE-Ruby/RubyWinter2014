task :default => [:test3]

task :test1 do
  File.open("names") do |file|
    while line = file.gets
      puts line
    end
  end
end
task :test2 do
  Dir.mkdir("class") unless Dir.exists? "class"
end
task :test3 do
  Dir.mkdir("class") # unless Dir.exists? "class"
  File.open("names") do |file|
    while line = file.gets
      Dir.mkdir line.chomp unless file.directory? line.chomp
    end
  end
end
