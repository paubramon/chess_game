class Bishop < Piece
  def initialize(x,y,color)
    if color == :white
      unicode_symbol = "\u{2657}"
    else
      unicode_symbol = "\u{265D}"
    end
    super(x,y,color,:bishop,unicode_symbol)
  end
end
