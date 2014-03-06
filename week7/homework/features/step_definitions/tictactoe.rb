class TicTacToe
attr_accessor :player
	@player

	def welcome_player
  		"Welcome #{@player}"
  	end

  	def current_player
  		@current_player == "Computer" ? "Computer" : @player
  	end

	def set_player symbol
    	if symbol.nil?
    		@player_symbol = SYMBOLS.sample
    	end
    	end
  	
  	def computer_symbol
  		@player_symbol == :X ? :O : :X
  	end

end
