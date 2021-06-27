require_relative 'board.rb'

class State
  $charHash = {true => "X", false => "O"}

  def initialize
    @userX = true
  end
  def start
    b = Board.new
    loop do
      b.print()
      puts "Enter the coordinates for Player #{$charHash[@userX]} [x,y]: "

      b.move_selection(gets.chomp)
    end
  end
end






