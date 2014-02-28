class Converter

	def initialize c_temp
		@c_temp = c_temp.to_f
    end

    def type=(type)
      @type = type
    end
    
    def convert
		  self.send("#{@type}_convertion")
	  end

  private
  
    def Fahrenheit_convertion
    	((@c_temp - 32.0) / 1.8).round(1)
    end

end