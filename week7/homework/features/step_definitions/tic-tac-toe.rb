class TicTacToe
  SYMBOLS = [:X, :O]
  PLAYERS = [:player, :computer]
  attr_reader :player
  attr_accessor :player_symbol, :computer_symbol, :players, :player_index

  def initialize starts=PLAYERS[zor1], s=SYMBOLS[zor1]
    @name    = {:player => 'Player', :computer => 'Computer'} 
    @symbol_index = SYMBOLS.index s
    @player_index = PLAYERS.index starts
  end

  def player= name
    @player = @name[:player] = name
  end

  def player_symbol
  end

  def computer_symbol
  end

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    @name[PLAYERS[@player_index]]
  end

  private

  def toggle_current_player
    self.player_index = self.player_index^1
  end

  def zor1
    rand(0..1)
  end

end
