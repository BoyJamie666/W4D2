require_relative "display" 
require_relative "player"
require_relative "board"


class Game
  
    attr_reader :current_player

    def initialize
        @board = Board.new 
        @display = display
        @player_1 = Player.new(:w, "display")
        @player_2 = Player.new(:b, "display")
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