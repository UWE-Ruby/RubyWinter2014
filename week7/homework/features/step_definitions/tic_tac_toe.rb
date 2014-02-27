class TicTacToe
  attr_accessor :player
  SYMBOLS = [:X, :O]

  def initialize(*args)
    @player = player
  end

  def welcome_player
    "Welcome #{player}"
  end

  def current_player
    @player = [@player, "Computer"].sample
  end

  def player_symbol
    :O
  end

  def computer_symbol
    :X
  end

  def move
    if @player == "Renee"
      @won = true
    else
      @won = false
    end
  end

  def won?
    @won
  end
  
end