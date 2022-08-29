# This is Robot class
class Robot
  def initialize(position: nil)
    @position = position
  end

  def place(new_position:)
    @position = new_position
  end

  def current_position
    @position
  end

  def move
    @position = @position&.move
  end

  def left
    @position = @position&.turn_left
  end

  def right
    @position = @position&.turn_right
  end

  def report
    puts "Robot is not placed" unless placed?

    puts "#{@position&.x_coordinate}, #{@position&.y_coordinate}, #{@position&.orientation}" if placed?
  end

  def placed?
    !@position.nil?
  end
end
