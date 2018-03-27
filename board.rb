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

end

a = Board.new
a.grid[2][1] = :x
a.print_grid
