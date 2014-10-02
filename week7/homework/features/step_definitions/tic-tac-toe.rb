class TicTacToe
	attr_accessor :board, :player, :player_symbol, :computer_symbol
  SYMBOLS = [:O, :X]

	def initialize(current_player=nil, user_symbol=nil)
        
    unless current_player
      @current_player = [:player, :computer].sample
    else
      @current_player = current_player
    end

    unless user_symbol
      random_symbol
    else
      @user_symbol = user_symbol
      if @user_symbol == :X
        @player_symbol = @user_symbol
        @computer_symbol = :O
      else
        @player_symbol = @user_symbol
        @computer_symbol = :X
      end
    end

		@board = { A1: ' ', A2: ' ', A3: ' ', 
		B1: ' ', B2: ' ', B3: ' ',
		C1: ' ', C2: ' ', C3: ' '  }

    @winner = nil

    @win_rows = {one: [:A1, :A2, :A3], two: [:B1, :B2, :B3], three: [:C1, :C2, :C3], 
      four: [:A1, :B1, :C1], five: [:A2, :B2, :C2], six: [:A3, :B3, :C3], 
      seven: [:A1, :B2, :C3], eight: [:A3, :B2, :C1]
    }

	end

  def determine_winner
    @xarray = []
    @oarray = []

    @board.each do |key, value| 
      @xarray << key if value == :X
      @oarray << key if value == :O
    end

    @win_rows.each do |win, spots|
      if spots == spots & @xarray
        if :X == @player_symbol
          @winner = @player
        else
          @winner = "Computer"
        end
      elsif spots == spots & @oarray
        if :O == @player_symbol
          @winner = @player
        else
          @winner = "Computer"
        end
      else
          draw?
      end
    end
  end



  def open_spots
    @open = []
    @board.each { |key, value| @open << key if value == ' '}
    @open
  end

  def computer_move
    indicate_player_turn
    @computer_move = @open.sample
    @board[@computer_move] = @computer_symbol
    @current_player = :player
    @computer_move
  end

  def random_start
    [:player, :computer].sample
  end

  def current_state
    @current_game = ""
    @game = @board.values.map { |value| value }
    @game.each_slice(3) { |x| @current_game << "#{x.join("|")}\n_____\n" }
    @current_game
  end

  def indicate_player_turn
    puts "#{current_player}'s Move:"
  end

  def get_player_move
    @pmove = gets.chomp
    @pmove = @pmove.capitalize
    @pmove
  end

  def player_move
    @move = get_player_move.to_sym
    if open_spots.include?(@move)
      @board[@move] = @player_symbol
    else
      spot_taken
      player_move
    end
    @current_player = :computer
    @move
  end


  def random_symbol
    @player_symbol = SYMBOLS.sample
    if @player_symbol == :X 
      @computer_symbol = :O
    else
      @computer_symbol = :X
    end
  end

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    @players = {player: @player, computer: "Computer"}
    @players[@current_player]
  end

  def spot_taken
    puts "Try again, that spot is taken #{current_player}"
  end

  def player_won?
    if @winner == @player
      true
    end
  end

  def computer_won?
    if @winner == "Computer"
      true
    end

  end
  
  def spots_open?
    !open_spots.empty?
  end
  
  def draw?
    if !computer_won? && !player_won? && !spots_open?
      true
    end
  end

  def over?
    if draw? || computer_won? || player_won?
      true
    end
  end

  
end
