module Slideable
   
   HORIZONTAL_DIRS = [
  [:dx, :dy],
  [:dx, :dy],
  [:dx, :dy],
  [:dx, :dy]
 ].freeze

 DIAGONAL_DIRS = [
  [:dx, :dy],
  [:dx, :dy],
  [:dx, :dy],
  [:dx, :dy]
 ].freeze

 def horizontal_dirs
 end

 def diagonal_dirs
 end

 def moves
  holder = []

  # iterate over each of the directions in which a slideable piece can move
    # use the pice's subclass
 end

private

 def move_dirs
  raise NotImplementedError
 end

 def grow_unblocked_moves_in_dir(dx, dy)
  
 end
end
  
 
