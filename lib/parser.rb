require_relative "./position"

# A module to parse place command
module Parser
  def self.validate_position(args)
    x, y, dir = args.split(",") unless args.nil?
    return nil unless x.match?((/\d+/)) && y.match?((/\d+/)) && %w[EAST WEST NORTH SOUTH].include?(dir)

    Position.new(x.to_i, y.to_i, dir&.strip)
  end

  def self.parse_input(input)
    input.split(/\s+/, 2)
  end
end
