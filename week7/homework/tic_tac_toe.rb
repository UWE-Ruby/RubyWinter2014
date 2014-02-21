
class TicTacToe
  attr_accessor :player
  attr_reader :player_symbol, :computer_symbol, :current_player

  SYMBOLS = [:X, :O]

  def initialize(player=:player, symbol=nil)
    #if ! [:player, :comuter].include? player
    #   @player = player
    #end
    if symbol
      @player_symbol = symbol
    else
      @player_symbol = random_symbol
    end
    @computer_symbol = opposite_symbol @player_symbol

    if @player_symbol == :X
      @current_player == @player
    else
      @current_player == 'Computer'
    end

  end


  def welcome_player
    "Welcome #{@player}"
  end

  def opposite_symbol s
    raise TypeError('Invalid Symbol') unless SYMBOLS.index(s)
    SYMBOLS[(SYMBOLS.index(s) + 1) % 2]
  end

  def random_symbol
    SYMBOLS[rand.round]
  end


end
