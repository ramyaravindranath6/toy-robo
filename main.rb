require_relative "lib/command"

puts "Welcome to toy robot simulator"
commad = Command.new
loop do
  puts "Enter the command (EXIT to quit): "
  usr_input = gets.chomp.upcase

  break if usr_input == "EXIT"

  cmd, args = Parser.parse_input(usr_input)
  commad.execute(cmd, args)
end
