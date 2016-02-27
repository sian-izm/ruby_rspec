describe GridPoint do

  describe "#x" do
    it do
      obj = GridPoint.new(4, 7)
      expect(obj.x).to eq(4)
    end
  end

  describe "#y" do
    it do
      obj = GridPoint.new(4, 7)
      expect(obj.y).to eq(7)
    end
  end

  describe "#notation" do
    context "xが4, yが7" do
      it do
        obj = GridPoint.new(4, 7)
        expect(obj.notation).to eq("(4,7)")
      end
    end

    context "xが1, yが2" do
      it do
        obj = GridPoint.new(1, 2)
        expect(obj.notation).to eq("(1,2)")
      end
    end
  end
end
