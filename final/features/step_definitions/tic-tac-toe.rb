#
#  Tic-tac-toe game
#
#  Final, Ruby Winter 2014
#

class TicTacToe

	SYMBOLS = ["X", "O"]

	attr_accessor :player, :current_player, :player_symbol, :computer_symbol

	def welcome_player
		puts "In welcome_player"

		if rand < 0.5 then
			self.current_player = "Computer"
			self.computer_symbol, self.player_symbol = SYMBOLS
			puts current_player
		else
			self.current_player = player
			puts player
			self.player_symbol, self.computer_symbol = SYMBOLS
      puts current_player
		end

  	"Welcome #{player}"
	end

end
