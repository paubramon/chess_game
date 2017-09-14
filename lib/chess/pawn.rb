class Pawn < Piece
  Possible_moves = [[1,1],[0,1],[-1,1],[0,2]]
  def initialize(x,y,color)
    if color == :white
      unicode_symbol = "\u{2659}"
    else
      unicode_symbol = "\u{265F}"
    end
    @moved = false
    super(x,y,color,:pawn,unicode_symbol,"pawn")
  end

  #this method checks if the given position is reachable by the piece or not
  def next_move_correct?(ary)
    movement_correct = false
    Possible_moves.each{|move|
      if (@current_position[0]-move[0]) == ary[0] && (@current_position[1]-move[1]) == ary[1]
        movement_correct = true
        break
      end
    }
    movement_correct
  end
end
