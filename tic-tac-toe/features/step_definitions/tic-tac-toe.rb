class TicTacToe 

  attr_accessor :player
  attr_accessor :current_player_var
  @current_player_var = ""
  

  SYMBOLS = ["X", "O"]

  def player= name
  	@name = name
    @move_count = 0
    @cell_status = {
      "A1" => false,
      "A2" => false,
      "A3" => false,
      "B1" => false,
      "B2" => false,
      "B3" => false,
      "C1" => false,
      "C2" => false,
      "C3" => false,
    }
    @cell_owner = {
      "A1" => nil,
      "A2" => nil,
      "A3" => nil,
      "B1" => nil,
      "B2" => nil,
      "B3" => nil,
      "C1" => nil,
      "C2" => nil,
      "C3" => nil,
    }
  end

  def welcome_player 
  	choose_marker
  	"Welcome #{@name}! You are #{@player_symbol} and compy is #{@computer_symbol}"
  end

  def choose_marker
  	  @player_symbol = SYMBOLS.sample
  	if @player_symbol == "X" 
  		@computer_symbol = "O"
  	else
  		@computer_symbol = "X"
  	end
    puts @player_symbol
    puts @computer_symbol
  end

  def player_symbol
    @player_symbol
  end

    def computer_symbol
    @computer_symbol
  end

  def current_player
  	if @current_player_var == "Computer"
      puts "Computer goes."
      computer_move
  		@current_player_var = @name
  	elsif @current_player_var == @name
      player_move
  		@current_player_var = "Computer"
  	else
  		 @current_player_var = [@name, "Computer"].sample
  	end
    draw_board
  end

  def draw_board
    draw_line = "-----------"
    drawA1 = @cell_status["A1"] ? " #{@cell_owner["A1"]} |" : "   |"
    drawA2 = @cell_status["A2"] ? " #{@cell_owner["A2"]} " : "   "
    drawA3 = @cell_status["A3"] ? "| #{@cell_owner["A3"]}" : "|"
    puts "#{drawA1}#{drawA2}#{drawA3}"
    puts draw_line
    drawB1 = @cell_status["B1"] ? " #{@cell_owner["B1"]} |" : "   |"
    drawB2 = @cell_status["B2"] ? " #{@cell_owner["B2"]} " : "   "
    drawB3 = @cell_status["B3"] ? "| #{@cell_owner["B3"]}" : "|"
    puts "#{drawB1}#{drawB2}#{drawB3}"
    puts draw_line
    drawC1 = @cell_status["C1"] ? " #{@cell_owner["C1"]} |" : "   |"
    drawC2 = @cell_status["C2"] ? " #{@cell_owner["C2"]} " : "   "
    drawC3 = @cell_status["C3"] ? "| #{@cell_owner["C3"]}" : "|"
    puts "#{drawC1}#{drawC2}#{drawC3}"
    puts "\n======================= NEXT TURN ==========================="
    player_won?
  end

  def over?
  	if player_won? or computer_won?
      true
    else
      false
    end
  end

  def player_won?
    if @cell_owner["A1"] == @player_marker
      puts @cell_owner["A1"]
      true
    end
  end

  def computer_won?
  end

  def draw?
  	true
  end

  def player_move
    indicate_player_turn
  end

  def indicate_player_turn
    proper_move = false
    print "#{@name}'s move: "
    while proper_move == false
      input = gets.chomp
      if input !~ /[A-C][1-3]/ 
        print "Enter A, B, or C for the row and 1, 2, or 3 for the column: " 
      elsif @cell_status[input] == true
        print "Cell taken, please re-enter: "
      else
        proper_move = true
      end
    end
    @cell_status[input] = true
    @cell_owner[input] = @player_symbol

    p @cell_status
    p @cell_owner
  end

  def computer_move
  end

  def current_state
  end

  def determine_winner
  end

 end