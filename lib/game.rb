require "board.rb"
require "player.rb"

class Game

  def initialize(player)
    @player = player
    @board = Board.new

  end

  attr_reader :player, :board

  def play

  end
end
