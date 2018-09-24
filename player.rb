class Board
  attr_accessor :grid
  SIZE = 3
  def initialize
    @grid = Array.new(SIZE) {Array.new(SIZE, :" ")}
  end

  def print_board
    @grid.each do |row|
      puts
      row.each do |cell|
        print "[#{cell}]"
      end
    end
  end

  def row_win?(marker)
    @grid.any? do |row|
      row.all? do |cell|
        cell == marker
      end
    end
  end

  def col_win?(marker)
    (0..SIZE).any? do |idx|
      @grid.all? do |row|
        row[idx] == marker
      end
    end
  end

  def diag_win?(marker)
    return true if (0...SIZE).all? do |i|
      @grid[i][i] == marker
    end
    return true if (0...SIZE).all? do |i|
      @grid[i][-1 * (i + 1)] == marker
    end
    false
  end

  def [](x,y)
    @grid[x][y]
  end

  def []=(x,y,something)
    if @grid[x][y] == :" " && [:X, :O].include?(something)
    @grid[x][y] = something
    else
      return false
    end

  end




end


def print_and_check
  @b.print_board
  puts ""
  puts "row_win? #{@b.row_win?(:X)}"
  puts "col_win? #{@b.col_win?(:X)}"
  puts "diag_win? #{@b.diag_win?(:X)}"
end
@b = Board.new
print_and_check
@b[0,2] = :X
print_and_check
@b[1,1] = :X
print_and_check
@b[2,0] = :X
print_and_check
