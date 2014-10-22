class TicTacToe

	SYMBOLS = [:X,:Y]

	attr_accessor :player, :current_player

	@over = false

	def initialize(player = "")
		@player = player
	end

	def player=(name)
		@player = name
	end

	def welcome_player
		"Welcome #{player}"
	end

	def current_player
		@current_player = @player
	end

	def player_symbol
		@player_symbol = :X
	end

	def computer_symbol
		@computer_symbol = :Y
	end

	def indicate_player_turn
		puts "Renee's Move:" if current_player == "Renee"
	end

	def get_player_move
		gets @player_move
	end

	def current_state
		return @over
	end

	def determine_winner
	end

end