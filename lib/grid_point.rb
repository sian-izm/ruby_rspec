class GridPoint
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def notation
    "(#{x},#{y})"
  end

  def same_coordinates?(grid_point)
    grid_point.notation == notation
  end

  def neighbor?(grid_point)
    less_than_1_point?(grid_point) && !same_coordinates?(grid_point)
  end

  private

  def less_than_1_point?(grid_point)
    ((grid_point.x - x).abs == 1) || ((grid_point.y - y).abs == 1)
  end
end
