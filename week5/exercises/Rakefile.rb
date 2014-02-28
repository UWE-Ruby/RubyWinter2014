

desc "Outputs all names"
task :getnames do
	file_helper("names") do |line|
		puts line
	end
end

desc "Creates a Directory called Class"
task :create_class_dir do
	Dir.mkdir "class" unless Dir.exists? "class"
end

desc "create a student dir in the class dir for each student"
task :create_student_dirs => [:create_class_dir] do
	Dir.chdir("class")
	file_helper("names") do |line|
		Dir.mkdir line unless Dir.exists? line
	end
	Dir.chdir("..")	
end


desc "cleans up all the dirs we created"
task :remove_all_dirs =>[:create_student_dirs] do
	Dir.chdir("names")
	file_helper("../names") do |line|
		Dir.rmdir line if Dir.exists? line
	end
	Dir.chdir("..")
	Dir.rmdir ("class")
end





def file_helper file_name
	File.open(file_name) do |f|
		f.each do |line|
			yield line.chomp
		end
	end
end


