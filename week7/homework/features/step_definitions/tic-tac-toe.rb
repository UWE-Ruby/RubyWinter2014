class TicTacToe
  SYMBOLS = [:X, :O]
  attr_reader :player
  attr_accessor :player_symbol, :computer_symbol, :players, :player_index

  def initialize starts=rnd_player, s=rnd_symbol
    @players = [:player, :computer]
    @player_index = @players.index starts
  end

  def player= name
    @player = name
    @players[:player] = name
  end

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    @players[@player_index]
  end

  private

  
  def toggle_current_player
    self.player_index = self.player_index^1
  end

  def rnd_player
    rand(0..1)
  end

  def rnd_symbol
  end

end
