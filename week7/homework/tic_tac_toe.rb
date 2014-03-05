require 'pry'

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
    #init board to ' '
    @board = {}
    ('A'..'C').each {|a| ("#{a}1".."#{a}3").each {|b| @board[:"#{b}"] = ' ';}}
  end

  def indicate_player_turn
    if @curr_player == :player
      puts "#{@player}'s Move:"
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
    @board.select {|location, piece| piece == ' '}.keys
  end

  def computer_move
    move = open_spots.sample
    @board[move] = computer_symbol
    @curr_player = :player
    move
  end

  def valid_move? move
    open_spots.include? move.to_sym
  end

  def make_move location, symbol
    @board[location.to_sym] = symbol
  end

  def get_player_move
    move = gets
    if move                    # if not nil, chop
      move.chop!
    end
    move                       # else it is nil, just pass it through
  end

  def player_move
    puts "Your move #{@player}"
    m = get_player_move()
    if !valid_move? m
      puts "Invalid move: #{m}"
      return player_move
    end
    move = m.to_sym
    make_move move, @player_symbol
    @curr_player = :computer
    move
  end


  def current_state
    b = @board.values.map {|piece| piece == ' ' ? '.' : piece}.to_a
    [
      b[0..2].join(" | "),
      b[3..5].join(" | "),
      b[6..8].join(" | ")
    ].join("\n")
  end

  def determine_winner
    winning_symbol = XorO @board
    @winner = :player if winning_symbol == player_symbol
    @winner = :computer if winning_symbol == computer_symbol
  end

  def XorO board
    winning_combos = [
      [:A1, :A2, :A3],
      [:B1, :B2, :B3],
      [:C1, :C2, :C3],
      [:A1, :B1, :C1],
      [:A2, :B2, :C2],
      [:A3, :B3, :C3],
      [:A1, :B2, :C3],
      [:A3, :B2, :C1],
    ]
    winning_combos.each do |combo|
      line_moves = combo.map {|index| board[index]}
      x = line_moves.select {|elm| elm == :X}
      return :X if x.length == 3
      y = line_moves.select {|elm| elm == :O}
      return :O if y.length == 3
    end
    return nil
  end

  def player_won?
    if :player == @winner
      return true
    else
      return false
    end
  end

  def computer_won?
    if :computer == @winner
      return true
    else
      return false
    end
  end

  def draw?
    !spots_open? and !@winner
  end
  def over?
    !spots_open? or @winner
  end
  def spots_open?
    @board.values.select{|spots| spots == ' '}.length > 0
  end

  def opposite_symbol s
    raise TypeError('Invalid Symbol') unless SYMBOLS.index(s)
    SYMBOLS[(SYMBOLS.index(s) + 1) % 2]
  end

  def random_symbol
    SYMBOLS[rand.round]
  end


end
