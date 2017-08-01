function love.load()
  circle = {}
  circle.x = 100
  circle.y = 100
  circle.radius = 25
  circle.speed = 200
end

function love.update(dt)
  mouse_x, mouse_y = love.mouse.getPosition()

  -- Returns the angle (in radians) from the mouse to the circle's position
  angle = math.atan2(mouse_y - circle.y, mouse_x - circle.x)
  -- Angle returned in radians between -3.14 and 3.14 (negative and positive pi)
  -- 360 degrees = 2pi radians, so 90 degrees = pi/2 radians
  

  cos = math.cos(angle)
  sin = math.sin(angle)

  -- Make the circle move towards the mouse (cos for horizontal and sin for vertical here)
  circle.x = circle.x + circle.speed * cos * dt
  circle.y = circle.y + circle.speed * sin * dt
end

function love.draw()
  love.graphics.circle("line", circle.x, circle.y, circle.radius)

  love.graphics.print("angle: " .. angle, 10, 10)

  -- Some lines to visualize the velocities
  love.graphics.line(circle.x, circle.y, mouse_x, circle.y)   -- horizontal velocity
  love.graphics.line(circle.x, circle.y, circle.x, mouse_y)   -- vertical velocity

  -- Draw the angle line
  love.graphics.line(circle.x, circle.y, mouse_x, mouse_y)
end
