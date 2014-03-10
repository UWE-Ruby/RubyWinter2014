#
#  Tic-tac-toe game
#
#  Final, Ruby Winter 2014
#

class TicTacToe

	SYMBOLS = [:X, :O]

	BOARD = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]

	attr_accessor :player, :current_player, :player_symbol, :computer_symbol, :open_spots, :current_state, :over

	def initialize
		@current_state = {:A1 => nil, :A2 => nil, :A3 => nil,
		                  :B1 => nil, :B2 => nil, :B3 => nil, 
		                  :C1 => nil, :C2 => nil, :C3 => nil}
    @over = false
  end

	def welcome_player
		if rand < 0.5 then
			self.current_player = "Computer"
			self.computer_symbol, self.player_symbol = SYMBOLS
		else
			self.current_player = player
			self.player_symbol, self.computer_symbol = SYMBOLS
		end
  	"Welcome #{player}"
	end

	def process_player_turn
		self.current_player = "Computer"
		indicate_player_turn
		player_good_move= self.get_good_move
		change_state(player_symbol, player_good_move)
		player_good_move
	end

	def indicate_player_turn
		puts "#{player}'s Move, playing #{player_symbol}:"
	end

	def get_player_move
		player_input = ""
		loop do
  		puts "Enter your move in form (Row A-C)(Col 1-3)"
    	player_input = gets.chomp
    	break if BOARD.include?(player_input)
  	end
		player_input.to_sym
	end

	def get_good_move
		p "In GGM"
    loop do
		  @player_move = self.get_player_move
      break if @current_state[@player_move].nil?
      puts "That position is taken.  Try another."
    end
    @player_move
   end

	def change_state(contestant_symbol, contestant_move)
		@current_state[contestant_move] = contestant_symbol
	end

  def process_computer_turn
  	self.current_player = @player
  	puts "My Move, playing #{computer_symbol}"
  	computer_move = self.get_computer_move
  	change_state(computer_symbol,computer_move)
  	computer_move
  end

  def get_computer_move
  	open_spots = self.open_spots
  	i = rand(0..open_spots.count-1)
  	open_spots[i].to_sym
  end

  def open_spots
  	trans_state = @current_state.clone
  	new_state = trans_state.keep_if {| key, value | value.nil?}
    new_state.keys
  end

  def determine_winner
  	if self.won?(@player_symbol) then
  		@over = true
     	return "Player" 
   	end
   	if self.won?(@computer_symbol) then
   		@over = true
   	  return "Computer" 
   	end
   	if self.open_spots.count == 0 then
   		@over = true
   		return "Draw"
   	end
    return "" 
  end

  def won?(check_symbol)
  	row_winner?(check_symbol) || 
  	  col_winner?(check_symbol) ||
  	  diag_winner?(check_symbol)
  end

  def row_winner?(check_symbol)
  	(@current_state[:A1] == check_symbol &&
  		@current_state[:A2] == check_symbol &&
  		@current_state[:A3] == check_symbol) ||
  	(@current_state[:B1] == check_symbol &&
  		@current_state[:B2] == check_symbol && 
  		@current_state[:B3] == check_symbol) ||
  	(@current_state[:C1] == check_symbol &&
  		@current_state[:C2] == check_symbol &&
  		@current_state[:C3] == check_symbol)
  end

  def col_winner?(check_symbol)
  	(@current_state[:A1] == check_symbol &&
  		@current_state[:B1] == check_symbol &&
  		@current_state[:C1] == check_symbol) ||
  	(@current_state[:A2] == check_symbol &&
  		@current_state[:B2] == check_symbol && 
  		@current_state[:C2] == check_symbol) ||
  	(@current_state[:A3] == check_symbol &&
  		@current_state[:B3] == check_symbol &&
  		@current_state[:C3] == check_symbol)
  end

  def diag_winner?(check_symbol)
  	(@current_state[:A1] == check_symbol &&
  		@current_state[:B2] == check_symbol &&
  		@current_state[:C3] == check_symbol) ||
  	(@current_state[:A3] == check_symbol &&
  		@current_state[:B2] == check_symbol && 
  		@current_state[:C1] == check_symbol) 
  end

end
