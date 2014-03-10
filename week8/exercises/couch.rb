class Couch
	def initialize pillows, cushions, dogs
		@pillows = pillows
		@cushions = cushions
    @dogs = dogs
	end

	[:pillows, :cushions, :dogs].each do |s|
		define_method("how_many_#{s}?") do
			instance_variable_get("@#{s}").count
		end
	end

  [:pillows, :cushions].each do |s|
    define_method("#{s}_colors") do
      instance_variable_get("@#{s}").map &:to_s
    end
  end

#  def pillow_colors
#    @pillows.map &:to_s
#  end

#  def cushions_colors
#    @cushions.map &:to_s
#  end

#  def dog_names
#    @dogs.map &:to_s
#  end

end