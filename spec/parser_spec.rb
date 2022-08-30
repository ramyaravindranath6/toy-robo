require "./lib/parser"

describe Parser do
  describe "#parse_input" do
    it "returns command and args when inputs place command" do
      input = "PLACE 2,3,NORTH"
      cmd, args = Parser.parse_input(input)

      expect(cmd).to eq "PLACE"
      expect(args).to eq "2,3,NORTH"
    end
  end

  describe "#validate_position" do
    it "returns valid position when for valid args" do
      args = "2,3,NORTH"
      position = Parser.validate_position(args)

      expect(position.x_coordinate).to eq 2
      expect(position.y_coordinate).to eq 3
      expect(position.orientation).to eq "NORTH"
    end

    it "returns nil for invalid args" do
      args = "x,y,NORTH"
      position = Parser.validate_position(args)
      
      expect(position).to eq nil
    end
  end
end
