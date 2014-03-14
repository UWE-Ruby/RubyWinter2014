

class TicTacToe

	SYMBOLS = [:X, :O]
	
	@board = {
      :A1 => " ", :A2 => " ", :A3 => " ",
      :B1 => " ", :B2 => " ", :B3 => " ",
      :C1 => " ", :C2 => " ", :C3 => " "
    }
	
	attr_accessor :player
	attr_reader :player_symbol, :computer_symbol
	
	def initialize(*args)
		@current_player = rand([@player, "Computer"].length)
		if @current_player == 0
			@current_player = @player
		else
			@current_player = "Computer"
		end
		@player_symbol = SYMBOLS[rand(SYMBOLS.length)]
		if @player_symbol == :X
			@computer_symbol = :O
		else
			@computer_symbol = :X
			
		end
	end	
	
		
			
	def player= name
		@player = name
	end
	
	def welcome_player
		"Welcome #{@player}"
	end
	
	def current_player
		if @current_player = @player
			return @player
		else
			return "Computer"
		end
	end
	
	def player_symbol
		@player_symbol
	end
	
	def computer_symbol
		@computer_symbol 
	end
	
	def indicate_player_turn 
		puts "#{@player}'s Move:"
	end
	
	
	
	def get_player_move
		move = gets.chomp
		
	end	

	
	def open_spots
		a = @board.select{|key, value| value == ""}
		@open_spots = a.keys
		
	end
	
	def player_move
	end
	
	def computer_move
		@com_move = @open_spots[rand(@open_spots.length)]
		@com_move = @com_move.to_sym
		@current_player = @player
	end
	
	def determine_winner
	end
	
		
		
end





#Given /^it is the computer's turn$/ do
#  @game = TicTacToe.new(:computer, :O)
#  @game.current_player.should eq "Computer"
#end

#Then /^the computer randomly chooses an open position for its move$/ do
#  open_spots = @game.open_spots
#  @com_move = @game.computer_move
#  open_spots.should include(@com_move)
#end


