class ChessGame
  def initialize
    @chessboard = ChessBoard.new
  end

  #method to start playing chess
  def run_game

    #first of all, the method prints the menu to display to the user
    puts %Q{
**********************
*     CHESS GAME     *
**********************
}

puts %Q{Choose an option:
  1- Start a new game.
  2- Load a saved game.
  3- Remove a saved game
  4- Quit
}
  @option = 0
    loop do
      @option = gets.chomp
      if @option.to_i.between?(1,4)
        break
      else
        puts "Incorrect option, you must choose an available option (1, 2, 3 or 4)."
      end
    end

    #depending on the choosen option we run the next method
    case @option
    when '1'
      start_new_game
    when '2'
      load_saved_game
    when '3'
      remove_saved_game
    when '4'
      puts 'Bye!'
      exit
    end
  end

  #this method is the main method to play a new game
  def start_new_game
    puts "\nStart a new game\n"
    @chessboard.start_game
    print_instructions_message
    @chessboard.print_board

    @next_play = :white
    game_loop
  end

  #this method allows the user to pick a saved game and continue playing
  def load_saved_game
    puts "\nLoad a saved game\n"
  end

  #this method allows the user to remove some old saved game
  def remove_saved_game
    puts "\nRemove a saved game\n"
  end

  #this method is the main loop to play the game
  def game_loop
    loop do
      next_player = @next_play == :white ? "White" : "Black"
      puts "\n#{next_player} player, enter the next move:"
      next_move = gets.chomp
      move_done = @chessboard.make_move(next_move,@next_play)
      if move_done
        @next_play = @next_play == :white ? :black : :white
      end
    end
  end

  #this method allows the user to save the game.
  def save_game
    puts "saved!"
  end

  #this method prints the instructions to play the game.
  def print_instructions_message
    puts %Q{\n\nMake a move by entering two positions on the chess board separated by a space and a comma.
The first position will be the piece you want to move and the second one will be the move to make.
Enter a position as a letter then a number. An example position is 'a2' and an example play is 'a2,b3 (read piece on position a2 goes to b3)'.
Type "save" to save the game.\n\n}
  end
end
