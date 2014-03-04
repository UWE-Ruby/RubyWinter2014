class TicTacToe

    attr_accessor :player, :comp, :current_player, :player_symbol, :computer_symbol

    SYMBOLS = [:X, :O]


    def initialize(starting_player=(starting_player_set = true; nil))
        @player = player
        @comp = "Computer"
        if starting_player_set
            @current_player = starting_player
        else
            @current_player = [@player, @comp].sample
        end
        random_assign_symbols
    end

    def welcome_player
        "Welcome #{@player}"
    end

    private
    def random_assign_symbols
        symbols = SYMBOLS.shuffle # mix it up
        @player_symbol = symbols.pop
        @computer_symbol = symbols.pop
    end
end
