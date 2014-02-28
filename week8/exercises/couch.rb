class Couch
	def initialize pillows, cushions, dogs
		@pillows = pillows
		@cushions = cushions
    @dogs = dogs
	end

  def self.to_s
    "Couch to_s"
  end

  def to_s
    "instance to_s"
  end


  def method_missing m, *args, &block

    puts "you called method_missing with #{m}"

    puts self.to_s

    self.class.instance_eval <<-eos
      # using a here doc because you can't use def m in a block, only in a string

      puts self.to_s
      def #{m}
        "Class Level Method w/ instance_eval"
      end
    eos

    puts self.class.send m

    self.class.class_eval <<-eos
      # using a here doc because you can't use def m in a block, only in a string

      puts self.to_s
      def #{m}
        "Instance Level Method w/ class_eval"
      end
    eos

    puts self.to_s

    puts self.send m
  end




	# [:pillows, :cushions, :dogs].each do |s|
	# 	define_method "how_many_#{s}?"  do
	# 		instance_variable_get("@#{s}").count
	# 	end

 #    define_method "get_strings_for_#{s}" do
 #      instance_variable_get("@#{s}").map &:to_s
 #    end

	# end

 #  [:pillows, :cushions].each do |s|
 #    define_method "#{s.to_s.chop}_colors" do
 #      send("get_strings_for_#{s}")
 #    end
 #  end

 #  def dog_names
 #    get_strings_for_dogs
 #  end

  ATTRIBUTES = {pillows: :colors,
    cushions: :colors,
    dogs: :names}.each do |k,v|

    #puts self

    define_method "how_many_#{k}?"  do
      instance_variable_get("@#{k}").count
    end

    define_method "#{k.to_s.chop}_#{v}" do
      instance_variable_get("@#{k}").map &:to_s
    end
  end



end