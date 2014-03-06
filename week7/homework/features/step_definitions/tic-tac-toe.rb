class TicTacToe

    attr_accessor :player, :player_symbol, :computer_symbol, :winner, :board
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
            :C1 => ' ', :C2 => ' ', :C3 => ' '}
        @winner = nil
    end

    def current_player
        @players = {:player => @player, :computer => "Computer"}
        @players[@current_player]
    end

    def welcome_player
        "Welcome #{@player}"
    end

    def indicate_player_turn
        puts "#{player}'s Move:"
    end

    def open_spots
        @open_spots = @board.select{|k, v| v == " "}.keys
    end

    def get_player_move
        gets.chomp
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
        @board[move] = @computer_symbol
        @current_player = :player
        move
    end

    def over?
        #game is NOT over if @winner.nil and there are spots open
        #game is over if draw?, computer_won? or player_won? is true
    end

end
