class TicTacToe

    attr_accessor :player, :player_symbol, :computer_symbol, :players, :current_player

    SYMBOLS = [:X, :O]
    PAIRS = [:X => :O, :O => :X]


    def initialize(starting_player=nil, starting_symbol=nil)
        @players = {:player => "Renee", :computer => "Computer"}
        @current_player = @players[starting_player] || @players.values.sample

        if starting_symbol.nil?
            random_assign_symbols
        else
            if @players[starting_player] == "Computer"     
                @computer_symbol = starting_symbol
                @player_symbol = PAIRS[starting_symbol]
            else
                @computer_sumbol = PAIRS[starting_symbol]
                @player_symbol = starting_symbol
            end
        end
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

    private
    def random_assign_symbols
        symbols = SYMBOLS.shuffle # mix it up
        @player_symbol = symbols.pop
        @computer_symbol = symbols.pop
    end
end
