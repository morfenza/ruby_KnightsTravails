# frozen_string_literal: true

# Class defining a chess board
class Board
  attr_reader :board

  def initialize
    @board = Array.new(7) { Array(0..7) }
  end
end

b = Board.new

p b.board