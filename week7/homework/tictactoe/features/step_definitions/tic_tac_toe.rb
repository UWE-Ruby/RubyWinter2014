class TicTacToe

	SYMBOLS = ['O', 'X']

	attr_accessor :player, :player_symbol, :computer_symbol

	def initialize first_player=:computer, second_player=

		
		@player = name
		@turn = rand(0..1)
		@player_symbol = SYMBOLS[@turn]
		@computer_symbol = SYMBOLS[1 ^ @turn]
	end

	def welcome_player
		"Welcome #{@player}"
	end

	def current_player
		(@turn.eql? 1) ? @player : "Computer"
	end
end
