class Bishop < Piece
  def initialize(x,y,color)
    if color == :white
      unicode_symbol = "\u{2657}"
    else
      unicode_symbol = "\u{265D}"
    end
    super(x,y,color,:bishop,unicode_symbol,"bishop")
  end

  #this method checks if the given position is reachable by the piece or not
  def next_move_correct?(ary,attacking = false)
    diff1 = ary[0] - current_position[0]
    diff2 = ary[1] - current_position[1]
    if diff1.abs == diff2.abs
      true
    else
      false
    end
  end

  #this methods returns an array with the positions contained within the path.
  def path_to_next_position(next_position)
    path = []
    diff1 = next_position[0] - current_position[0]
    diff2 = next_position[1] - current_position[1]
    symb_d1 = 0
    symb_d2 = 0
    symb_d1 = diff1.abs/diff1 if diff1 != 0
    symb_d2 = diff2.abs/diff2 if diff2 != 0
    (diff1-1).abs.times{|num|
      path << [current_position[0] + symb_d1*(num+1),current_position[1]+symb_d2*(num+1)]
    }
    path
  end
end
