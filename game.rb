require_relative 'board'
class Game
  def initialize(players)
    @board = Board.new
    @players = players
  end

  def player_turn(player)
    move = player.get_move
    @board.[]=(*move, player.marker)
    print_board
  end

  def print_board
    @board.print_board
  end

end
