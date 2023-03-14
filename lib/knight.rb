# frozen_string_literal: true

# Class defining a knight piece
class Knight
  attr_reader :moveset

  def initialize(x_axis, y_axis)
    @location = [x_axis, y_axis]
    @moveset = available_moves(x_axis, y_axis)
  end

  def available_moves(x_axis, y_axis)
    moves = []

    x_counter = 2
    y_counter = 1

    1.upto(8) do |iteration|
      moves << [x_axis + x_counter, y_axis + y_counter] if out_of_bounds?(x_axis + x_counter, y_axis + y_counter)
      x_counter *= -1

      y_counter *= -1 if iteration.even?

      x_counter, y_counter = y_counter, x_counter if iteration == 4
    end

    moves.sort
  end

  def out_of_bounds?(x_axis, y_axis)
    return false unless x_axis.between?(0, 7)

    return false unless y_axis.between?(0, 7)

    true
  end
end

k = Knight.new(4, 4)
p k.moveset
