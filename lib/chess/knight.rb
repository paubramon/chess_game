class Knight < Piece
  def initialize(x,y,color)
    if color == :white
      unicode_symbol = "\u{2658}"
    else
      unicode_symbol = "\u{265E}"
    end
    super(x,y,color,:knight,unicode_symbol)
  end
end
