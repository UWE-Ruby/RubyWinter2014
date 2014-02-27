# names and class Rakefile

desc "Read names from file and print them out"
task :print_names do
  file_helper("names") do |line|
      puts line
  end  
end

desc "Creates class directory"
task :make_directory do
  Dir.mkdir "class" unless Dir.exists? "class"
end

desc "Create directories using names in class directory"
task :name_directories => [:make_directory] do
  Dir.chdir("class")
  file_helper("../names") do |line|
    Dir.mkdir line unless Dir.exists? line
  end
  Dir.chdir("..")
end

desc "clean up the directories we created"
task :remove_all_dirs => [:name_directories] do
  Dir.chdir("class")
  file_helper("../names") do |line|
    Dir.rmdir line if Dir.exists? line
  end
  Dir.chdir("..")
  Dir.rmdir("class")
end

def file_helper file_name
  File.open(file_name) do |f|
    f.each do |line|
      yield line.chomp
    end
  end
end
