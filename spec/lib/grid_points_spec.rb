describe GridPoints do
  let(:grid_points) { GridPoints.new() }

  describe "#contains?" do
    let(:grid_point_1) { GridPoint.new(4, 7) }
    let(:grid_point_2) { GridPoint.new(3, 8) }

    before do
      grid_points.add(grid_point_1)
      grid_points.add(grid_point_2)
    end
    
    it { expect(grid_points.contains?(grid_point_1)).to be_truthy }
  end
end
