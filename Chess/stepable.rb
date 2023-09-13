require_relative "board"
require_relative "game"
require_relative "player"
module Stepable


  def blocked?(end_pos)
    return true if @current_player.color == Board(end_pos).color 
    false 
  end

  def unblocked_moves
    unblocked_moves_arr = []
    @possible_moves.each do |move|
      if !blocked?(move)
        unblocked_moves_arr << move  
      end
    end
    
    unblocked_moves_arr
  end
end