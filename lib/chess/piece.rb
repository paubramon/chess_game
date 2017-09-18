class Piece
  attr_accessor :current_position, :next_position, :color, :type, :unicode_symbol, :name
  def initialize(x = nil,y = nil,color = nil,type = nil,unicode_symbol = nil,name = nil)
    @current_position = [x,y]
    @next_position = [x,y]
    @color = color
    @type = type
    @unicode_symbol = unicode_symbol
    @name = name
  end

  #this method prints the unicode symbol of the piece
  def print_unicode_symbol
    print @unicode_symbol
  end

  #this method checks if the given position is reachable by the piece or not
  def next_move_correct?(ary,attacking = false)
    false
  end

  #this methods returns an array with the positions contained within the path.
  def path_to_next_position(next_position)
    []
  end

  #this method moves the piece to another position
  def move_to_position(next_position)
    @current_position = next_position
  end
end
