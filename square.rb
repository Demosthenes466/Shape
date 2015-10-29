require_relative "zorder"
require 'gosu'

class Square
	attr_reader :x, :y

	def initialize(x, y)
		@x = x
		@y = y
	end

	def draw
		Gosu.draw_line(@x, @y, 0xff_12ff00, @x + 100, @y, 0xff_12ff00, ZOrder::Square)
		Gosu.draw_line(@x, @y + 100, 0xff_12ff00, @x + 100, @y + 100, 0xff_12ff00, ZOrder::Square)
		Gosu.draw_line(@x, @y, 0xff_12ff00, @x, @y + 100, 0xff_12ff00, ZOrder::Square)
		Gosu.draw_line(@x + 100, @y, 0xff_12ff00, @x + 100, @y + 100, 0xff_12ff00, ZOrder::Square)
	end
end