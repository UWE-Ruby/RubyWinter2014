class Couch
	def initialize pillows, cushions, dogs
		@pillows = pillows
		@cushions = cushions
    @dogs = dogs
  end

  def method_missing m, *args, &block
    puts "you called #{m}"
    self.class.class_eval do # or self.class.instance_eval
        define_method m do
          puts "hi"
        end
    end

  end

  [:pillows, :cushions, :dogs].each do |s|
    define_method("how_many_#{s}?") do
     instance_variable_get("@#{s}").count
   end
 end

 {pillows: :colors, cushions: :colors, dogs: :names}.each do |k,v|
  define_method("#{k}_#{v}") do
    instance_variable_get("@#{k}").map &:to_s
  end
end


  # def pillow_colors
  #   @pillows.map &:to_s
  # end

  # def cushions_colors
  #   @cushions.map &:to_s
  # end

  # def dog_names
  #   @dogs.map &:to_s
  # end

end