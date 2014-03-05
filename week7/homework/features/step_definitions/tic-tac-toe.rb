class TicTacToe

    attr_accessor :player, :player_symbol, :computer_symbol, :players, :current_player, :board
    
    SYMBOLS = [:X, :O]
    PAIRS = {:X => :O, :O => :X}
    BOARD = {:A1 => " ", :A2 => " ", :A3 => " ", 
        :B1 => " ", :B2 => " ", :B3 => " ", 
        :C1 => " ", :C2 => " ", :C3 => " "}
    
    WINNING_MOVES= {1 => [:A1,:A2,:A3], 2 => [:B1,:B2,:B3], 3 => [:C1,:C2,:C3], 
    4 => [:A1,:B1,:C1], 5 =>[:A2,:B2,:C2], 6 => [:A3,:B3,:C3], 7 =>[:C1, :B2, :A3],
    8 =>[:A1,:B2,:C3]}



    def initialize(starting_player=nil, starting_symbol=nil)
        @players = {:player => "Renee", :computer => "Computer"}
        @current_player = @players[starting_player] || @players.values.sample

        if starting_symbol.nil?
            random_assign_symbols
        else
            @computer_symbol = PAIRS[starting_symbol]
            @player_symbol = starting_symbol
        end
        @board = BOARD
        @winning_moves = WINNING_MOVES
    end

    def welcome_player
        "Welcome #{@player}"
    end

    def indicate_player_turn
        "#{@current_player}'s move"
    end

    def get_player_move move=gets
        move = gets
    end

    def open_spots
        @board.select{|k,v| v==" "}.map{|k,v| k} 
    end

    def computer_move
        move = open_spots.sample
        @board[move] = @computer_symbol
        @current_player = @players[@player]
        move
    end

    def player_move
        move = get_player_move.to_sym
        if @board[move] != " "
            move = get_player_move.to_sym
        end
        @board[move] = get_current_player_symbol
        move.to_sym
    end

    def determine_winner
        player_moves = collect_moves @player_symbol
        comp_moves = collect_moves @computer_symbol
        
        @winning_moves.each do |key, value|
            if value.include?(player_moves)
                player_won?
                over?
            elsif value.include?(comp_moves)
                computer_won?
                over?
            else
                draw?
            end
        end
        end
    def player_won?
        true
        over?
    end

    def computer_won?
        true
        over?
    end

    def over?
        true
    end

    def draw?
        true
    end
    
    def spots_open?
        open_spots.any?
    end
    
    def current_state
        state = ""
        @board.each do |value|
            state << "|#{value}|"
        end
        state
    end

    def get_current_player_symbol
        if @current_player == "Computer"
            @computer_symbol
        else
            @player_symbol
        end
    end

    private

    def collect_moves player_sym
        @board.select{|k,v| v==player_sym}.keys
    end

    def random_assign_symbols
        symbols = SYMBOLS.shuffle # mix it up
        @player_symbol = symbols[0]
        @computer_symbol = symbols[1]
    end
end
