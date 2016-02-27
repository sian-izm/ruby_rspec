class GridPoints
  attr_accessor :grid_points

  def initialize(grid_points = [])
    @grid_points = array_grid_points(grid_points)
  end

  def add(grid_points)
    @grid_points + array_grid_points(grid_points)
  end

  def contains?(grid_point)
    @grid_points.map { |i| i.same_coordinates?(grid_point) }.include?(true)
  end

  private

  def array_grid_points(grid_points)
    case
    when grid_points.instance_of?(Array)
      grid_points
    when grid_points.instance_of?(GridPoint)
      [grid_points]
    else
      raise StandardError
    end
  end
end
