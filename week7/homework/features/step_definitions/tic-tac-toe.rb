class TicTacToe

    attr_accessor :player, :comp, :current_player, :player_symbol, :computer_symbol

    SYMBOLS = [:X, :O]


    def initialize
        @player = player
        @comp = "Computer"
        @current_player = [@player, @comp].sample
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
