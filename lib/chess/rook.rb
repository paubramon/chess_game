class Rook < Piece
  #this method prints the unicode symbol of the piece
  def print_unicode_symbol
    if @color == :white
      print "\u{2656}"
    else
      print "\u{265C}"
    end
  end
end
