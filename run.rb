
require_relative "triangle"
require "gosu"

class GameWindow < Gosu::Window
	def initialize
		super 640, 480
		self.caption = "Shapes Thingy"

		@background = Gosu::Image.new("background.jpg", :tileable => true)
		@triangles = Array.new

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
		if Gosu::button_down? Gosu::MsLeft then
			@triangles.push(Triangle.new(mouse_x, mouse_y))
		end
	end

	def draw
		@triangles.each{|triangle| triangle.draw}
		@background.draw(0,0,0)
	end


window = GameWindow.new
window.show
end