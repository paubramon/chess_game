class Piece
  attr_accessor :current_position, :next_position, :color
  def initialize(x,y,color)
    @current_position = [x,y]
    @next_position = [x,y]
    @color = color
  end
end
