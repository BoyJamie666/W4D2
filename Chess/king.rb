require_relative "stepable"
require_relative "piece"
require_relative "border"


class King < Piece 
  include Stepable  
  include Border 

  attr_reader :possible_moves 
  

  def initialize 
    @possible_moves = [
      [pos[0] - 1, pos[1]],
      [pos[0] - 1, pos[1] - 1],
      [pos[0] - 1, pos[1] + 1],
      [pos[0], pos[1] - 1],
      [pos[0], pos[1] + 1],
      [pos[0] + 1, pos[1]],
      [pos[0] + 1, pos[1] + 1],
      [pos[0] + 1, pos[1] - 1],
    ]
    super(color, board, pos)

    self.inbounds_moves
  end
end