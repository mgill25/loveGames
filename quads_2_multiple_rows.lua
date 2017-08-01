-- Animation: Quads 2: Quads on multiple rows

function love.load()
  image = love.graphics.newImage('jump_2.png')
  frames = {}
  local frame_width = 117
  local frame_height = 233
  maxFrames = 5
  for i=0,1 do
    for j=0,2 do
      table.insert(frames, love.graphics.newQuad(j * frame_width, i * frame_height, frame_width, frame_height, image:getWidth(), image:getHeight()))
      if #frames == maxFrames then
        break
      end
    end
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
