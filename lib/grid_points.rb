class GridPoints
  attr_accessor :grid_points

  def initialize(grid_points = [])
    @grid_points = grid_points
  end

  def add(grid_point)
    @grid_points << grid_point
  end

  def contains?(grid_point)
    @grid_points.map { |i| i.same_coordinates?(grid_point) }.include?(true)
  end
end
