class Board

  WIDTH = 3
  HEIGHT = WIDTH
  attr_accessor :grid

#Make it with symbol in order to prevent future refrence errors with using replace method.

  def initialize
    @grid = Array.new(HEIGHT) {Array.new(WIDTH,:"")}
  end

  def print_grid
    @grid.each do |row|
      puts
      row.each do |cell|
        print "#{[cell]}"
      end
    end
    puts
  end

  def row_win?(marker)
    @grid.any? do |row|
      row.all? do |cell|
        cell == marker
      end
    end
  end

  def col_win?(marker)
    (0...WIDTH).any? do |col|
      @grid.all? do |row|
        row[col] == marker
      end
    end
  end

  def dia_win?(marker)
    [ lambda { |x| x},
      lambda { |x| -(x + 1)}
    ].any? do |proc|
      (0...WIDTH).all? do |index|
        # sign > 0 ? second_index = index : second_index = sign * (index + 1)

        @grid[index][proc.call(index)] == marker
      end
    end
  end

end

a = Board.new
a.grid[0][-1] = :x
a.grid[1][-2] = :x
a.grid[2][-3] = :x
a.print_grid

p a.row_win?(:x)
p a.col_win?(:x)
p a.dia_win?(:x)
