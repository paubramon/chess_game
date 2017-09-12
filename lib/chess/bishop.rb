class Bishop < Piece
  #this method prints the unicode symbol of the piece
  def print_unicode_symbol
    if @color == :white
      print "\u{2657}"
    else
      print "\u{265D}"
    end
  end
end
