require_relative "zorder"
require 'gosu'

class Rectangle
	attr_reader :x, :y, :fill_x, :color

	def initialize(x, y, fill_x)
		@x = x
		@y = y
		@fill_x = fill_x
		@color = 0xff_0012ff
	end

	def draw

		for i in 0..fill_x do 
			Gosu.draw_line(@x, @y + i, @color, @x + 2*@fill_x, @y + i, @color, ZOrder::Square)
		end
	end
end