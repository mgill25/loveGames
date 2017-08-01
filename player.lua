--! file: player.lua

Player = Object:extend()

function Player:new()
  self.image = love.graphics.newImage("panda.png")
  self.x = 300
  self.y = 20
  self.speed = 500
  self.width = self.image:getWidth()
end

-- Move the player with arrow keys
function Player:update(dt)
  if love.keyboard.isDown("left") then
    self.x = self.x - self.speed * dt
  elseif love.keyboard.isDown("right") then
    self.x = self.x + self.speed * dt
  end

  -- Don't let the player get out of the window!
  local window_width = love.graphics.getWidth()

  if self.x < 0 then
    -- Don't go too far left!
    self.x = 0
  elseif self.x + self.width > window_width then
    -- or too far right
    self.x = window_width - self.width
  end
end

function Player:draw()
  love.graphics.draw(self.image, self.x, self.y)
end


-- Player can shoot bullets
function Player:keyPressed(key)
  if key == "space" then
    table.insert(listOfBullets, Bullet(self.x, self.y))
  end
end
