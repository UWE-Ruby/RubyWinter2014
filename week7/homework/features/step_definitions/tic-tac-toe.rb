class TicTacToe

    attr_accessor :player, :player_symbol, :computer_symbol

    SYMBOLS = [:X, :O]


    def initialize(starting_player=nil)
        @current_player = starting_player || [:player, :computer].sample
        random_assign_symbols
    end

    def welcome_player
        "Welcome #{@player}"
    end

    def current_player
        {:player => @player, :computer => "Computer"}[@current_player]
    end

    def indicate_player_turn
        "#{@current_player}'s move"
    end

    def get_player_move
        move = gets
    end

    private
    def random_assign_symbols
        symbols = SYMBOLS.shuffle # mix it up
        @player_symbol = symbols.pop
        @computer_symbol = symbols.pop
    end
end
