class Couch
	def initialize pillows, cushions, dogs
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

	def respond_to? method_name
		return true if dynamic_method_logic method_name
		super
	end

	def dynamic_method_logic method_name
		method_name == :happy || method_name == :hello
	end

	def method_missing method_name, *args, &block
		if dynamic_method_logic method_name
			self.class.class_eval do
				define_method method_name  do |*args|
					return yield "method missing" if block_given?
					"hi"
				end
			end

			self.send method_name
		else
			super
		end
	end

end