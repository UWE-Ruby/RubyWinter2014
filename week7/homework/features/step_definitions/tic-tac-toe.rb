class TicTacToe
  SYMBOLS = [:X, :O]
  PLAYERS = [:player, :computer]
  attr_reader :player
  attr_accessor :player_symbol, :computer_symbol, :players, :whose_turn

  def initialize starts=PLAYERS[zor1], s=SYMBOLS[zor1]
    @name    = {:player => 'Player', :computer => 'Computer'} 
    @whose_turn = PLAYERS.index starts
    @whose_symb = SYMBOLS.index s
    @symbol  = {
      #PLAYERS[@whose_turn]   => s,
      :player => s,
      :computer => SYMBOLS[(SYMBOLS.index s)^1]
    }
    @board = {
      :A1 => nil, :A2 => nil, :A3 => nil,
      :B1 => nil, :B2 => nil, :B3 => nil,
      :C1 => nil, :C2 => nil, :C3 => nil
    }
  end

  def player= name
    @player = @name[:player] = name
  end

  def board
    @board
  end

  def open_spots
    board.map{|spot, v| spot if v.nil?}
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
  end

  def computer_move
    n_open = open_spots.length
    open_spots[rand(0...n_open)]
  end

  private

  def toggle_current_player
    self.whose_turn = self.whose_turn^1
  end

  def zor1
    rand(0..1)
  end

end
