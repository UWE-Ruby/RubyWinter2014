class TicTacToe
  SYMBOLS = [@player_symbol, @computer_symbol]
  attr_reader :player
  attr_accessor :player_symbol, :computer_symbol, :players, :player_index

  def initialize name=nil
    @player = name
    @players = ['Computer', @player]
    @player_index = rand(0..1)
  end

  def player= name
    @player = name
  end

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    self.players[self.player_index]
  end

  private
  def toggle_current_player
    self.player_index = self.player_index^1
  end

end
