require "color_text"

class Tic

  def initialize
    #map of all places that are possible wins
    @columns = [      
      [:a1,:a2,:a3],
      [:b1,:b2,:b3],
      [:c1,:c2,:c3],
      
      [:a1,:b1,:c1],
      [:a2,:b2,:c2],
      [:a3,:b3,:c3],
      
      [:a1,:b2,:c3],
      [:c1,:b2,:a3]
    ]
    
    @cpu = rand() > 0.5 ? 'X' : 'O'
    @user = @cpu == 'X' ? 'O' : 'X'
    
    @cpu_name = "Ruby"
    put_line
    puts "\n  RUBY TIC TAC TOE".purple
    print "\n What is your name? ".neon
    STDOUT.flush
    @user_name = gets.chomp
    put_bar

    @user_score = 0
    @cpu_score = 0
    
    start_game(@user == 'X')
  end

  def start_game(user_goes_first)
    #the tic tac toe slots
    @places = {
      a1:" ",a2:" ",a3:" ",
      b1:" ",b2:" ",b3:" ",
      c1:" ",c2:" ",c3:" "
    }

    if user_goes_first
      user_turn
    else
      cpu_turn
    end
  end

  def restart_game(user_goes_first)
    (1...20).each { |i| put_line }
    start_game(user_goes_first)
  end
  
  def put_line
    puts ("-" * 80).gray
  end
  
  def put_bar
    puts ("#" * 80).gray
    puts ("#" * 80).gray
  end
  
  def draw_game
    puts ""
    puts " Wins: #{@cpu_name}:#{@cpu_score} #{@user_name}:#{@user_score}".gray
    puts ""
    puts " #{@cpu_name}: #{@cpu.green}"
    puts " #{@user_name}: #{@user.green}"
    puts ""
    puts "     a   b   c".gray
    puts ""
    puts " 1   #{@places[:a1].green} | #{@places[:b1].green} | #{@places[:c1].green} ".gray
    puts "    --- --- ---"
    puts " 2   #{@places[:a2].green} | #{@places[:b2].green} | #{@places[:c2].green} ".gray
    puts "    --- --- ---"
    puts " 3   #{@places[:a3].green} | #{@places[:b3].green} | #{@places[:c3].green} ".gray
  end
  
  def cpu_turn
    move = cpu_find_move
    @places[move] = @cpu
    put_line
    puts " #{@cpu_name} marks #{move.to_s.upcase.green}".neon
    check_game(@user)
  end
  
  def cpu_find_move

    # see if cpu can win
    #see if any columns already have 2 (cpu)
    @columns.each do |column|
      if times_in_column(column, @cpu) == 2
        return empty_in_column column
      end
    end
    
    # see if user can win
    #see if any columns already have 2 (user)
    @columns.each do |column|
      if times_in_column(column, @user) == 2
        return empty_in_column column
      end
    end
    
    #see if any columns aready have 1 (cpu)
    @columns.each do |column|
      if times_in_column(column, @cpu) == 1
        return empty_in_column column
      end
    end
    
    #no strategic spot found so just find a random empty
    k = @places.keys;
    i = rand(k.length)
    if @places[k[i]] == " "
      return k[i]
    else
      #random selection is taken so just find the first empty slot
      @places.each { |k,v| return k if v == " " }
    end
  end
  
  def times_in_column arr, item
    times = 0
    arr.each do |i| 
      times += 1 if @places[i] == item
      unless @places[i] == item || @places[i] == " "
        #oppisite piece is in column so column cannot be used for win.
        #therefore, the strategic thing to do is choose a dif column so return 0.
        return 0
      end
    end
    times
  end
  
  def empty_in_column arr
    arr.each do |i| 
      if @places[i] == " "
        return i
      end
    end
  end
  
  def user_turn
    put_line
    puts "\n  RUBY TIC TAC TOE".purple
    draw_game
    print "\n #{@user_name}, please make a move or type 'exit' to quit: ".neon
    STDOUT.flush
    input = gets.chomp.downcase.to_sym
    put_bar
    if input.length == 2
      a = input.to_s.split("")
      if(['a','b','c'].include? a[0])
        if(['1','2','3'].include? a[1])
          if @places[input] == " "
            @places[input] = @user
            put_line
            puts " #{@user_name} marks #{input.to_s.upcase.green}".neon
            check_game(@cpu)
          else
            wrong_move
          end
        else
          wrong_input
        end
      else
        wrong_input
      end
    else
      wrong_input unless input == :exit
    end
  end
  
  def wrong_input
    put_line
    puts " Please specify a move with the format 'A1' , 'B3' , 'C2' etc.".red
    user_turn
  end
  
  def wrong_move
    put_line
    puts " You must choose an empty slot".red
    user_turn
  end
  
  def moves_left
    @places.values.select{ |v| v == " " }.length
  end
  
  def check_game(next_turn)
  
    game_over = nil
    
    @columns.each do |column|
      # see if cpu has won
      if times_in_column(column, @cpu) == 3
        put_line
        draw_game
        put_line
        puts ""
        puts " Game Over -- #{@cpu_name} WINS!!!\n".blue
        game_over = true
        @cpu_score += 1
        ask_to_play_again(false)
      end
      # see if user has won
      if times_in_column(column, @user) == 3
        put_line
        draw_game
        put_line
        puts ""
        puts " Game Over -- #{@user_name} WINS!!!\n".blue
        game_over = true
        @user_score += 1
        ask_to_play_again(true)
      end
    end
    
    unless game_over
      if(moves_left > 0)
        if(next_turn == @user)
          user_turn
        else
          cpu_turn
        end
      else
        put_line
        draw_game
        put_line
        puts ""
        puts " Game Over -- DRAW!\n".blue
        ask_to_play_again(rand() > 0.5)
      end
    end
  end

  def ask_to_play_again(user_goes_first)
    print " Play again? (Yn): "
    STDOUT.flush
    response = gets.chomp.downcase
    case response
    when "y"   then restart_game(user_goes_first)
    when "yes" then restart_game(user_goes_first)
    when "n"   then #do nothing
    when "no"  then #do nothing
    else ask_to_play_again(user_goes_first)
    end
  end
  
end