require_relative "stepable"
require_relative "king"

class Piece

    attr_reader :color 

    def initialize(color, board, pos)
        @color =  color
        @board = "board"
        @pos = pos
    end

    def inspect
      @color.to_s 
    end
end

 

 

class NullPiece < Piece

end