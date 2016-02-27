describe GridPoints do
  let(:grid_points) { GridPoints.new() }

  describe "#contains?" do
    context "格子点集合に含まれる場合" do
      let(:grid_point_1) { GridPoint.new(4, 7) }
      let(:grid_point_2) { GridPoint.new(3, 8) }

      before do
        grid_points.add(grid_point_1)
        grid_points.add(grid_point_2)
      end

      subject { grid_points.contains?(grid_point_1) }
      it { is_expected.to be_truthy }
    end

    context "格子点集合に含まれない場合" do
      let(:grid_point_1) { GridPoint.new(4, 7) }
      let(:grid_point_2) { GridPoint.new(3, 8) }
      let(:grid_point_3) { GridPoint.new(5, 1) }

      before do
        grid_points.add(grid_point_1)
        grid_points.add(grid_point_2)
      end

      subject { grid_points.contains?(grid_point_3) }
      it { is_expected.to be_falsy }
    end
  end
end
