class board
    def initialize
        @rows = Array.new(8){Array.new(8, nil)}
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

    def move_piece(color, start_pos, end_pos)
        if [](start_pos) == nil 
            raise "Your starting position must contain a piece"
        end
        if [](end_pos) != nil && #!= enemy color
            raise "Your ending position is occupied by an allied piece already"
        end
        if (end_pos[0] < 0 || end_pos[0] > 8) || (end_pos[1] < 0 || end_pos[1] > 8)
            raise "Your ending position is not on the grid."
        end
        []=(end_pos, [](start(pos))
        []=(start_pos, nil)
    end
end