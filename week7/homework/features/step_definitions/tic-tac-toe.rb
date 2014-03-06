class TicTacToe

    attr_accessor :player, :player_symbol, :computer_symbol, :board, :winner
    SYMBOLS = [:X, :O]

    def initialize(current_player=nil, human_player_symbol=nil)
        @current_player = current_player || [:player, :computer].sample
        if human_player_symbol == :X
            @player_symbol = :X
            @computer_symbol = :O
        elsif human_player_symbol == :O
            @player_symbol = :O
            @computer_symbol = :X
        else
            random_sym = SYMBOLS.shuffle
            @player_symbol = random_sym[0]
            @computer_symbol = random_sym[1]
        end
        @board = {
            :A1 => ' ', :A2 => ' ', :A3 => ' ',
            :B1 => ' ', :B2 => ' ', :B3 => ' ',
            :C1 => ' ', :C2 => ' ', :C3 => ' '
        }
        @winner = nil
    end

    def current_player
        @players = {:player => player, :computer => "Computer"}
        @players[@current_player]
    end

    def welcome_player
        "Welcome #{@player}"
    end

    def indicate_player_turn
        puts "#{current_player}'s Move:"
    end

    def open_spots
        @open_spots = @board.select{|k, v| v == " "}.keys
    end

    def get_player_move
        move = gets.chomp
        move.capitalize!
        move
    end

    def player_move
        until open_spots.include?(move = get_player_move.to_sym)
            indicate_player_turn
        end
        @board[move] = @player_symbol
        @current_player = :computer
        move
    end

    def computer_move
        move = open_spots.sample
        indicate_player_turn
        @board[move] = @computer_symbol
        @current_player = :player
        move
    end

    def current_state
        state = ""
        @board.values.map { |value| value.to_s }.each_slice(3) { |row|
            state << "\n#{row.to_s.gsub!(',', '|')}\n"
        }
        state
    end

    def determine_winner
        # get each player's moves
        winning_matches = {1 => [:A1, :A2, :A3], 2 => [:B1, :B2, :B3], 3 => [:C1, :C2, :C3], 4 => [:A1, :B1, :C1], 
            5 => [:A2, :B2, :C2], 6 => [:A3, :B3, :C3], 7 => [:A1, :B2, :C3], 8 => [:A3, :B2, :C1]}

        winning_matches.each do |match, v|

            if @board[v[0]] == @board[v[1]] && @board[v[0]] == @board[v[3]]
                #its a match! now get the winning symbol
                p @board[v[0]]
                if @board[v[0]] == @player_symbol
                    @winner = :player
                elsif @board[v[0]] == @computer_symbol
                    @winnder = :computer
                else
                    draw?
                end
            end
            over?
        end
    end

    def player_won?
        if @winner == :player
            true
        else
            false
        end
    end

    def computer_won?
        if @winner == :computer
            true
        else
            false
        end
    end

    def draw?
        if !computer_won? && !player_won? && !spots_open?
            true
        end
        
    end

    def spots_open?
        open_spots.any?
    end

    def over?
        #game is over if draw?, computer_won? or player_won? is true
        if draw? || computer_won? || player_won?
            true
        else
            false
        end
    end

end
