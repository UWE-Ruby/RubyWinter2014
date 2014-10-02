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

  def method_missing m, *args, &block
    puts "1. #{self}"
    puts "2. #{self.class}"
    # The following thing creates stack overflow error
    # self.instance_eval do
    #   define_method "#{m}_self_instance_eval" do
    #     puts "self.instance_eval #{m}"
    #   end
    # end

    # The following thing creates stack overflow error
    # self.class_eval do
    #   define_method "#{m}_self_class_eval" do
    #     puts "self.instance_eval #{m}"
    #   end
    # end

    #Dont know where the method would be defined after this.
    self.class.instance_eval do
      define_method "#{m}_self_class_instance_eval" do
        puts "self.class.instance_eval #{m}"
      end
    end

    self.class.class_eval do
      define_method "#{m}_self_class_class_eval" do
        puts "self.class.class_eval #{m}"
      end
    end
  end

  # def method_missing m, *args, &block
  #   instance_variable_get("@#{m.to_s.split("_")[0]}s").map &:to_s
  # end

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