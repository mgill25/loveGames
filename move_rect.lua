function love.load()
  x = 100
  y = 50
end

-- Use the keyboard to move the rectangle. :p :o
function love.update(dt)
  local isDown = love.keyboard.isDown

  local step = 200
  local realStep = step * dt

  if isDown("right") then
    x = x + realStep
  elseif isDown("left") then
    x = x - realStep
  elseif isDown("down") then  -- move UP on pressing down (y increments as we go down)
    y = y + realStep
  elseif isDown("up") then
    y = y - realStep
  end
end

function love.draw()
  love.graphics.rectangle("fill", x, y, 200, 150)
end
