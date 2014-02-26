
class TicTacToe
  attr_accessor :player
  attr_reader :player_symbol, :computer_symbol

  SYMBOLS = [:X, :O]

  def initialize(first_player=nil, symbol=nil)
    if symbol
      @player_symbol = symbol
    else
      @player_symbol = random_symbol
    end
    @computer_symbol = opposite_symbol @player_symbol
    if first_player
      @curr_player = first_player
    else
      @curr_player = (rand.round > 0.5) ? :player : :computer
    end


  end

  def indicate_player_turn
    if @curr_player == :player
      puts "Renee's Move:"
    end
  end

  def current_player
    if @curr_player == :player
      return @player
    else
      return 'Computer'
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
