Board_columns = 8
Board_rows = 8

class ChessBoard
  attr_accessor :board

  def initialize
    @board = Array.new(Board_rows){Array.new(Board_columns)}
  end

  #this method prepares the board for a new game
  def start_game
    Board_columns.times{|c|
      @board[1][c] = Pawn.new(1,c,:white)
      @board[6][c] = Pawn.new(6,c,:black)
      if c == 0 || c == 7
        @board[0][c] = Rook.new(0,c,:white)
        @board[7][c] = Rook.new(7,c,:black)
      elsif c == 1 || c == 6
        @board[0][c] = Knight.new(0,c,:white)
        @board[7][c] = Knight.new(7,c,:black)
      elsif c == 2 || c == 5
        @board[0][c] = Bishop.new(0,c,:white)
        @board[7][c] = Bishop.new(7,c,:black)
      elsif c == 3
        @board[0][c] = King.new(0,c,:white)
        @board[7][c] = King.new(7,c,:black)
      elsif c == 4
        @board[0][c] = Queen.new(0,c,:white)
        @board[7][c] = Queen.new(7,c,:black)
      end
    }
  end

  #this method prints the board to show the current situation of the pieces
  def print_board
    #    a   b   c   d   e   f   g   h
    #   --- --- --- --- --- --- --- ---
    #8 | a | a | a | a | a | a | a | a | 8
    #   --- --- --- --- --- --- --- ---
    #7 | a | a | a | a | a | a | a | a | 7
    #   --- --- --- --- --- --- --- ---
    #6 |   |   |   |   |   |   |   |   | 6
    #   --- --- --- --- --- --- --- ---
    #5 |   |   |   |   |   |   |   |   | 5
    #   --- --- --- --- --- --- --- ---
    #4 |   |   |   |   |   |   |   |   | 4
    #   --- --- --- --- --- --- --- ---
    #3 |   |   |   |   |   |   |   |   | 3
    #   --- --- --- --- --- --- --- ---
    #2 | a | a | a | a | a | a | a | a | 2
    #   --- --- --- --- --- --- --- ---
    #1 | a | a | a | a | a | a | a | a | 1
    #   --- --- --- --- --- --- --- ---
    #    a   b   c   d   e   f   g   h

    puts "\n\n    a   b   c   d   e   f   g   h"
    puts "   --- --- --- --- --- --- --- ---"
    Board_rows.times{|r|
      print "#{8-r} | "
      Board_columns.times{|c|
        if !@board[r][c].nil?
          @board[r][c].print_unicode_symbol
        else
          print " "
        end
        print " | "
      }
      print "#{8-r}\n"
      puts "   --- --- --- --- --- --- --- ---"
    }
    puts "    a   b   c   d   e   f   g   h\n\n"
  end
end
