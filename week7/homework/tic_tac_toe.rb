
class TicTacToe
  attr_accessor :player, :board
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
    @board.select {|location, piece| piece.nil?}.keys
  end

  def computer_move
    move = open_spots.sample
    @board[move] = computer_symbol
    move
  end

  def get_player_move
    m = gets
    move = m.to_sym
    $stderr.puts 'get player move #{move}'
    if open_spots.include? move
      @board[move] = :player_symbol
      return m
    else
      return nil
    end
  end

  def player_move
    puts "Your move #{@player}"
    get_player_move.to_sym
  end


  def current_state
    b = @board.values.map {|piece| piece.nil? ? '.' : piece}.to_a
    [
      b[0..2].join(" | "),
      b[3..5].join(" | "),
      b[6..8].join(" | ")
    ].join("\n")
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
