function love.load()
  tick = require "tick"
  shouldDrawRect = false

  -- Notice that we pass a lambda as the first argument!
  tick.delay(function() shouldDrawRect = true end, 2)
end

function love.update(dt)
  tick.update(dt)
end

function love.draw()
  if shouldDrawRect then
    love.graphics.rectangle("fill", 100, 100, 300, 200)
  end
end
