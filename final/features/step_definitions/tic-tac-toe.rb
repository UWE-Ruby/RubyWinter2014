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

	def process_player_turn
		self.current_player = "Computer"
		indicate_player_turn
		player_move = self.get_good_move do
			player_move = ""
		  loop do
  		  puts "Enter your move in form (Row A-C)(Col 1-3)"
    	  player_move = gets
    	  break if BOARD.include?(player_move.to_sym)
  	  end
		  player_move.to_sym
		end
		change_state(player_symbol, player_move)
	end

	def indicate_player_turn
		puts "#{player}'s Move:"
	end

	# def get_player_move
	# 	player_move = ""
	# 	loop do
 #  		puts "Enter your move in form (Row A-C)(Col 1-3)"
 #    	player_move = gets
 #    	break if BOARD.include?(player_move.to_sym)
 #  	end

	# 	player_move.to_sym
	# end

	def get_good_move
    loop do
		  player_move = yield
      break if @current_state[player_move].nil?
      puts "That position is taken.  Try another."
    end
    player_move
   end

	def change_state(contestant_symbol, contestant_move)
		@current_state[contestant_move] = contestant_symbol
	end

  def process_computer_turn
  	self.current_player = @player
  	computer_move = self.get_computer_move
  	change_state(computer_symbol,computer_move)
  	computer_move
  end

  def get_computer_move
  	computer_move = ""
  	open_spots = self.open_spots
  	i = rand(0..open_spots.count-1)
  	open_spots[i].to_sym
  end

  def open_spots
  	new_state = @current_state.keep_if do | key, value|
  		value.nil?
  	end
    new_state.keys
  end

end
