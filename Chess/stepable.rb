require_relative "board"

module Stepable

  def blocked? 
    return true if current_player.color == Board.[](end_pos).color 
    false 
  end

  def unblocked_moves
    unblocked_moves_arr = []
    inbounds_moves.each do |move|
      if !blocked?(move)
        unblocked_moves_arr << move  
      end
    end
    
    unblocked_moves_arr
  end
end