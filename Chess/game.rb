require_relative "display" 
require_relative "player"

class Game
  
    attr_reader :current_player
end
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
        if @current_player == @player_1
          @current_player = player_2
        elsif @current_player == @player_2
          @current_player = player_1
        end
    end
end

# class display
    
#     @board = board
#     @cursor 