
class Board

  def initialize
    @tower_a = [1,2,3]
    @tower_b = []
    @tower_c = []
  end
#
  attr_reader :tower_a, :tower_b, :tower_c


#{ board.is_valid?("A", "D") }
  def is_valid?( pos1, pos2)
    array_pos = %w(A B C)
    unless array_pos.include?(pos1) && array_pos.include?(pos2)
      raise "invalid Location!"
    end

  end

  def won?
    return true if tower_c == [1,2,3]
    false
  end

end

#
# class Tower
#   def initialize
#     @pole = []
#   end
#
#   attr_reader :pole
#
#   def add_disk(arg) #take as numbers
#     @pole << arg
#   end
#
#   def take_disk
#     @pole.pop
#   end
#
# end
