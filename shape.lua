-- Shape baseclass (or superclass)
Object = require "classic"

Shape = Object:extend()     -- Shape is now a class

function Shape:new(x, y)
  self.x = x
  self.y = y
  self.speed = 100
end

function Shape:update(dt)
  self.x = self.x + self.speed * dt
end

