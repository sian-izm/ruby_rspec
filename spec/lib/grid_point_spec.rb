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
end
