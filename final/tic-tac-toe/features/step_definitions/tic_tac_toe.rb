class TicTacToe
  attr_accessor :player, :computer, :current_player, :player_symbol, :computer_symbol, :wins, :places
  SYMBOLS = [:X, :O]

  def initialize(first_player = nil, player_symbol = nil, *args)
    #puts args.inspect
    #puts first_player
    @first_player = first_player
    @computer = "Computer"
    @current_player = current_player
    if player_symbol == nil
      @player_symbol = SYMBOLS.reject { |s| s == @computer_symbol }.sample
      @computer_symbol = SYMBOLS.reject { |s| s == @player_symbol }.sample
    else
      @player_symbol = player_symbol
      @computer_symbol = SYMBOLS.reject { |s| s == @player_symbol }.sample
    end
    @player_wins = false
    @computer_wins = false
    initialize_game
    # draw_game
  end

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    return @player if @first_player == :player
    return @computer if @first_player == :computer
    return [@player, @computer].sample if @first_player == nil
  end

  def initialize_game
    @places = {}
    @wins = []
    (1..3).each do |n|
      ('A'..'C').each do |s|
        @places[:"#{s}#{n}"] = ' '
      end
    end
    (1..3).each do |n|
      @wins.push(@places.keys.select { |k| /#{n}/.match(k) })
    end
    ('A'..'C').each do |s|
      @wins.push(@places.keys.select { |k| /#{s}/.match(k) })
    end
    @wins.push([@places.keys[0], @places.keys[4], @places.keys[8]])
    @wins.push([@places.keys[2], @places.keys[4], @places.keys[6]])
  end

  def draw_game
    puts "   A   B   C"
    (1..3).each do |n|
      row = @places.select { |k,v| /#{n}/.match(k) }
      puts "#{n}  #{row.values.join(' | ')}"
      puts '  --- --- ---' if n < 3
    end
  end

  def indicate_player_turn
    puts "#{@player}'s Move:"
    get_player_move
  end

  def indicate_bad_move
    puts "Try again #{@player}"
    get_player_move
  end

  def get_player_move
    move = gets.chomp
    return move
  end

  def player_move
    move = get_player_move.to_sym
    @places[move] = @player_symbol
    @current_player = @computer
    move
  end

  def computer_move
    move = open_spots.keys.sample
    @places[move] = @computer_symbol
    return move
  end

  def open_spots
    @places.select { |k, v| v == ' ' }
  end

  def current_state
    @places.flatten
  end

  def determine_winner
    @wins.each do |s = s[]|
      player_count = 0
      computer_count = 0
      s.each do |k|
        player_count +=1 if @places[k] == @player_symbol
        computer_count +=1 if @places[k] == @computer_symbol
        @player_wins = true if player_count == 3
        @computer_wins = true if computer_count == 3
      end
    end
  end

  def player_won?
    @player_wins
  end

  def computer_won?
    @computer_wins
  end

  def spots_open?
    r = 0
    @places.inject(0) { |r, v| r +=1 if v == ' ' }
    r > 0
  end

  def draw?
    !spots_open? && !player_won? && !computer_won?
  end

  def over?
    !spots_open? || player_won? || computer_won?
  end

  private

  # def player_symbol
  #   :O
  # end

  # def computer_symbol
  #   :X
  # end

  # def move
  #   if @player == "Renee"
  #     @won = true
  #   else
  #     @won = false
  #   end
  # end

  # def won?
  #   @won
  # end

end
