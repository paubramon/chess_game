require './lib/chess/piece'
require './lib/chess/king'
require './lib/chess/queen'
require './lib/chess/rook'
require './lib/chess/bishop'
require './lib/chess/knight'
require './lib/chess/pawn'
require './lib/chess/chessboard'

chessboard = ChessBoard.new
chessboard.start_game
puts "Print chessboard:"
chessboard.print_board
