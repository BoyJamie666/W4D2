require_relative 'piece'
require_relative 'border'

class Board

    include "border"
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
          self.[]=([0, i], Piece.new(:w, 'board', [0, i]))  
          self.[]=([1, i], Piece.new(:w, 'board', [1, i]))
          self.[]=([6, i], Piece.new(:b, 'board', [6, i]))  
          self.[]=([7, i], Piece.new(:b, 'board', [7, i])) 
      end  
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