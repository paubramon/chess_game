class Knight < Piece

  #this method prints the unicode symbol of the piece
  def print_unicode_symbol
    if @color == :white
      print "\u{2658}"
    else
      print "\u{265E}"
    end
  end
end
