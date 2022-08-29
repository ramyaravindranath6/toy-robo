# This represents Table on which robot is placed
class Table
  attr_reader :width
  attr_reader :height

  def initialize(width: 5, height: 5)
    @width = width
    @height = height
  end

  def valid_position?(position:)
    is_x_coordinate_on_table?(position&.x_coordinate) && is_y_coordinate_on_table?(position&.y_coordinate)
  end

  def is_x_coordinate_on_table?(x)
    return false unless x.is_a?(Integer)
    x.between?(0, width - 1)
  end

  def is_y_coordinate_on_table?(y)
    return false unless y.is_a?(Integer)
    y.between?(0, height - 1)
  end
end
