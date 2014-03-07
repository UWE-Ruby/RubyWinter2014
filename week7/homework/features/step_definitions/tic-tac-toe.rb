class TicTacToe

    attr_accessor :player, :player_symbol, :computer_symbol, :board, :winner
    SYMBOLS = [:X, :O]

    def initialize(current_player=nil, human_player_symbol=nil)
        @current_player = current_player || [:player, :computer].sample
        if human_player_symbol == nil
            random_assign_sym
        else
            assign_sym human_player_symbol
        end
        @winner = nil
        @wins = {1 => [:A1, :A2, :A3], 2 => [:B1, :B2, :B3], 3 => [:C1, :C2, :C3], 
            4 => [:A1, :B1, :C1], 5 => [:A2, :B2, :C2], 6 => [:A3, :B3, :C3], 
            7 => [:A1, :B2, :C3], 8 => [:A3, :B2, :C1]
        }

        @board = {:A1 => ' ', :A2 => ' ', :A3 => ' ', 
            :B1 => ' ', :B2 => ' ', :B3 => ' ', 
            :C1 => ' ', :C2 => ' ', :C3 => ' '
        }
    end

    def random_assign_sym
        random_sym = SYMBOLS.shuffle
        @player_symbol = random_sym[0]
        @computer_symbol = random_sym[1]
    end

    def assign_sym human_player_symbol
        if human_player_symbol == :X
            @player_symbol = :X
            @computer_symbol = :O
        elsif human_player_symbol == :O
            @player_symbol = :O
            @computer_symbol = :X
        end
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
        @board.select{|k, v| v == " "}.keys
    end

    def get_player_move
        move = (gets.chomp)
        move.capitalize!
        move
    end

    def player_move
        until open_spots.include?(move = get_player_move.to_sym)
            "\n#{indicate_player_turn}"
        end
        @board[move] = @player_symbol
        @current_player = :computer
        move
    end

    def computer_move
        move = open_spots.sample
        "\n#{indicate_player_turn}"
        @board[move] = @computer_symbol
        @current_player = :player
        p move
    end

    def current_state
        state = "\n"
        @board.values.map { |value| value.to_s }.each_slice(3) { |row|
            state << "\n#{row.to_s.gsub!(',', '|')}\n"
        }
        state << "\n"
    end

    def determine_winner
        @wins.each do |match, v|
            first = (@board[v[0]].to_s).to_sym unless nil? 
            second = (@board[v[1]].to_s).to_sym unless nil?
            third = (@board[v[2]].to_s).to_sym unless nil?

            if first == second && second == third
                #its a match! now get the winning symbol
                if first == @player_symbol
                    @winner = :player
                elsif first == @computer_symbol
                    @winnder = :computer
                else
                    draw?
                end
            end
            over?
        end
    end

    def player_won?
        true if @winner == :player
    end

    def computer_won?
        true if @winner == :computer
    end

    def draw?
        true if !computer_won? && !player_won? && !spots_open?
    end

    def spots_open?
        spots = (open_spots).any?
    end

    def over?
        true if draw? || computer_won? || player_won?
    end

end
