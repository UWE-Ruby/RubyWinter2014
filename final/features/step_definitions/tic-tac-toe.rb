#
#  Tic-tac-toe class
#
#  Final, Ruby Winter 2014
#
#  This code defines a class used in ../play_game.rb to play a fun little tic-tac-toe game.
#
#  Author:: Neil Woodward
#  License::  MIT
#

class TicTacToe

  #  The symbols used by the contestants
	SYMBOLS = [:X, :O]

  #  The board, each space represented by a string
	BOARD = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]

	attr_accessor :player, :current_player, :player_symbol, :computer_symbol, :open_spots, :current_state, :over

  #  When you instantiate a game, we need to initialize the current_state (which holds the current
  #  game board) and the fact that the game is not over.
	def initialize
		@current_state = {:A1 => nil, :A2 => nil, :A3 => nil,
		                  :B1 => nil, :B2 => nil, :B3 => nil, 
		                  :C1 => nil, :C2 => nil, :C3 => nil}
    @over = false
  end

  #  This method sets up who moves first, who is X and O, and welcomes the player
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

  #  This is the method that runs the player's turn.  First it indicates that the computer moves next,
  #  Then prompts for a move, gets it, makes sure it is "good" (that is, using the correct format and
  #  in an open space), then changes the current_state to reflect the move.  It then returns the good_move.
  #  
	def process_player_turn
		self.current_player = "Computer"
		indicate_player_turn
		player_good_move= self.get_good_move
		change_state(player_symbol, player_good_move)
		player_good_move
	end

  #  Used to tell player that it is their turn
	def indicate_player_turn
		puts "#{player}'s Move, playing #{player_symbol}:"
	end
  
  #  A method to get the player move, and verifiy that it is well-formed.
	def get_player_move
		player_input = ""
		loop do
  		puts "Enter your move in form (Row A-C)(Col 1-3)"
    	player_input = gets.chomp
    	break if BOARD.include?(player_input)
  	end
		player_input.to_sym
	end

  #  This method calls get_player_move to get the player's move, and then ensures that the space
  #  is not taken.
	def get_good_move
    loop do
		  @player_move = self.get_player_move
      break if @current_state[@player_move].nil?
      puts "That position is taken.  Try another."
    end
    @player_move
   end

  #  This method inputs the player's or computer's move onto the board.
	def change_state(contestant_symbol, contestant_move)
		@current_state[contestant_move] = contestant_symbol
	end

  #  Like process_player_turn, this method is the overall controller of the computer's turn
  def process_computer_turn
  	self.current_player = @player
  	puts "My Move, playing #{computer_symbol}"
  	computer_move = self.get_computer_move
  	change_state(computer_symbol,computer_move)
  	computer_move
  end

  #  This method chooses a random open square as the computer's move
  def get_computer_move
  	open_spots = self.open_spots
  	i = rand(0..open_spots.count-1)
  	open_spots[i].to_sym
  end

  #  This method determines what spaces are open.  It clones the current_state, then strips out all spaces that contain
  #  an X or an O, then returns these positions.
  def open_spots
  	trans_state = @current_state.clone
  	new_state = trans_state.keep_if {| key, value | value.nil?}
    new_state.keys
  end

  #  This is the method that determines if the player won, if the computer won, or if there is a draw.
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

  #  This method is used by determine_winner to see if the player represented by check_symbol won.
  def won?(check_symbol)
  	row_winner?(check_symbol) || 
  	  col_winner?(check_symbol) ||
  	  diag_winner?(check_symbol)
  end

  #  This method sees if we have a row that has three check_symbols
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

  #  This method sees if we have a column that has three check_symbols
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

  #  This method sees if we have a diagonal that has three check_symbols
  def diag_winner?(check_symbol)
  	(@current_state[:A1] == check_symbol &&
  		@current_state[:B2] == check_symbol &&
  		@current_state[:C3] == check_symbol) ||
  	(@current_state[:A3] == check_symbol &&
  		@current_state[:B2] == check_symbol && 
  		@current_state[:C1] == check_symbol) 
  end

end
