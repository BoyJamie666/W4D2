module Stepable

  def valid_moves?
    if current_player.color == Board.[](end_pos).color 
      raise "invalid move, space occupied by another piece"
    elsif current_player.color != Board.[](end_pos).color
      
      true
    end
  end
end