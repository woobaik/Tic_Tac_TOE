require_relative 'board'
class Game

  def initialize(players)
    @board = Board.new
    @players = players
  end

  def play_turn(player)
    move = player.get_move

    @board[*move] = player.marker
    
  end

  def print_grid
    @board.print_grid
  end

end
