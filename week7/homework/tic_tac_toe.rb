
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
    #init board to nil
    @board = {}
    ('A'..'C').each {|a| ("#{a}1".."#{a}3").each {|b| @board[:"#{b}"] = nil;}}

  end

  def indicate_player_turn
    if @curr_player == :player
      puts "Renee's Move:"
    end
  end

  def get_player_move
    move = gets
    move
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

  def open_spots

  end

  def comptuer_move

  end

  def current_state

  end

  def determine_winner
  end
  def player_won?
  end
  def draw?
  end
  def over?
  end
  def spots_open?
  end

  def opposite_symbol s
    raise TypeError('Invalid Symbol') unless SYMBOLS.index(s)
    SYMBOLS[(SYMBOLS.index(s) + 1) % 2]
  end

  def random_symbol
    SYMBOLS[rand.round]
  end


end
