desc "print all names in the names in the file"
task :print_names do
	file_helper("names") do |line|
		puts line
	end
end

desc "creates a directory called class"
task :create_class_dir do
	Dir.mkdir "class" unless Dir.exists? "class"
end

desc "create a student dir in the class dir for each student in names"
task :create_student_dirs => [:create_class_dir] do
	Dir.chdir("class")
	file_helper(../names) do |line|
		Dir.mkdir line unless Dir.exists? line
	end
	Dir.chdir("..")
end


desc "clean up the directories we created"
task :remove_all_dirs => [:create_students_dirs] do
	Dir.chdir("class")
	file_helper(../names) do |line|
		Dir.mkdir line unless Dir.exists? line
	end
	Dir.chdir("..")
	Dir.rmdir("class") #if Dir.exists "class"
end

def file_helper file_name
	File.open(file_name) do |f|
		f.each do |line|
			yield line.chomp
		end
	end
end