class TicTacToe
    
    attr_accessor :player
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
    end

    def current_player
        @players = {:player => @player, :computer => "Computer"}
        @players[@current_player]
    end

    def welcome_player
        "Welcome #{@player}"
    end

end
