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
    define_method "get_strings_for_#{s}" do
      instance_variable_get("@#{s}").map &:to_s	
    end
  end


  [:pillows, :cushions].each do |s|
    define_method "#{s.to_s.chop}_colors" do
     send("get_strings_for_#{s}")
   end

  end


  def dog_names
    get_strings_for_dogs
  end

end