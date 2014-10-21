class TicTacToe

	attr_accessor :player, :computer, :player_symbol, :computer_symbol
	attr_accessor :current_player, :board, :open_spots, :computer_move

	SYMBOLS = [:X, :O]
	

	def initialize player="", symbol=""
		#@player = player
		if player == :computer
			@player = "Computer"
			@current_player = "Computer"
		else
			@player = player
			@current_player = player
		end
		if symbol == :X
			@player_symbol = SYMBOLS[0] 
			@computer_symbol = SYMBOLS[1] 
		else
			@player_symbol = SYMBOLS[1]
			@computer_symbol = SYMBOLS[0]
		end
		@open_spots = [:A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3]
	end

	def welcome_player 
		"Welcome #{player}"
	end

	def current_player
		@player
	end

	def indicate_palyer_turn
		"#{player}'s Move:"
	end

	def get_player_move
	end

	def determine_winner
	end

	def spots_open?
	end

	def draw?
		true
	end

	def over?
		true
	end

	def computer_move
		@open_spots[0]
	end

	def include?
		true
	end

	def current_state 
	end

end