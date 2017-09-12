class King < Piece
  def initialize(x,y,color)
    if color == :white
      unicode_symbol = "\u{2654}"
    else
      unicode_symbol = "\u{265A}"
    end
    super(x,y,color,:king,unicode_symbol,"king")
  end
end
