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

  describe "#add" do
    let(:initial_grid_points) { [GridPoint.new(1, 1)] }

    context "引数が配列のとき" do
      let(:grid_point_1) { GridPoint.new(4, 7) }
      let(:grid_point_2) { GridPoint.new(3, 8) }
      let(:grid_point_3) { GridPoint.new(4, -1) }
      let(:arg) { [grid_point_1, grid_point_2, grid_point_3] }

      subject { grid_points.add arg }
      it { is_expected.to include(grid_point_1, grid_point_2, grid_point_3) }
    end

    context "引数がGridPointインスタンスのとき" do
      let(:arg) { GridPoint.new(2, 9) }

      subject { grid_points.add arg }
      it { is_expected.to include(arg) }
    end

    context "引数が文字列のとき" do
      let(:arg) { "foobar" }

      it { expect { grid_points.add arg }.to raise_error StandardError }
    end

    context "引数が空配列のとき" do
      let(:arg) { [] }

      subject { grid_points.add arg }
      it { is_expected.to eq initial_grid_points }
    end

    context "引数がnilのとき" do
      let(:arg) { nil }

      it { expect { grid_points.add arg }.to raise_error StandardError }
    end
  end
end
