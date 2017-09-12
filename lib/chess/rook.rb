class Rook < Piece
  def initialize(x,y,color)
    if color == :white
      unicode_symbol = "\u{2656}"
    else
      unicode_symbol = "\u{265C}"
    end
    super(x,y,color,:rook,unicode_symbol,"rook")
  end
end
