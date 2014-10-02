

class TicTacToe

	attr_accessor :player, :board 
	attr_reader :wins


	SYMBOLS = [:X, :O]

	def initialize(player = "PUNY HUMAN")
		@board = {
			:a1 => " ", :a2 => " ", :a3 => " ",
			:b1 => " ", :b2 => " ", :b3 => " ",
			:c1 => " ", :c2 => " ", :c3 => " "
		}

		@wins = [
			[:a1, :b1, :c1],
			[:a2, :b2, :c2],
			[:a3, :b3, :c3],
			[:a1, :a2, :a3],
			[:b1, :b2, :b3],
			[:c1, :c2, :c3],
			[:a1, :b2, :c3],
			[:a3, :b2, :c1]
		]
		
		@roll = rand(2)
		@player = player
		assign_symbols
		open_spots
		current_state
	end


	def welcome_player
		"Welcome #{@player}"
	end

	def assign_symbols(roll = @roll)
		if roll == 0
			@competitors = {:human => :X, :computer => :O}
		else
			@competitors = {:human => :O, :computer => :X}
		end
	end


	def current_player	
		if open_spots.count.even? == false		
			return @competitors.key(:X)
		else
			return @competitors.key(:O)
		end
	end

	def player_symbol	
		@competitors[:human]
	end
	

	def computer_symbol
		@competitors[:computer]
	end

	def open_spots
		r = @board.find_all {|i| i[1] == " "}
		r.flatten.delete_if{|i| i == " "}
	end

	def players_board
		p = @board.find_all {|i| i[1] == player_symbol}
		p.flatten.delete_if{|i| i == player_symbol}
	end

	def computers_board
		c = @board.find_all {|i| i[1] == computer_symbol}
		c.flatten.delete_if{|i| i == computer_symbol}
	end


	def computer_move	
		compmove = open_spots.sample
		@board[compmove] = computer_symbol
	end

	def check_move(playmove)
		if open_spots.include?(playmove) == true
			true
		else
			false
		end	
	end

	def get_player_move
		move = gets.chomp.downcase.to_sym
	end

	def player_move
		playmove = get_player_move
		if check_move(playmove) == true
			@board[playmove] = player_symbol
			return playmove
		else
			puts "invalid move"
			return playmove
			player_move
		end	
	end

	def current_state
		"#{@board[:a1]}|#{@board[:a2]}|#{@board[:a3]}\n-----
		\n#{@board[:b1]}|#{@board[:b2]}|#{@board[:b3]}\n-----
		\n#{@board[:c1]}|#{@board[:c2]}|#{@board[:c3]}\n#{'#'*10}"
	end

	def indicate_player_turn
		"Your move, #{@player}: "	
	end


	

	def player_won?
		won = @wins.map{|i| i&players_board}
		won.any? {|x| x.length == 3}
	end

	def computer_won?
		won = @wins.map{|i| i&computers_board}
		won.any? {|x| x.length == 3}
	end

	def draw?
		if open_spots.length == 0
			true
		else
			false
		end
	end

	def over?
		if determine_winner == true
			true
		else
			false
		end
	end

	def determine_winner
		if player_won? == true
			true
		elsif computer_won? == true
			true
		elsif draw? == true
			true
		else
			false
		end
	end

end