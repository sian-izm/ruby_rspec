describe GridPoint do
  let(:grid_point) { GridPoint.new(x, y) }

  describe "#x" do
    let(:x) { 4 }
    let(:y) { 7 }

    it do
      expect(grid_point.x).to eq(4)
    end
  end

  describe "#y" do
    let(:x) { 4 }
    let(:y) { 7 }

    it do
      expect(grid_point.y).to eq(7)
    end
  end

  describe "#notation" do
    context "xが4, yが7" do
      let(:x) { 4 }
      let(:y) { 7 }

      it do
        expect(grid_point.notation).to eq("(4,7)")
      end
    end

    context "xが1, yが2" do
      let(:x) { 1 }
      let(:y) { 2 }

      it do
        expect(grid_point.notation).to eq("(1,2)")
      end
    end
  end
end
