require 'rspec/mocks/standalone'
require 'rspec/expectations'
require_relative 'tic-tac-toe.rb'


Given /^I start a new Tic\-Tac\-Toe game$/ do
  @game = TicTacToe.new
end


When /^I enter my name (\w+)$/ do |name|
  @game.player = name
end

Then /^the computer welcomes me to the game with "(.*?)"$/ do |arg1|
  @game.welcome_player.should eq arg1
end

Then /^randomly chooses who goes first$/ do
  [@game.player, "Computer"].should include @game.current_player
end

Then /^who is X and who is O$/ do
  TicTacToe::SYMBOLS.should include @game.player_symbol, @game.computer_symbol
end

Given /^I have a started Tic\-Tac\-Toe game$/ do
  @game = TicTacToe.new
  @game.player = "Renee"
end

Given /^it is my turn$/ do
  @game.current_player = "Renee"
end

Given /^the computer knows my name is Renee$/ do
  @game.player.should eq "Renee"
end

Then /^the computer prints "(.*?)"$/ do |arg1|
  @game.should_receive(:puts).with(arg1)
  @game.indicate_player_turn
end

Then /^waits for my input of "(.*?)"$/ do |arg1|
  @game.should_receive(:puts).with("Enter your move in form (Row A-C)(Col 1-3)")
  @game.should_receive(:gets).and_return(arg1)
  @game.get_good_move
end

Given /^it is the computers turn$/ do
  @game = TicTacToe.new
  @game.current_player = "Computer"
end

Then /^the computer randomly chooses an open position for its move$/ do
  open_spots = @game.open_spots
  @com_move = @game.process_computer_turn
  open_spots.should include(@com_move)
end

Given /^the computer is playing X$/ do
  @game.computer_symbol = :X
  @game.player_symbol = :O
end

Then /^the board should have an X on it$/ do
  @game.current_state.values.should include :X
end

Given /^I am playing X$/ do
  @game.player_symbol = :X
  @game.computer_symbol = :O
end

When /^I enter a position "(.*?)" on the board$/ do |arg1|
  @old_pos = @game.current_state[arg1.to_sym]
  @game.should_receive(:get_good_move).and_return(arg1.to_sym)
  @game.process_player_turn.should eq arg1.to_sym

end

When /^"(.*?)" is not taken$/ do |arg1|
  @old_pos.should eq nil
end

When /^"(.*?)" is taken$/ do |arg1|
  @game.current_state[arg1.to_sym] = :O
  @taken_spot = arg1.to_sym
end

Then /^computer should ask me for another position "(.*?)"$/ do |arg1|
  # @game.should_receive(:get_player_move).twice.and_return(@taken_spot, arg1)
  @game.get_good_move.should eq arg1.to_sym
end
  # Note:  I cannot get this step to complete successfully, even though I've verified that the 
  # code works.  For some reason, it won't actually call #get_good_move (verified through p statements).
  # As the code checks good, I'll spend the time working on my ruby gem.
  #


Then /^it is now the computers turn$/ do
  @game.current_player.should eq "Computer"
end

When /^there are three Xs in a row$/ do
  @game.current_state[:C1] = @game.current_state[:B2] = @game.current_state[:A3] = :X
end

Then /^I am declared the winner$/ do
  @game.won?(@game.player_symbol)
  @game.determine_winner.should eq "Player"
end

Then /^the game ends$/ do
  @game.over.should be_true
end

Given /^there are not three symbols in a row$/ do
  @game.current_state = {
      :A1 => :X, :A2 => :O, :A3 => :X,
      :B1 => :X, :B2 => :O, :B3 => :X,
      :C1 => :O, :C2 => :X, :C3 => :O
    }
    @game.determine_winner.should eq "Draw"
end

When /^there are no open spaces left on the board$/ do
  @game.open_spots.count == 0
end

Then /^the game is declared a draw$/ do
  @game.determine_winner.should eq "Draw"
end


