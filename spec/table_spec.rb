require "./lib/table"

describe Table do
  describe "#valid_table_position" do
    it "returns true if the x and y coordinates falls on the table" do
      table = Table.new
      position = Position.new(3, 2, "NORTH")
      expect(table.valid_position?(position: position)).to eq true
    end

    it "returns false when x is out of table and y is inside the table" do
      table = Table.new
      position = Position.new(6, 2, "NORTH")
      expect(table.valid_position?(position: position)).to eq false
    end

    it "returns false when x is inside the table and y is out the table" do
      table = Table.new
      position = Position.new(2, 7, "NORTH")
      expect(table.valid_position?(position: position)).to eq false
    end

    it "returns false if the x and y coordinates are not valid" do
      table = Table.new
      position = Position.new("n", "p", "kkk")
      expect(table.valid_position?(position: position)).to eq false
    end
  end
end
