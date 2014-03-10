class TicTacToe
	SYMBOLS = [:X, :O]

	attr_accessor :player, :player_symbol, :computer_symbol, :board, :current_player_identity

	def initialize(first_player = nil, mark = nil)
		current_player(first_player)

		case mark
		when :O
			@player_symbol, @computer_symbol = :O, :X
		when :X
			@player_symbol, @computer_symbol = :X, :O
		else
			symbols = SYMBOLS.shuffle
			@player_symbol, @computer_symbol = symbols.first, symbols.last
		end

		@board = { A1: " ", A2: " ", A3: " ",
		           B1: " ", B2: " ", B3: " ",
				   C1: " ", C2: " ", C3: " "}
	end

	def welcome_player
		"Welcome #{@player}"
	end

	def indicate_player_turn
		puts "#{@player}'s Move:"
	end

	def get_player_move
		
		move = gets.chomp
	end

	def player_move
		begin
			move = get_player_move
		end until board[move.to_sym] == " "	
		board[move.to_sym] = @player_symbol

		@current_player_identity = "Computer"
		move.to_sym
	end

	def current_state
		current_board = "| 1 | 2 | 3 \n" +
						"A | #{board[:A1]} | #{board[:A2]} | #{board[:A3]} \n" +
						"B | #{board[:B1]} | #{board[:B2]} | #{board[:B3]} \n" +
						"C | #{board[:C1]} | #{board[:C2]} | #{board[:C3]} "
	end

	def current_player(flag = nil)
		@current_player_identity = case flag
			when :player
				@player
			when :computer
			    "Computer"
			when :random
			    [@player, "Computer"].sample
			else
			    @current_player_identity == "Computer" ? "Computer" : @player
 		    end
	end
	def spots_open?
		true unless open_spots.length == 0 
	end

	def closed_spots
		array = []
		self.board.each { |spot, mark| array << spot.to_s if mark != " " }
		array
	end

	def player_won?
		win_condition_met @player_symbol
	end

	def computer_won?
		win_condition_met @computer_symbol		
	end

	def win_condition_met(mark)
		true if (board[:A1] == mark && board[:A2] == mark && board[:A3] == mark) ||
			 	(board[:B1] == mark && board[:B2] == mark && board[:B3] == mark) ||
			 	(board[:C1] == mark && board[:C2] == mark && board[:C3] == mark) ||
			 	(board[:A1] == mark && board[:B1] == mark && board[:C1] == mark) ||
			 	(board[:A2] == mark && board[:B2] == mark && board[:C2] == mark) ||
			 	(board[:A3] == mark && board[:B3] == mark && board[:C3] == mark) ||
			 	(board[:A1] == mark && board[:B2] == mark && board[:C3] == mark) ||
				(board[:C1] == mark && board[:B2] == mark && board[:A3] == mark)
	end

	def draw?
		true unless spots_open? || computer_won? || player_won?
	end

	def over?
		true if draw? or computer_won? or player_won?
	end

	def determine_winner
	end

	def open_spots
		%w(A1 A2 A3 B1 B2 B3 C1 C2 C3) - self.closed_spots
	end
end	
