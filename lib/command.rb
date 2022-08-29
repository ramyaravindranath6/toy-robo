require_relative "./parser"
require_relative "./robot"

class Command
  attr_accessor :robot
  attr_accessor :table

  def initialize(robot: Robot.new, table: Table.new)
    @robot = robot
    @table = table
  end

  def execute(cmd, args)
    case cmd
    when "PLACE"
      position = Parser.validate_position(args)
      place(new_position: position)
    when "MOVE"
      place(new_position: robot.move)
    when "LEFT"
      place(new_position: robot.left)
    when "RIGHT"
      place(new_position: robot.right)
    when "REPORT"
      robot.report
    else
      puts "Invalid commad"
    end
  end

  def place(new_position:)
    current_position = robot.current_position

    if table.valid_position?(position: new_position)
      robot.place(new_position: new_position)
    else
      puts "cannot place robot since its not a valid position"
      robot.place(new_position: current_position)
    end
  end
end
