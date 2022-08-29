require "./lib/robot"

describe Robot do
  describe "#place" do
    it "returns new position for robot" do
      robot = Robot.new
      position = Position.new(3, 2, "NORTH")
      robot.place(new_position: position)

      expect(robot.current_position).to eq position
    end
  end

  describe "#move" do
    context "when not placed" do
      it "returns nil position when moved" do
        robot = Robot.new
        robot.move

        expect(robot.current_position).to eq nil
      end
    end

    context "when placed" do
      it "returns new position when moved" do
        robot = Robot.new
        position = Position.new(3, 2, "NORTH")
        expected_position = Position.new(3, 3, "NORTH")
        robot.place(new_position: position)

        robot.move

        expect(robot.current_position.x_coordinate).to eql expected_position.x_coordinate
        expect(robot.current_position.y_coordinate).to eql expected_position.y_coordinate
      end
    end
  end

  describe "#left" do
    context "when not placed" do
      it "returns nil position when turns left" do
        robot = Robot.new
        robot.left

        expect(robot.current_position).to eq nil
      end
    end

    context "when placed" do
      it "returns new orientation when turns left" do
        robot = Robot.new
        position = Position.new(3, 2, "NORTH")
        expected_position = Position.new(3, 3, "WEST")
        robot.place(new_position: position)

        robot.left

        expect(robot.current_position.orientation).to eql expected_position.orientation
      end
    end
  end

  describe "#Right" do
    context "when not placed" do
      it "returns nil position when turns right" do
        robot = Robot.new
        robot.left

        expect(robot.current_position).to eq nil
      end
    end

    context "when placed" do
      it "returns new orientation when turns right" do
        robot = Robot.new
        position = Position.new(3, 2, "NORTH")
        expected_position = Position.new(3, 3, "EAST")
        robot.place(new_position: position)

        robot.right

        expect(robot.current_position.orientation).to eql expected_position.orientation
      end
    end
  end
end
