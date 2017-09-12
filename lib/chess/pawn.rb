class Pawn < Piece
  def initialize(x,y,color)
    if color == :white
      unicode_symbol = "\u{2659}"
    else
      unicode_symbol = "\u{265F}"
    end
    @moved = false
    super(x,y,color,:pawn,unicode_symbol,"pawn")
  end
end
