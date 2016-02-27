describe GridPoints do
  let(:grid_points) { GridPoints.new(initial_grid_points) }

  describe "#contains?" do
    let(:grid_point_1) { GridPoint.new(4, 7) }
    let(:grid_point_2) { GridPoint.new(3, 8) }
    let(:initial_grid_points) { [grid_point_1, grid_point_2] }

    context "格子点集合に含まれる場合" do
      let(:target_grid_point) { GridPoint.new(4, 7) }

      subject { grid_points.contains?(target_grid_point) }
      it { is_expected.to be_truthy }
    end

    context "格子点集合に含まれない場合" do
      let(:target_grid_point) { GridPoint.new(5, 1) }

      subject { grid_points.contains?(target_grid_point) }
      it { is_expected.to be_falsy }
    end
  end
end
