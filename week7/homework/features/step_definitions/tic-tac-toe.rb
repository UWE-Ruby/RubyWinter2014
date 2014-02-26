class TicTacToe
  SYMBOLS = [:X, :O]
  PLAYERS = [:player, :computer]
  attr_reader :player
  attr_accessor :player_symbol, :computer_symbol, :players, :whose_turn

  def initialize starts=PLAYERS[zor1], s=SYMBOLS[zor1]
    @name    = {:player => 'Player', :computer => 'Computer'} 
    #@symbol_index = SYMBOLS.index s
    @whose_turn = PLAYERS.index starts
  end

  def player= name
    @player = @name[:player] = name
  end

  def player_symbol
    :X
  end

  def computer_symbol
    :O
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
