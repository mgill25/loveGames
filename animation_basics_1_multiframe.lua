-- Animation
function love.load()
  -- Create the frames, using one image for each frame
  frames = {}
  for i=1,5 do
    table.insert(frames, love.graphics.newImage("jump/jump" .. i .. ".png"))
  end

  currentFrame = 1
end

-- dt is in the order of 1/10, so math.floor() will
-- always prevent the frame index value from going
-- above 1, hence, use it inside draw() rather than here.
function love.update(dt)
  speedFactor = 10
  -- print('delta time is: ' .. dt)
  currentFrame = currentFrame + (speedFactor * dt)
  -- print('Updated frame is: ' .. currentFrame)
  -- currentFrame = math.floor(currentFrame)
  -- print('Floored frame value: ' .. currentFrame)
  if currentFrame >= 6 then
    currentFrame = 1
  end
end

function love.draw()
  -- We have currentFrame increasing by 1 every second.
  -- We use this to draw the frames
  -- drawFrame = frames[math.floor(currentFrame)]
  -- print('drawable frame index: ' .. currentFrame)
  drawFrame = frames[math.floor(currentFrame)]
  love.graphics.draw(drawFrame)
end
