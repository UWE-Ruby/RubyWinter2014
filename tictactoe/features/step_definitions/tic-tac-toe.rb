class TicTacToe
  SYMBOLS = [:X, :O]
  PLAYERS = [:player, :computer]
  RED = "\e[31m"
  GREEN = "\e[32m"
  OFF = "\e[0m"
  attr_reader :player, :last_taken
  attr_accessor :player_symbol, :computer_symbol, :players, :whose_turn, :board

  def initialize starts=PLAYERS.sample, s=SYMBOLS.sample
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
    @draw = @game_over = false
  end

  def player= name
    @player = @name[:player] = name
  end

  def open_spots
    board.select{|k, v| v == ' '}.keys
  end

  [:player, :computer].each do |s|

    define_method("#{s}_symbol") do
      instance_variable_get("@symbol")[s]
    end

    define_method("#{s}_won?") do
      ws = instance_variable_get("@winning_symbol")
      ss = instance_variable_get("@symbol")[s]
      ws == ss
    end

  end

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    @name[PLAYERS[@whose_turn]]
  end

  def indicate_player_turn
    puts "#{@player}'s Move:"
  end

  def get_player_move
    move = gets.chomp.upcase
  end

  def player_move
    pos = get_player_move.to_sym
    until self.open_spots.include? pos
      puts "#{pos} is taken, yo. Try again."
      pos = get_player_move.to_sym
    end
    @board[pos] = @symbol[:player]
    @last_taken = pos
    pos
  end

  def computer_move
    puts "My move, yo:"
    pos = open_spots.sample
    @board[pos] = @symbol[:computer]
    @last_taken = pos
    pos
  end

  def current_state
    b = @board.map{|k,v| k == @last_taken ? colorize(v, OFF) : colorize(v)}

    #b = @board.values.map{|v| v.to_s}
    cs = ''
    [0,3,6].each do |row|
      b[row...row+3].each{|cell| cs << cell}
      cs << "\n"
    end
    cs
  end

  def over?
    @game_over
  end

  def spots_open?
    open_spots.length > 0
  end

  def determine_winner

    winning_line = [
      [:A1, :A2, :A3],
      [:B1, :B2, :B3],
      [:C1, :C2, :C3],

      [:A1, :B1, :C1],
      [:A2, :B2, :C2],
      [:A3, :B3, :C3],

      [:A1, :B2, :C3],
      [:A3, :B2, :C1],
    ]
    [player_symbol, computer_symbol].each do |sym|
      owns = @board.select{|k,v| v == sym}.keys
      winning_line.each do |line|
        if (line & owns).length == 3 
          @winning_symbol = sym 
          @game_over = true
        end
      end
    end
    
    @game_over = true unless spots_open?
    toggle_current_player
  end

  def draw?
    !(computer_won? || player_won?)
  end

  private

  def toggle_current_player
    self.whose_turn = self.whose_turn^1
  end

  def colorize cell, color = cell == :X ? RED : GREEN
    "#{color}#{cell.to_s}#{OFF}"
  end

end
