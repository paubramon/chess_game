class King < Piece
  #this method prints the unicode symbol of the piece
  def print_unicode_symbol
    if @color == :white
      print "\u{2654}"
    else
      print "\u{265A}"
    end
  end
end
