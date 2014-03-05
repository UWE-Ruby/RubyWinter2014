class TicTacToe

    attr_accessor :player, :player_symbol, :computer_symbol, :players, :current_player, :board, :open

    SYMBOLS = [:X, :O]
    PAIRS = {:X => :O, :O => :X}
    BOARD = {"A1" => nil, "A2" => nil, "A3" => nil,
        "B1" => nil, "B2" => nil, "B3" => nil,
        "C1" => nil, "C2" => nil, "C3" => nil}


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
    end

    def welcome_player
        "Welcome #{@player}"
    end

    def indicate_player_turn
        "#{@current_player}'s move"
    end

    def get_player_move move=gets
        move = gets
        if @board[move].nil?
            @board[move] = get_current_player_symbol
        end
    end

    def open_spots
        @open = []
        @board.each do |spot|
            if @board[spot].nil?
                @open << spot
            end
        end
        @open
    end

    def computer_move
        move = @open.sample
        @board[move] = get_current_player_symbol
        @open
    end

    private

    def get_current_player_symbol
        if @current_player == "Computer"
            @computer_symbol
        else
            @player_symbol
        end
    end

    def random_assign_symbols
        symbols = SYMBOLS.shuffle # mix it up
        @player_symbol = symbols[0]
        @computer_symbol = symbols[1]
    end
end
