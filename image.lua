-- Image object oriented abstraction in Lua

Object = require "classic"

Image = Object:extend()

function Image:new(x, y, path)
  self.x = x
  self.y = y
  self.path = path
  self.image = love.graphics.newImage(path)
  self.imageWidth = self.image:getWidth()
  self.imageHeight = self.image:getHeight()
end

function Image:draw()
  -- Scale factors, to increase/decrease size
  -- use negative values to do mirroring
  sx = 1
  sy = 1
  -- x-origin and y-origin of the image
  ox = self.imageWidth / 2
  oy = self.imageHeight / 2
  love.graphics.draw(self.image, self.x, self.y, 0, sx, sy, ox, oy)
end
