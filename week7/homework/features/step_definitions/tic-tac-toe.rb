class TicTacToe

  SYMBOLS = [:X,:O]


  attr_accessor :player, :board
  def initialize current_player=nil, player_s=nil
    @current_player = current_player || [:player, :computer].sample
    choose_symbols(player_s)

    @board = {
        :A1=>" ",:A2=>" ",:A3=>" ",
        :B1=>" ",:B2=>" ",:B3=>" ",
        :C1=>" ",:C2=>" ",:C3=>" "
    }
  end
  

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    {:computer => "Computer", :player => @player}[@current_player]
  end

  def over?
    false if spots_open?
    true if player_won? || computer_won?
  end

  def computer_move

    spot = open_spots.sample
    @board[spot] = computer_symbol
    @current_player = :player
  end

  def indicate_palyer_turn
    puts "#{@player}'s Move:"
  end

  def player_move
    spot = get_player_move.to_sym
    until open_spots.include?(spot)
      puts "That spot is taken, please enter another spot:"
      spot = get_player_move.to_sym
    end
    @board[spot] = player_symbol

    @current_player = :computer
    spot
  end

  def current_state
    ret =  "     1 | 2 | 3\n"
    ret << "A  |   #{@board[:A1]}|   #{@board[:A2]}|   #{@board[:A3]}\n"
    ret << "---|---|---|---\n"
    ret << "B  |   #{@board[:B1]}|   #{@board[:B2]}|   #{@board[:B3]}\n"
    ret << "---|---|---|---\n"
    ret << "C  |   #{@board[:C1]}|   #{@board[:C2]}|   #{@board[:C3]}\n"

  end

  def determine_winner
    #return false if spots_open?

    if @board[:A1] == @board[:B1] && @board[:B1]  == @board[:C1]  && @board[:A1] != " "
      @winner = @board[:A1]
    elsif @board[:A2] == @board[:B2] && @board[:B2] == @board[:C2] && @board[:A2] != " "
      @winner = @board[:A2]
    elsif @board[:A3] == @board[:B3] && @board[:B3] == @board[:C3] && @board[:A3] != " "
      @winner = @board[:A3]
    elsif @board[:A1] == @board[:A2] && @board[:A2] == @board[:A3] && @board[:A1] != " "
      @winner = @board[:A1]
    elsif @board[:B1] == @board[:B2] && @board[:B2] == @board[:B3] && @board[:B1] != " "
      @winner = @board[:B1]
    elsif @board[:C1] == @board[:C2] && @board[:C2] == @board[:C3] && @board[:C1] != " "
      @winner = @board[:C1]
    #else
    #  @winner = "draw"
    end
    #return false if spots_open?
    over?
    true
  end

  def player_won?
    true if @winner == @player_symbol[:player]
  end

  def draw?
    true unless player_won? || computer_won?
  end

  def computer_won?
    @winner == @player_symbol[:computer]
  end

  def player_symbol
    @player_symbol[:player]
  end

  def computer_symbol
    @player_symbol[:computer]
  end

  def get_player_move
    gets.chomp
  end

  def spots_open?
    true if @board.values.any?{|v| v == " "}
  end

  def open_spots
    spots = Array.new
    @board.each do |key, value|
      if value == " "
        spots << key
      end
    end
    spots
  end

  def choose_symbols(player_s)
    player_s ||=SYMBOLS.sample
    @player_symbol = {:computer => SYMBOLS.reject{|s| s==player_s}.first, :player => player_s}
  end

end
