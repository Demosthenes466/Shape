
require_relative "triangle"
require_relative "rectangle"
require_relative "square"
require "gosu"

class GameWindow < Gosu::Window
	def initialize
		super 640, 480
		@window_height = 640
		@window_width = 480
		self.caption = "Shapes Thingy"

		@background = Gosu::Image.new("background.jpg", :tileable => true)
		@triangles = Array.new
		@rectangles = Array.new
		@squares = Array.new

	end

	def needs_cursor?
		true
	end

	def button_down(id)
		if id == Gosu::MsLeft
			true
		end
	end


	def update

		if Gosu::button_down? Gosu::MsMiddle then
			@triangles.push(Triangle.new(mouse_x, mouse_y, @window_width / 10))
		end

		if Gosu::button_down? Gosu::MsLeft then
			@squares.push(Square.new(mouse_x, mouse_y, @window_height / 10))
		end

		if Gosu::button_down? Gosu::MsRight then
			@rectangles.push(Rectangle.new(mouse_x, mouse_y, @window_height / 10))
		end
	end

	def draw
		@triangles.each{|triangle| triangle.draw}
		@rectangles.each{|rectangle| rectangle.draw}
		@squares.each{|square| square.draw}

		@background.draw(0,0,0)
	end


window = GameWindow.new
window.show
end