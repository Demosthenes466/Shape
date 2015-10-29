require_relative "zorder"
require 'gosu'

class Square
	attr_reader :x, :y, :fill_x, :color

	def initialize(x, y, fill_x)
		@x = x
		@y = y
		@fill_x = fill_x
		@color = 0xff_12ff00
	end



	def draw
		for i in 1..fill_x do 
			Gosu.draw_line(@x, @y + i, @color, @x + @fill_x, @y + i, @color, ZOrder::Square)
		end
	end
end