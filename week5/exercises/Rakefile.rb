#task :default => [:read_names, :make_dir, :make_all_dirs]

desc "Reads all the lines in the names and outputs them"
task :read_names do
	file_helper("names") do |line|
    	puts line
  end
end


desc "Create a class directory"
task :make_dir do
  Dir.mkdir "class" unless Dir.exists? "class"
end

desc "Create a directory in the class directory for every name"
task :make_all_dirs => [:make_dir] do
	Dir.chdir("class")
  file_helper("../names") do |line|
    	Dir.mkdir line.chomp unless Dir.exists? line.chomp
  end
  Dir.chdir("..")
end

desc "clean up directories created"
task :remove_all_dirs => [:make_all_dirs] do
  	Dir.chdir("class")
    file_helper("../names") do |line|
    	Dir.rmdir line.chomp if Dir.exists? line.chomp
    end
    Dir.chdir("..")
  end
  Dir.rmdir("class")
end

def file_helper file_name
	File.open(file_name) do |f|
		f.each do |line|
			yield line.chomp
		end
  end
end
	
