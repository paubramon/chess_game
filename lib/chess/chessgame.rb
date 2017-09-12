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

  end
end
