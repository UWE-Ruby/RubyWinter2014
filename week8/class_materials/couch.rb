class Couch
	def initialize(pillows, cushions, dogs)
		@pillows = pillows
		@cushions = cushions
		@dogs = dogs
	end

	[:pillows, :cushions, :dogs].each do |s|
	 	define_method("how_many_#{s}?") do
			instance_variable_get("@#{s}").count
		end
	 end


	def method_missing method_name, *args, &block
		if dynamic_method_logic method_name
			self.class.class_eval do
				define_method method_name  do |*args|
					return yield "method missing" if block_given?
					"you called #{method_name}"
				end
			end

			self.send method_name
		else
			super
		end
	end
end