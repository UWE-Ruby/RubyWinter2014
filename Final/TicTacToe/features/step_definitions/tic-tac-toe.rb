#I was unable to spend a ton of time on this part of the final.

class TicTacToe

	attr_accessor :player_symbol, :computer_symbol, :current_player, :player, :computer, :wins, :places

	SYMBOLS = ['X', 'O']

	def initialize name = "" 
		@player = name
		set_players
	end

	def set_players
		@player_symbol = SYMBOLS.sample
		@player_symbol == "X"? @computer_symbol="O": @computer_symbol="X"
		participants = {"#{@player}" => player_symbol, "Computer" => computer_symbol}
	end

	def random_player
		["#{player}", "Computer"].sample
	end

	def welcome_player 
		"Welcome #{player}"
	end

	def current_player
	  @player.empty? ? @current_player = random_player : @current_player = @player
	end
	
	def indicate_player_turn
     puts "#{@player}'s Move:"
     get_player_move
	end

	def get_player_move
		gets.chomp
	end


end

