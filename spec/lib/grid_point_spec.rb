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
end
