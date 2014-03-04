class TicTacToe

    attr_accessor :player, :current_player

    def initialize
        @player = player

        @current_player = [@player, "Computer"].sample
    end

    def welcome_player
        "Welcome #{@player}"
    end
end
