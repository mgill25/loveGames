function love.load()
  require "image"
  whale = Image(275, 350, "whale.png")
end

function love.update()
end

function love.draw()
  whale:draw()
end
