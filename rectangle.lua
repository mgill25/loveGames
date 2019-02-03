require "shape"

Rectangle = Shape:extend()

function Rectangle:new(x, y, width, height)
  self.x = x
  self.y = y
  self.width = width
  self.height = height
  Rectangle.super.new(self, x, y, width, height)
end

function Rectangle:draw(mode)
  love.graphics.rectangle(mode, self.x, self.y, self.width, self.height)
end
