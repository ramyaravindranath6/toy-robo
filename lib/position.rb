# This class represents position of the robot
require_relative "./table"
class Position
  attr_accessor :x_coordinate
  attr_accessor :y_coordinate
  attr_reader :orientation
  attr_reader :table

  DIRECTIONS = %w[NORTH EAST SOUTH WEST].freeze

  def initialize(x_coordinate, y_coordinate, orientation, table: Table.new)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @orientation = orientation
    @table = table
  end

  def move
    case orientation
    when "NORTH"
      move_north
    when "EAST"
      move_east
    when "SOUTH"
      move_south
    when "WEST"
      move_west
    end
  end

  def move_east
    return self unless table.is_x_coordinate_on_table?(x_coordinate + 1)
    Position.new(x_coordinate + 1, y_coordinate, orientation)
  end

  def move_west
    return self unless table.is_x_coordinate_on_table?(x_coordinate - 1)
    Position.new(x_coordinate - 1, y_coordinate, orientation)
  end

  def move_north
    return self unless table.is_y_coordinate_on_table?(y_coordinate + 1)
    Position.new(x_coordinate, y_coordinate + 1, orientation)
  end

  def move_south
    return self unless table.is_y_coordinate_on_table?(y_coordinate - 1)
    Position.new(x_coordinate, y_coordinate - 1, orientation)
  end

  def turn_left
    new_direction = DIRECTIONS[(DIRECTIONS.index(orientation) - 1) % 4]
    Position.new(x_coordinate, y_coordinate, new_direction)
  end

  def turn_right
    new_direction = DIRECTIONS[(DIRECTIONS.index(orientation) + 1) % 4]
    Position.new(x_coordinate, y_coordinate, new_direction)
  end
end
