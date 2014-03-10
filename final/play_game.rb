require './features/step_definitions/tic-tac-toe.rb'

@game = TicTacToe.new
puts "What is your name?"
@game.player = gets.chomp
puts @game.welcome_player

#until @game.over?
	case @game.current_player
	when "Computer"
		puts "Computer's turn"
		@game.process_computer_turn
	when @game.player
		@game.process_player_turn
	end

	puts @game.current_state
	@game.determine_winner
#end

puts "You Won!" if @game.player_won?
puts "I Won!" if @game.computer_won?
puts "DRAW!" if @game.draw?
