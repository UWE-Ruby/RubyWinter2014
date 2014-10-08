class TicTacToe

	attr_accessor :player, :player_symbol, :computer_symbol, :open_spots, :board, :com_turn, :winner

	SYMBOLS =[:X, :O]

	WINS = [
		[:A1, :A2, :A3],
		[:A1, :B2, :C3],
		[:A1, :B1, :C1],
		[:A2, :B2, :C2],
		[:A3, :B3, :C3],
		[:B1, :B2, :B3],
		[:C1, :C2, :C3],
		[:C1, :B2, :A3]
	]

	@@turn = 0
	@@players = [@player, "Computer"]

	def initialize name="", player_symbol=nil
		@player = name.to_s.capitalize
		@player_symbol = player_symbol
		@computer_symbol = computer_symbol
		@com_turn = @current_player
		@winner = winner
		@open_spots = [:A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3]
		@board = {:A1 => " ", :A2 => " ", :A3 => " ", :B1 => " ", :B2 => " ", :B3 => " ", :C1 => " ", :C2 => " ", :C3 => " " }

		# Assign a symbol to each player
		symbols = SYMBOLS.shuffle
		if @player_symbol == nil
			@player_symbol = symbols.shuffle.pop
		else
			symbols.delete(player_symbol)
		end
		@computer_symbol = symbols.pop
	end

	def welcome_player
		"Welcome #{@player}"
	end

	def current_player	
		@current_player = @com_turn ? "Computer" : @player
	end

	def indicate_player_turn
		"#{@current_player}'s Move:" 
	end

	def get_player_move(move = gets.chomp)
		move.upcase.to_sym
	end

	def player_move
		@player_move = get_player_move.to_sym
		if @board[@player_move] != " " 
			message = no_move
		else
			@board[@player_move] = @player_symbol.to_s
			@open_spots.delete(@player_move)
			@com_turn = true
			@player_move
		end	
	end

	def no_move
		puts "No bueno--try one of these: \n #{@open_spots.join(", ")}"
		player_move
	end

	def computer_move
		move = @open_spots.shuffle.pop
		@board[move] = @computer_symbol.to_s
		@com_turn = false
		move.to_sym
	end

	def current_state
		board_status =	"   A  | B  |  C  "\
	  		"1 | #{@board.values_at(:A1)[0]} | #{@board.values_at(:B1)[0]}  | #{@board.values_at(:C1)[0]}"\
	    	"  |--------------"\
	    	"2 | #{@board.values_at(:A2)[0]} | #{@board.values_at(:B2)[0]}  | #{@board.values_at(:C2)[0]}"\
	    	"  |--------------"\
	     	"3 | #{@board.values_at(:A3)[0]} | #{@board.values_at(:B2)[0]}  | #{@board.values_at(:C3)[0]}"	    
	end

	def board
		@board
	end


	def determine_winner
		WINS.each do |a, b, c|
			if (@board[a] == @board[b]) && (@board[a] == @board[c])
				sym = @board[a]
				if sym == @player_symbol
					@winner = @player
				elsif sym == @computer_symbol
					@winner = "Computer"
				end
			end
		end
	end

	def player_won?
		@winner = @player ? true : false
	end

	def over?
		@winner != "" ? true : false
	end

	def spots_open?
		@board.has_value?(" ") ? true : false
	end

	def draw?
		if self.spots_open?
			return false
		else 
			determine_winner
			@winner = "" ? true : false
		end
	end
end