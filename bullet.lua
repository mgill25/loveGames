--! file: bullet.lua

Bullet = Object:extend()

function Bullet:new(x, y)
  self.image = love.graphics.newImage("bullet.png")
  self.x = x + 50
  self.y = y + 70
  self.speed = 700

  -- Needed for collision detection
  self.width = self.image:getWidth()
  self.height = self.image:getHeight()
end

function Bullet:update(dt)
  self.y = self.y + self.speed * dt

  -- If the bullet is out of the screen, reload game
  -- (We have missed the enemy, restart game)
  if self.y > love.graphics.getHeight() then
    -- Restart game
    love.load()
  end
end

function Bullet:draw()
  love.graphics.draw(self.image, self.x, self.y)
end

-- Bullet needs to collide with the snake
function Bullet:checkCollision(obj)
  local self_left = self.x
  local self_right = self.x + self.width
  local self_top = self.y
  local self_bottom = self.y + self.height

  -- Same vars for the object
  local obj_left = obj.x
  local obj_right = obj.x + obj.width
  local obj_top = obj.y
  local obj_bottom = obj.y + obj.height
  
  if self_right > obj_left and
    self_left < obj_right and
    self_bottom > obj_top and
    self_top < obj_bottom then
    -- Collision happened
    self.used = true
    if obj.speed < 0 then
      obj.speed = obj.speed - 50
    else
      obj.speed = obj.speed + 50
    end
    print('new speed: ' .. obj.speed)
  end
end
