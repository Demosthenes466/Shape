require_relative "zorder"

class Triangle
	attr_reader :x, :y, :fill_x

	def initialize(x, y, fill_x)
		@x = x
		@y = y
		@fill_x = fill_x
	end

	def draw
		for i in 0..fill_x do 
			Gosu.draw_line(@x-i/2, @y+ i, 0xff_12ff00, @x + i/2, @y + i, 0xff_12ff00, ZOrder::Triangle)
		end
		Gosu.draw_line(@x, @y, 0xff_12ff00, @x + fill_x/2, @y + fill_x, 0xff_12ff00, ZOrder::Triangle)
		Gosu.draw_line(@x, @y, 0xff_12ff00, @x - fill_x/2, @y + fill_x, 0xff_12ff00, ZOrder::Triangle)
		# Gosu.draw_line(@x, @y, 0xff_12ff00, @x, @y + 50, 0xff_12ff00, ZOrder::Triangle)
	end
end
