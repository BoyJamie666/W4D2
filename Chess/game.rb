class Game
    def initialize
        @board = board
        @display: display
        @player_1 = Player.new(:w)
        @player_2 = Player.new(:b)
        @current_player = @player_1
    end

    def play
    end

    private
    def notify_players
    end

    def swap_turn!
    end
end

class display
    
    @board = board
    @cursor