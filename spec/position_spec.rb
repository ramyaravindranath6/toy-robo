require "./lib/position"

describe Position do
  describe "#move" do
    context "Positon with NORTH orientation" do
      it "returns new position with new y_coordinate" do
        y_coordinate = 2
        x_coordinate = 2
        position = Position.new(x_coordinate, y_coordinate, "NORTH")

        expect(position.move.y_coordinate).to eq 3
      end
    end

    context "Positon with EAST orientation" do
      it "returns new position with new x_coordinate" do
        y_coordinate = 2
        x_coordinate = 2
        position = Position.new(x_coordinate, y_coordinate, "EAST")

        expect(position.move.x_coordinate).to eq 3
      end
    end

    context "Positon with WEST orientation" do
      it "returns new position with new x_coordinate" do
        y_coordinate = 2
        x_coordinate = 2
        position = Position.new(x_coordinate, y_coordinate, "WEST")

        expect(position.move.x_coordinate).to eq 1
      end
    end

    context "Positon with SOUTH orientation" do
      it "returns new position with new x_coordinate" do
        y_coordinate = 2
        x_coordinate = 2
        position = Position.new(x_coordinate, y_coordinate, "SOUTH")

        expect(position.move.y_coordinate).to eq 1
      end
    end
  end

  describe "#left" do
    context "when turn left" do
      it "returns new orientation" do
        y_coordinate = 1
        x_coordinate = 1
        position = Position.new(x_coordinate, y_coordinate, "NORTH")

        expect(position.turn_left.orientation).to eq "WEST"
      end
    end
  end

  describe "#right" do
    context "when turn right" do
      it "returns new orientation" do
        y_coordinate = 1
        x_coordinate = 1
        position = Position.new(x_coordinate, y_coordinate, "NORTH")

        expect(position.turn_right.orientation).to eq "EAST"
      end
    end
  end
end
