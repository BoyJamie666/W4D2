module Border

  def out_of_bounds?(end_pos)
   if (end_pos[0] < 0 || end_pos[0] > 8) || (end_pos[1] < 0 || end_pos[1] > 8)
      raise "Your ending position is not on the grid."
    end
  end
  
end