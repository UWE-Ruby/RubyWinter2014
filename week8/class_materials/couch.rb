class Couch
	def initialize(pillows, cushions, dogs)
		@pillows = pillows
		@cushions = cushions
		@dogs = dogs
	end

	# [:pillows, :cushions, :dogs].each do |s|
	# 	define_method("how_many_#{s}?") do
	# 		instance_variable_get("@#{s}").count
	# 	end
	# end

	def how_many_pillows?
		@pillows.count
	end

	def how_many_cushions?
		@cushions.count
	end

	def how_many_dogs?
		@dogs.count
	end

	# def respond_to?(method_name)
	# 	true
	# end

	# def method_missing(method_name, *args, &block)
	# 	#puts "You called #{method_name} with #{args.join(' ')}"
	# 	#puts "#{self}"
	# 	self.class.class_eval do
	# 		define_method(method_name) do
	# 			#puts "hi"
	# 			"hi"
	# 		end
	# 	end

	# 	self.send(method_name)
	# end


end