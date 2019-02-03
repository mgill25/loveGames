-- Player.lua 
Object = require "classic"
Player = Object:extend()     -- Player is now a class

function Player:new()
    self.image = love.graphics.newImage("panda.png")
    self.x = 300
    self.y = 20
    self.speed = 500
end

function Player:update(dt)
    if love.keyboard.isDown("left") then
        self.x = self.x - self.speed * dt
    elseif love.keyboard.isDown("right") then
        self.x = self.x + self.speed * dt
    end
end

function Player:draw()
    love.graphics.draw(self.image, self.x, self.y)
end

-- Capture the key pressed event.
function Player:keyPressed(key)
    if key == "space" then
        --Put a new instance of Bullet inside listOfBullets.
        table.insert(listOfBullets, Bullet(self.x, self.y))
    end
end