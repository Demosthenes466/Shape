require_relative "zorder"

class Triangle
	attr_reader :x, :y

	def initialize(x, y)
		@x = x
		@y = y
	end

	def draw
		Gosu.draw_line(@x, @y, 0xff_12ff00, @x + 50, @y + 50, 0xff_12ff00, ZOrder::Triangle)
		Gosu.draw_line(@x, @y, 0xff_12ff00, @x, @y + 50, 0xff_12ff00, ZOrder::Triangle)
		print "Clicked"
	end
end
