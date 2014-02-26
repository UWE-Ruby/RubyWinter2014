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
      PLAYERS[@whose_turn]   => s,
      PLAYERS[@whose_turn^1] => SYMBOLS[(SYMBOLS.index s)^1]
    }
  end

  def player= name
    @player = @name[:player] = name
  end

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

  private

  def toggle_current_player
    self.whose_turn = self.whose_turn^1
  end

  def zor1
    rand(0..1)
  end

end
