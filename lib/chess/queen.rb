class Queen < Piece
  def initialize(x,y,color)
    if color == :white
      unicode_symbol = "\u{2655}"
    else
      unicode_symbol = "\u{265B}"
    end
    super(x,y,color,:queen,unicode_symbol,"queen")
  end

  #this method checks if the given position is reachable by the piece or not
  def next_move_correct?(ary)
    diff1 = ary[0] - current_position[0]
    diff2 = ary[1] - current_position[1]
    if diff1 == 0 || diff2 == 0
      true
    elsif diff1.abs == diff2.abs
      true
    else
      false
    end
  end
end
