#  pirate.rb 
#
#  week7 homework -- Neil Woodward

class PirateTranslator

	attr_reader = :phrase

	def say (phrase)
		@phrase = phrase
	end

	def translate 
    case @phrase
      when "Hello Friend"
      	@result = "Ahoy Matey"
     when "Oops"
      	@result = "Belay my last"
      when "Friend"
      	@result = "Shipmate"
      else
      	@result = "Arrrr . . ."
      end
      @result + "\n Shiver Me Timbers You Scurvy Dogs!!"
	end


end
