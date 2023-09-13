module Border

  def out_of_bounds?(end_pos)
   return true if (end_pos[0] < 0 || end_pos[0] > 8) || (end_pos[1] < 0 || end_pos[1] > 8)
   false 
  end

  def inbounds_moves
    inbounds_moves_arr = []
    @possible_moves.each do |move|
      if !out_of_bounds?(move)
        inbounds_moves_arr << move  
      end
    end
    
    inbounds_moves_arr
  end
end