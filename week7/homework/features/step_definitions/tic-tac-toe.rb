def dice(sides=6)
  rand(1..sides)
end

class TicTacToe
  
  attr_accessor :player, :HAL, :current_player, :player_symbol, :computer_symbol
  
  SYMBOLS = [:X, :O]
  
  def initialize(player="Kody")
    @player = "Kody"
    @HAL = "Computer"
    # now we determine who goes first
    player_roll = 0
    computer_roll = 0
    while player_roll == computer_roll
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
  
  def welcome_player
    "Welcome #{@player}"
  end
  
  def indicate_player_turn
    puts "#{@player}'s Move:"
  end
  
  def get_player_move
    STDIN.gets.chomp.upcase
  end

end