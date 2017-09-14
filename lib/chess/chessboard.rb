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

  def make_move(move,color)
    move_arr = move.split(",")
    #first of all we will check if the move is correct
    correct_move = check_move(move_arr,color)
    if correct_move

      true
    else
      false
    end
  end

  #this method returns true if the move is correct and false if it isn't
  def check_move(arr,color)
    if arr.length < 2
      puts "You typed an invalid move."
      return false
    end

    @current_position = convert_to_position(arr[0])
    if @current_position.nil?
      puts "First position invalid. You must specify a position within the board that contains one of your pieces."
      return false
    end

    @next_position = convert_to_position(arr[1])
    if @next_position.nil?
      puts "Second position invalid. You must specify a position within the board where you want to move your piece."
      return false
    end

    if @current_position == @next_position
      puts "The two positions must be different"
      return false
    end

    current_piece = get_piece(@current_position)
    if current_piece.nil? || current_piece.color != color
      puts "First position invalid, it should contain one of your pieces."
      return false
    end

    if !current_piece.next_move_correct?(@next_position)
      puts "Second position invalid, the #{current_piece.name} cannot go to that position"
      return false
    end

    true
  end

  #this method converts a position entered with the format a3, to the array [0,2]
  def convert_to_position(arr)
    number_arr = []
    arr.each_byte{|element| number_arr.unshift(element)}
    return nil if number_arr.length != 2
    number_arr[1] = number_arr[1] - 97
    number_arr[0] = number_arr[0] - 49
    return nil if !number_arr[0].between?(0,7)
    return nil if !number_arr[1].between?(0,7)
    number_arr
  end

  #given a position, this method returns the piece on that position
  def get_piece(ary)
    @board[ary[0]][ary[1]]
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
