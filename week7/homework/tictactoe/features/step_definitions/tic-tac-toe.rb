#require File.expand_path(File.dirname(__FILE__)) + '/tic_tac_toe_@board.rb'

class TicTacToe

	SYMBOLS = [:O, :X]

	attr_accessor :player, :player_symbol, :computer_symbol, :board

	def initialize player1=nil, player2=nil
		init_game(player1, player2)
	end

	def welcome_player
		"Welcome #{@player}"
	end

	def current_player
		(@current_player.eql? :player) ?  @player : "Computer"
	end

	def indicate_player_turn
		puts "#{@player}'s Move:"
	end

	def get_player_move
		gets.chomp
	end

	def draw?
		(spots_open?.eql? false) &&  (determine_winner.eql? false)
	end

	def over?
		(draw? || determine_winner)
	end

	def spots_open?
		open_spots.length > 0
	end 

	def open_spots
		@spots.reject{|x| @board.key? x.intern}
	end

	def current_state
		"| #{@board[:A1].to_s} | #{@board[:A2].to_s} | #{@board[:A3].to_s} |\n" +
		"| #{@board[:B1].to_s} | #{@board[:B2].to_s} | #{@board[:B3].to_s} |\n" +
		"| #{@board[:C1].to_s} | #{@board[:C2].to_s} | #{@board[:C3].to_s} |\n"
	end

	def determine_winner
		(player_won? || computer_won?)
	end

	[:player, :computer].each do |e|
		define_method("#{e}_won?") do
			if ((@board[:A1] == @board[:A2] && @board[:A2] == @board[:A3] && @board[:A2] == instance_variable_get("@#{e.to_s}_symbol")) ||
				(@board[:B1] == @board[:B2] && @board[:B2] == @board[:B3] && @board[:B2] == instance_variable_get("@#{e.to_s}_symbol")) ||
				(@board[:C1] == @board[:C2] && @board[:C2] == @board[:C3] && @board[:C2] == instance_variable_get("@#{e.to_s}_symbol")) ||
				(@board[:A1] == @board[:B1] && @board[:B1] == @board[:C1] && @board[:C1] == instance_variable_get("@#{e.to_s}_symbol")) ||
				(@board[:A2] == @board[:B2] && @board[:B2] == @board[:C2] && @board[:C2] == instance_variable_get("@#{e.to_s}_symbol")) ||
				(@board[:A3] == @board[:B3] && @board[:B3] == @board[:C3] && @board[:C3] == instance_variable_get("@#{e.to_s}_symbol")) ||
				(@board[:A1] == @board[:B2] && @board[:B2] == @board[:C3] && @board[:C3] == instance_variable_get("@#{e.to_s}_symbol")) ||
				(@board[:A3] == @board[:B2] && @board[:B2] == @board[:C1] && @board[:C1] == instance_variable_get("@#{e.to_s}_symbol")))
				return true
			else
				return false
			end
		end
	end

	def player_move
		move = get_player_move
		until is_valid_move(move)
			puts "Not a valid move. Try Again:"
			move = get_player_move
		end
		@board[move.intern] = @player_symbol
		@current_player = :computer
		move.intern
	end

	def computer_move
		move = open_spots[rand(0..(open_spots.length - 1))]
		@board[move.intern] = @computer_symbol
		@current_player = :player
		move
	end

	private

	def init_game(player1, player2)

		@current_player = player1
		toss = rand(0..1)

		if (player2 != nil)
			if (@current_player.eql? :player)
				@player_symbol = SYMBOLS.reject{|x| x.eql? player2}[0]
				@computer_symbol = player2
			else ((@current_player.eql? :computer))
				@computer_symbol = SYMBOLS.reject{|x| x.eql? player2}[0]
				@player_symbol = player2
			end
		else
			@current_player = ((toss.eql? 1) ? :player : :computer) if (@current_player.eql? nil)
			@player_symbol = SYMBOLS[toss]
			@computer_symbol = SYMBOLS[1 ^ toss]
		end
		@spots = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
		@board = Hash.new(" ")
	end

	def is_valid_move move
		(@board[move.intern].eql? " ") && (@spots.include? move)
	end
end
