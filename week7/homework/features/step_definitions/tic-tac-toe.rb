class TicTacToe
  SYMBOLS = [:X, :O]
  PLAYERS = [:player, :computer]
  attr_reader :player
  attr_accessor :player_symbol, :computer_symbol, :players, :whose_turn

  def initialize starts=PLAYERS[dien], s=SYMBOLS[dien]
    @name    = {:player => 'Player', :computer => 'Computer'} 
    @whose_turn = PLAYERS.index starts
    @whose_symb = SYMBOLS.index s
    @symbol  = {
      #PLAYERS[@whose_turn]   => s,
      :player => s,
      :computer => SYMBOLS[(SYMBOLS.index s)^1]
    }
    @board = {
      :A1 => ' ', :A2 => ' ', :A3 => ' ',
      :B1 => ' ', :B2 => ' ', :B3 => ' ',
      :C1 => ' ', :C2 => ' ', :C3 => ' '
    }
  end

  def player= name
    @player = @name[:player] = name
  end

  def board
    @board
  end

  def open_spots
    board.select{|spot, v| spot if v.is_a? String}.map{|k,v| k}
  end

  #FIXME refactor these 2
  def player_symbol
    @symbol[:player]
  end

  def computer_symbol
    @symbol[:computer]
  end

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    @name[PLAYERS[@whose_turn]]
  end

  def indicate_palyer_turn
    puts "#{@player}'s Move:"
  end

  def get_player_move
    move = gets.chomp
  end

  def player_move
    pos = get_player_move.to_sym
    @board[pos] = @symbol[:player]
    pos
  end

  def computer_move
    pos = open_spots[dien open_spots.length - 1]
    @board[pos] = @symbol[:computer]
    pos
  end

  def current_state
    @board.map{|pos, state| state.to_s}
  end
  private

  def toggle_current_player
    self.whose_turn = self.whose_turn^1
  end

  def dien n=1
    rand(0..n)
  end

end
