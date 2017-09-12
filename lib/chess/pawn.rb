class Pawn < Piece
  #this method prints the unicode symbol of the piece
  def print_unicode_symbol
    if @color == :white
      print "\u{2659}"
    else
      print "\u{265F}"
    end
  end
end
