describe GridPoints do
  let(:grid_points) { GridPoints.new() }

  describe "#contains?" do
    let(:grid_point_1) { GridPoint.new(4, 7) }
    let(:grid_point_2) { GridPoint.new(3, 8) }

    context "格子点集合に含まれる場合" do
      let(:target_grid_point) { GridPoint.new(4, 7) }

      before do
        grid_points.add(grid_point_1)
        grid_points.add(grid_point_2)
      end

      subject { grid_points.contains?(target_grid_point) }
      it { is_expected.to be_truthy }
    end

    context "格子点集合に含まれない場合" do
      let(:target_grid_point) { GridPoint.new(5, 1) }

      before do
        grid_points.add(grid_point_1)
        grid_points.add(grid_point_2)
      end

      subject { grid_points.contains?(target_grid_point) }
      it { is_expected.to be_falsy }
    end
  end
end
