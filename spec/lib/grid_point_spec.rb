describe GridPoint do
  let(:grid_point) { GridPoint.new(x, y) }

  describe "#x" do
    let(:x) { 4 }
    let(:y) { 7 }

    subject { grid_point.x }
    it { is_expected.to eq 4 }
  end

  describe "#y" do
    let(:x) { 4 }
    let(:y) { 7 }

    subject { grid_point.y }
    it { is_expected.to eq 7 }
  end

  describe "#notation" do
    context "xが4, yが7" do
      let(:x) { 4 }
      let(:y) { 7 }

      subject { grid_point.notation }
      it { is_expected.to eq "(4,7)" }
    end

    context "xが1, yが2" do
      let(:x) { 1 }
      let(:y) { 2 }

      subject { grid_point.notation }
      it { is_expected.to eq "(1,2)" }
    end
  end

  describe "#same_coordinates?" do
    context "2つの格子点が同一" do
      let(:grid_point_1) { GridPoint.new(4, 7) }
      let(:grid_point_2) { GridPoint.new(4, 7) }

      subject { grid_point_1.same_coordinates?(grid_point_2) }
      it { is_expected.to be_truthy }
    end

    context "2つの格子点が異なる" do
      let(:grid_point_1) { GridPoint.new(4, 7) }
      let(:grid_point_2) { GridPoint.new(3, 6) }

      subject { grid_point_1.same_coordinates?(grid_point_2) }
      it { is_expected.to be_falsy }
    end
  end

  describe "#neighbor?" do

    context "右隣のとき" do
      let(:grid_point_1) { GridPoint.new(3, 7) }
      let(:grid_point_2) { GridPoint.new(4, 7) }

      subject { grid_point_1.neighbor?(grid_point_2) }
      it { is_expected.to be_truthy }
    end

    context "左隣のとき" do
      let(:grid_point_1) { GridPoint.new(3, 7) }
      let(:grid_point_2) { GridPoint.new(2, 7) }

      subject { grid_point_1.neighbor?(grid_point_2) }
      it { is_expected.to be_truthy }
    end

    context "上隣のとき" do
      let(:grid_point_1) { GridPoint.new(3, 7) }
      let(:grid_point_2) { GridPoint.new(3, 8) }

      subject { grid_point_1.neighbor?(grid_point_2) }
      it { is_expected.to be_truthy }
    end

    context "下隣のとき" do
      let(:grid_point_1) { GridPoint.new(3, 7) }
      let(:grid_point_2) { GridPoint.new(3, 6) }

      subject { grid_point_1.neighbor?(grid_point_2) }
      it { is_expected.to be_truthy }
    end

  end
end
