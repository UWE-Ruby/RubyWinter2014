def dice(sides=6)
  rand(1..sides)
end

class TicTacToe
  
  attr_accessor :player, :current_player, :player_symbol, :computer_symbol
  
  SYMBOLS = [:X, :O]
  
  def initialize(player="Bob")
    @player = player
  end
  
  def welcome_player
    "Welcome #{@player}"
  end
  
  def current_player
    player_roll = 0
    computer_roll = 0
    while player_roll == computer_roll
      player_roll = dice
      computer_roll = dice
    end
    if player_roll > computer_roll
      @player_symbol = :X
      @computer_symbol = :O
      return "Kody"
    else
      @player_symbol = :O
      @computer_symbol = :X
      return "Computer"
    end
  end

end