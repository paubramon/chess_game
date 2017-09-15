class Pawn < Piece
  Possible_moves_white = [[1,1],[1,0],[1,-1],[2,0]]
  Possible_moves_black = [[-1,-1],[-1,0],[-1,1],[-2,0]]
  def initialize(x,y,color)
    @first_move = true
    if color == :white
      unicode_symbol = "\u{2659}"
    else
      unicode_symbol = "\u{265F}"
    end
    @moved = false
    super(x,y,color,:pawn,unicode_symbol,"pawn")
  end

  #this method checks if the given position is reachable by the piece or not
  def next_move_correct?(ary,attacking = false)
    movement_correct = false
    possible_moves = @color == :white ? Possible_moves_white : Possible_moves_black
    possible_moves.each{|move|
      if (@current_position[0]+move[0]) == ary[0] && (@current_position[1]+move[1]) == ary[1]
        puts @first_move.inspect
        puts move.inspect
        unless (!@first_move && move == [2,0]) || (!attacking && (move == [1,1] || move == [1,-1]))
          movement_correct = true
          break
        end
      end
    }
    movement_correct
  end
end
