describe GridPoint do

  describe "#x" do
    let(:x) { 4 }
    let(:y) { 7 }

    it do
      obj = GridPoint.new(x, y)
      expect(obj.x).to eq(4)
    end
  end

  describe "#y" do
    let(:x) { 4 }
    let(:y) { 7 }

    it do
      obj = GridPoint.new(x, y)
      expect(obj.y).to eq(7)
    end
  end

  describe "#notation" do
    context "xが4, yが7" do
      let(:x) { 4 }
      let(:y) { 7 }

      it do
        obj = GridPoint.new(x, y)
        expect(obj.notation).to eq("(4,7)")
      end
    end

    context "xが1, yが2" do
      let(:x) { 1 }
      let(:y) { 2 }

      it do
        obj = GridPoint.new(x, y)
        expect(obj.notation).to eq("(1,2)")
      end
    end
  end
end
