#
#  Tic-tac-toe game
#
#  Final, Ruby Winter 2014
#

class TicTacToe

	SYMBOLS = [:X, :O]

	BOARD = [:A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3]

	attr_accessor :player, :current_player, :player_symbol, :computer_symbol, :open_spots, :current_state

	def initialize
		@current_state = {A1: nil, A2: nil, A3: nil, B1: nil, B2: nil, B3: nil, C1: nil, C2: nil, C3: nil}
  end

	def welcome_player

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

	def indicate_player_turn
		puts "#{player}'s Move:"
	end

	def get_player_move
		player_move = ""
		self.current_player = "Computer"
		p "In GPM"
		# until BOARD.include?(player_move) do
  # 		puts "Enter your move in form (Row A-C)(Col 1-3)"
    		#gets player_move
    		player_move = "A1"
  # 	end
		@current_state[player_move.to_sym] = player_symbol
		# p player_move
		player_move.to_sym
	end

  def computer_move
  	self.current_player = @player 
  	open_spots = self.open_spots
  	i = rand(1..open_spots.count)
  	@current_state[open_spots[i]] = computer_symbol
  	open_spots[i]
  end

  def open_spots
  	new_state = @current_state.keep_if do | key, value|
  		value.nil?
  	end
    new_state.keys
  end

end
