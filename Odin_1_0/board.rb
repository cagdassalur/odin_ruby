require_relative 'array_helper'

class Board
  $charHash = {0 => "_", 1 => "X", 2 => "O"}

  def initialize
    @b = [[0,0,0],[0,0,0],[0,0,0]]
  end
  def won?
    return (b.any(&ArrayHelper.all_equal?(:inc, 0)) or
      b.transpose.map(&:reverse).any(&ArrayHelper.all_equal?(:inc, 0)) or
      ArrayHelper.all_equal?([b[0,0], b[1,1], b[2,2]], 0) or
      ArrayHelper.all_equal?([b[0,2], b[1,1], b[2,0]], 0))
  end

  def print()
    system("cls") || system("clear")
    puts "      0   1   2   "
    puts "   " + "_"*15
    @b.each.with_index do |row, y|
      line = y.to_s + "  |"
      row.each.with_index do |cell, x|
        char = $charHash[cell]
          line += "  #{char} "
      end
      puts line + " |"
      puts "   |" + " "*13 + "|" if y != 2
    end
    puts "   " + "-"*15
  end

end

#   0  1  2
# 0 x  x  x
# 1 x  x  x
# 2 x  x  x
#
