#  This code is the base program used to play a tic-tac-toe game.  It relies on the TicTacToe class in the 
#  ./features/step_definitions/tic-tac-toe.rb file.  It was developed from the features documented in the 
#  ./features/tic-tac-toe.feature file.
#
#  Author:: Neil Woodward
#
#  UW RubyWinter 2014
#


require './features/step_definitions/tic-tac-toe.rb'

@game = TicTacToe.new
puts "What is your name?"
@game.player = gets.chomp
puts @game.welcome_player

until @game.over
	case @game.current_player
	when "Computer"
		@game.process_computer_turn
	when @game.player
		@game.process_player_turn
	end

  #  This code makes an easy-to-understand tic-tac-toe board.
  puts "#{sprintf("%3s", @game.current_state[:A1])}  |#{sprintf("%3s", @game.current_state[:A2])}  |#{sprintf("%3s", @game.current_state[:A3])}"
  puts "#{sprintf("%3s", @game.current_state[:B1])}  |#{sprintf("%3s", @game.current_state[:B2])}  |#{sprintf("%3s", @game.current_state[:B3])}"
  puts "#{sprintf("%3s", @game.current_state[:C1])}  |#{sprintf("%3s", @game.current_state[:C2])}  |#{sprintf("%3s", @game.current_state[:C3])}"

	winner = @game.determine_winner
end

puts "You Won!" if winner == "Player"
puts "I Won!" if winner == "Computer"
puts "DRAW!" if winner =="Draw"
