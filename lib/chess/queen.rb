class Queen < Piece
  def initialize(x,y,color)
    if color == :white
      unicode_symbol = "\u{2655}"
    else
      unicode_symbol = "\u{265B}"
    end
    super(x,y,color,:queen,unicode_symbol)
  end
end
