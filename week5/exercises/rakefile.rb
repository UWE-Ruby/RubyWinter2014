#RUBY TASK
desc "prints all of the names in the file"
task :print_names do 
	File.open("names", 'r') do |f|
		f.each do |line|
			puts line
		end
	end
end

desc "create a directory called class"
task :create_class_dir do 
	Dir.mkdir"Class" unless Dir.exists? "class"
end

desc "create a student directory in the class dir for each student"
task :create_student_dirs => [:create_class_dir] do 
	File.open("names") do |f|
		Dir.chdir("Class")
		f.each do |line|
			Dir.mkdir line.chomp unless Dir.exists? line.chomp
		end
	end
	Dir.chdir("..")
end

