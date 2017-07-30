-- Moving a rectangle! This is so cool :D

function love.load()
  x = 100
end

function love.update(dt)
  -- dt is delta-time, which is the time that has passed
  -- between the previous and the current update() callback.
  -- Multiply by dt to make it run with equal speed on all computers
  -- Why? Say we have 2 computers with 2 different FPS rates
  -- A => 100 FPS
  -- B => 200 FPS
  -- If we update x by 5 in every update call,
  -- On computer A, we're incrementing X by 500 
  -- On computer B, we're incrementing X by 1000
  -- How does DT helps?
  -- DT (Computer A) => 1 / 100 => 0.01
  -- DT (Computer B) => 1 / 200 => 0.005
  -- Therefore, by doing (FPS * x * DT), we get: 
  -- 100 * 5 * 0.01 => 5 pixels
  -- 200 * 5 * 0.005 => 5 pixels
  -- Hence, we can now update x with the same speed on computers with
  -- different Frames per second

  -- x = x + 5 * dt   -- This gets too slow, bump x from 5 to 200
  x = x + 200 * dt
end

function love.draw()
  -- draw the rectangle
  love.graphics.rectangle("fill", x, 50, 200, 150)
end
