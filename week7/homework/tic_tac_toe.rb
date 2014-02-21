
class TicTacToe
  attr_accessor :player
  attr_reader :player_symbol, :computer_symbol

  SYMBOLS = [:X, :O]

  def initialize(player = 'PLAYER 1')
    @player = player
  end

  def welcome_player
    "Welcome #{player}"
  end

  def current_player
    return @current_p if @current_p
    if rand > 0.5
      @current_p = @player
      @player_symbol = :X
      @computer_symbol = :O
    else
      @current_p = "Computer"
      @player_symbol = :O
      @computer_symbol = :X
    end
    @current_p
  end

end
