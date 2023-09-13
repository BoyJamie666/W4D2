require_relative 'Pieces/pawn'
require_relative 'Pieces/rook'
require_relative 'Pieces/knight'
require_relative 'Pieces/bishop'
require_relative 'Pieces/queen'
require_relative 'Pieces/king'

class Board
    def initialize
        @rows = Array.new(8){Array.new(8, nil)}
        self.populate
    end

    def [](pos)
        @rows[pos[0]][pos[1]]
        # @rows.each.with_index do |row, i|
        #     if i == pos[0]
        #     row.each_with_index do |ele, j|
        #         if pos[1] == js
        #             return ele
        #         end
        #     end
        # end
    end

    def []=(pos, val)
        @rows[pos[0]][pos[1]] = val
    end

    def populate
        (0..7).each do |i|
            self.[]=([1, i], Pawn.new(:w, self, [1, i]))
            self.[]=([6, i], Pawn.new(:b, self, [6, i]))  
        end

        self.[]=([0,0], Rook.new(:w, self, [0,0]))
        self.[]=([0,1], Knight.new(:w, self, [0,1]))
        self.[]=([0,2], Bishop.new(:w, self, [0,2]))
        self.[]=([0,3], King.new(:w, self, [0,3]))
        self.[]=([0,4], Queen.new(:w, self, [0,4]))
        self.[]=([0,5], Bishop.new(:w, self, [0,5]))
        self.[]=([0,6], Knight.new(:w, self, [0,6]))
        self.[]=([0,7], Rook.new(:w, self, [0,7]))
        self.[]=([7,0], Rook.new(:b, self, [7,0]))
        self.[]=([7,1], Knight.new(:b, self, [7,1]))
        self.[]=([7,2], Bishop.new(:b, self, [7,2]))
        self.[]=([7,3], King.new(:b, self, [7,3]))
        self.[]=([7,4], Queen.new(:b, self, [7,4]))
        self.[]=([7,5], Bishop.new(:b, self, [7,5]))
        self.[]=([7,6], Knight.new(:b, self, [7,6]))
        self.[]=([7,7], Rook.new(:b, self, [7,7]))
    end
      

    def move_piece(color, start_pos, end_pos)
        # if [](start_pos) == nil  #|| [](start_pos) == enemy color
        #     raise "Your starting position must contain an allied piece."
        # end
        # if [](end_pos) != nil #&& [](end_pos) != enemy color
        #     raise "Your ending position is occupied by an allied piece already"
        # end
        # if (end_pos[0] < 0 || end_pos[0] > 8) || (end_pos[1] < 0 || end_pos[1] > 8)
        #     raise "Your ending position is not on the grid."
        # end
        # []=end_pos, [](start(pos))
        # []=(start_pos, nil)
    end
end