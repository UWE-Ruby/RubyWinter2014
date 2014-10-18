def dice(sides=6)
  rand(1..sides)
end

class TicTacToe
  
  attr_accessor :player, :HAL, :current_player, :player_symbol, :computer_symbol
  
  SYMBOLS = [:X, :O]
  
#  @possible_moves = ['A1', 'A2', 'A3','B1', 'B2', 'B3', 'C1', 'C2', 'C3']
  
  @game_board = {
      'A1' => 'open', 'A2' => 'open', 'A3' => 'open',
      'B1' => 'open', 'B2' => 'open', 'B3' => 'open',
      'C1' => 'open', 'C2' => 'open', 'C3' => 'open'
    }
  
  @possible_moves = @game_board.keys
  
  @current_state = @game_board
  
  def initialize(current_player="Default", n=:Z)
    if current_player != "Default"
      current_player = "Kody" if current_player == :player
      @player_symbol = :X if n == :Z
      current_player = "Computer" if current_player == :computer
      @current_player = current_player
    end
    if n != :Z
      @computer_symbol = :X
      @player_symbol = :X
    end
    @player = "Kody"
    @HAL = "Computer"
    # now we determine who gets to play as X and who plays as O
    if current_player == "Default"
      player_roll = 0
      computer_roll = 0
      while player_roll == computer_roll # roll until we have different numbers so we can compare
        player_roll = dice
        computer_roll = dice
      end
      # now we assign symbols to each player
      if player_roll > computer_roll
        @player_symbol = :X
        @computer_symbol = :O
        @current_player = "#{@player}"
      else
        @player_symbol = :O
        @computer_symbol = :X
        @current_player = "#{@HAL}"
      end
    end
  end
  
  def welcome_player
    "Welcome #{@player}"
  end
  
  def indicate_player_turn
    puts "#{@player}'s Move:"
  end

  def get_player_move
    player_move = STDIN.gets.chomp.upcase
    @game_board["#{player_move}"] = :X.to_s
    player_move
  end

  def open_spots
    @game_board
  end
   
  def computer_move
    # here i will randomly choose a number from 1 - 9 and then test if that spot is open
    # obviously this is not a good way to play tic tac toe! The computer should have some AI!
    spot_to_roll = ['A1', 'A2', 'A3','B1', 'B2', 'B3', 'C1', 'C2', 'C3']
    move = false
#    while move == false
#      random_spot = dice(9) - 1
#      check_spot = spot_to_roll[random_spot]
#      if check_spot == "open"
#        open_spots[check_spot] = @computer_symbol
#        move == true
#      end  
#    end
    check_spot = "B1"
  end
  
#  def current_state
#    @current_state = @game_board
#  end

#load_info.each do |attribute, value|

end