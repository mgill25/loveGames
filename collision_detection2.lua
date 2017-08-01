-- Collision

function love.load()
  -- create 2 rectangles
  require "rectangle"
  r1 = Rectangle(10, 100, 100, 100)
  r2 = Rectangle(250, 120, 150, 120)
end

function love.update(dt)
  r1.x = r1.x + 100 * dt
end

function love.draw()
  local mode
  if checkCollision(r1, r2) then
    mode = "fill"
  else
    mode = "line"
  end
  r1:draw(mode)
  r2:draw(mode)
end

-- Helper utility to check collisions for rectangles
function checkCollision(a, b)
  -- This function will be accurate regardless of the order
  -- of the rectangles a and b.

  -- Lua convention to use underscores for local variables
  local a_left = a.x
  local a_right = a.x + a.width
  local a_top = a.y
  local a_bottom = a.y + a.height


  local b_left = b.x
  local b_right = b.x + b.width
  local b_top = b.y
  local b_bottom = b.y + b.height

  -- We now check for collisions. There are 4 conditions that need
  -- to be satisfied for there to be a collision between 2 rectangles
  if a_right > b_left and   -- a's right side is to the right of b's left
     a_left < b_right and   -- a's left side is to the left of b's right
     a_bottom > b_top and   -- a's bottom side is to the bottom of b's top
     a_top < b_bottom then  -- a's top side is to the top of b's bottom
    -- there is a collision
    return true
  else
    return false
  end
end
