# self.inbounds_moves.unblocked_moves

  # # def legal_moves
  # #   legal_moves_arr = []
  # #   self.inbounds_moves.each do |inbound_move|
  # #     self.unblocked_moves.each do |unblocked_move|
  # #       if inbound_move == unblocked_move
  # #         legal_moves_arr << unblocked_move
  # #       end
  # #     end
  #   end

  #   legal_moves_arr
  #   end
require_relative 'piece'
require_relative 'stepable'

class King < Piece
  include Stepable

  MOVES = [
     [0, 1],
     [0, -1],
     [-1, -1],
     [-1, 0],
     [-1, 1],
     [1, -1],
     [1, 0],
     [-1, 0],
    ]

  def symbol
    '♚'
  end

  protected

  def move_diffs
    # return an array of diffs representing where a King can step to
  end
end