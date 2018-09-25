class Board
  attr_accessor :grid
  SIZE = 3
  def initialize
    @grid = Array.new(SIZE) {Array.new(SIZE, :" ")}
  end

  def print_board
    @grid.each do |row|
      print "\n"
      row.each do |cell|
        print "[#{cell}]"
      end
    end
    print "\n "
  end

  def winner?(marker)
    row_win?(marker) || col_win?(marker) || diag_win?(marker)
  end

  def row_win?(marker)
    @grid.any? do |row|
      row.all? do |cell|
        cell == marker
      end
    end
  end

  def col_win?(marker)
    (0...SIZE).any? do |idx|
      @grid.all? do |row|
        row[idx] == marker
      end
    end
  end

  def diag_win?(marker)
    [1,-1].any? do |signal|
      (0...SIZE).all? do |i|
        if signal > 0
          @grid[i][i] == marker
        else
          idx2 = 2 - i
          @grid[i][idx2] == marker
        end
      end
    end
  end

  def [](a,b)
    @grid[a][b]
  end

  def []=(a,b,something)
    if @grid[a][b] == :" " && [:X, :O].include?(something)
    @grid[a][b] = something
    end
    false
  end

end

# def print_and_check
#   @b.print_board
#   puts
#   puts "rows: #{@b.row_win?(:X)}"
#   puts "cols: #{@b.col_win?(:X)}"
#   puts "diag: #{@b.diag_win?(:X)}"
# end
# @b = Board.new
#
# @b.grid[0][-1] = :X
# print_and_check
# @b.grid[1][-2] = :X
# print_and_check
# @b[2,-3] = :X
# print_and_check
