desc "Prints all names in names file"
task :print_names do 
	File.open("names", "r") do |f|
		line = f.readlines
		puts line
	end
end

desc "Creates and moves to the class directory."
task :create_class_dir do
	Dir.mkdir("class") unless Dir.exists?("class")
	Dir.chdir("class")
end

desc "Creates student directories"
task :create_student_dir => [:create_class_dir] do
	File.open("../names", "r") do |f|
		f.each do |line|
			line.chomp!
			Dir.mkdir("#{line}")
			# Renee's version:
			# Dir.mkdir line.chomp unless Dir.exists? line.chomp
		end
	end
end