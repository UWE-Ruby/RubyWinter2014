class TicTacToe
  attr_accessor :player, :player_move, :get_player_move, :current_player, :player_symbol, :computer_symbol, :open_spots, :board

  SYMBOLS = [:X, :O]

  def initialize(arg1=nil, arg2=nil)
    @board = {:A1=>" ",:A2=>" ",:A3=>" ",
              :B1=>" ",:B2=>" ",:B3=>" ",
              :C1=>" ",:C2=>" ",:C3=>" "
             }


    @win_rows = [
        [:A1,:A2,:A3],
        [:B1,:B2,:B3],
        [:C1,:C2,:C3],
        [:A1,:B1,:C1],
        [:A2,:B2,:C2],
        [:A3,:B3,:C3],
        [:A1,:B2,:C3],
        [:C1,:B2,:A3]
    ]

     @open_spots = ['a1','a2', 'a3',
                    'b1', 'b2', 'b3',
                    'c1', 'c2', 'c3']

    @moves = ['a1','a2', 'a3',
              'b1', 'b2', 'b3',
              'c1', 'c2', 'c3']


    welcome_player
    @current_player = arg1
    @player_symbol = arg2
    @draw = false
    @over = false
    @player_won = false
    @computer_won = false

    if @player_symbol == :O
      @computer_symbol = :X
    else
      @computer_symbol = :O
    end

    unless @player_symbol
      @player_symbol = SYMBOLS.sample
      @computer_symbol = SYMBOLS.select {|symbol| symbol != @player_symbol}.first
    end

    unless @current_player
      @current_player = [:player, "Computer"].sample
    end

  end

  def welcome_player
    return "Welcome #{@player}"
  end

def current_player
    puts @current_player
    if @current_player == :player
      return @player
    else
      return "Computer"
    end
    puts current_player
  end

  def indicate_player_turn
    puts "#{@player}'s Move:"
  end

  def player_move
    print "What is your move?\n"
   @get_player_move = gets.chomp.to_sym
    @board[@get_player_move] = @player_symbol.to_s
    return @get_player_move
  end



  def computer_move
    move = @open_spots.sample
    puts "Computer marks #{move.upcase}"
    @moves.delete move
    @board[move.to_sym] = @computer_symbol.to_s
  return move
  end

  def current_state
    return @board.values
  end

  def determine_winner
    if !spots_open?
      @draw = true
      @over = true
      return false
    end
    SYMBOLS.each do |i|
      moves = @board.map{ |k,v| v == i ? k : nil }.compact
      @win_rows.each do |row|
        if row-moves == []
          declare_winner(i)
          return i
        end
        end
      end
    end


  def declare_winner winner
    if winner == @player_symbol
      @player_won = true
    elsif winner == @computer_symbol
      @computer_won = true
    end
    @over = true
  end

  def over?
    @over
  end

  def draw?
    @draw
  end

  def player_won?
    @player_won
  end

  def computer_won?
    computer_won
  end

  def spots_open?
    !@board.select {|val| val == " " } == {} || !@board.select {|val| val == " " }
  end

end

