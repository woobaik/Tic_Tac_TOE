class Player
  attr_reader :marker
  def initialize(name,marker)
    @name = name
    @marker = marker
    @score = 0
  end

  def get_move
    [col_move, row_move]
  end

  def col_move
    gets.to_i
  end

  def row_move
    gets.to_i
  end
end
