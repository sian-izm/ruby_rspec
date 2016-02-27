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
    (grid_point.x - x)**2 + (grid_point.y - y)**2 == 1
  end
end
