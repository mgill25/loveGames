-- Animation: Quads 
-- (Quadrilaterals - Polygons with 4 sides and 4 corners)

function love.load()
  image = love.graphics.newImage('jump.png')
  frames = {}
  local frame_width = 117
  local frame_height = 233
  -- Draw the first quad
  -- table.insert(frames, love.graphics.newQuad(0, 0, frame_width, frame_height, image:getWidth(), image:getHeight()))
  -- Second quad is of same width, so we just move the "rectangle" to the right
  -- table.insert(frames, love.graphics.newQuad(frame_width, 0, frame_width, frame_height, image:getWidth(), image:getHeight()))

  -- Draw all the quads
  for i=0,4 do
    -- Started loop at 0 since 0 * 177 = 0 which is position of first quad
    table.insert(frames, love.graphics.newQuad(i * frame_width, 0, frame_width, frame_height, image:getWidth(), image:getHeight()))
  end

  currentFrame = 1
end

function love.update(dt)
  speedFactor = 10
  currentFrame = currentFrame + (speedFactor * dt)
  if currentFrame > #frames then
    currentFrame = 1
  end
end

function love.draw()
  -- Draw whatever image we get from the current frame at 100,100 coordinates
  love.graphics.draw(image, frames[math.floor(currentFrame)], 100, 100)
end
