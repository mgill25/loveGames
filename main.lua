function love.load()

  -- Load image for the tileset and use quads
  image = love.graphics.newImage("tileset.png")

  -- Get the width and heigh of tileset
  local image_width = image:getWidth()
  local image_height = image:getHeight()

  -- Width and Height of each tile?
  -- 32x32. But say we don't know it. We use number of rows and columns
  -- in the tileset! (2 rows, 3 columns in tileset)
  width = (image_width / 3) - 2
  height = (image_height / 2) - 2

  -- Create quads
  quads = {}

  for i = 0,1 do
    for j = 0,2 do
      quad = love.graphics.newQuad(1 + j * (width + 2), 1 + i * (height + 2), width, height, image_width, image_height)
      table.insert(quads, quad)
    end
  end

  tilemap = {
    {1, 6, 6, 2, 1, 6, 6, 2},
    {3, 0, 0, 4, 5, 0, 0, 3},
    {3, 0, 0, 0, 0, 0, 0, 3},
    {4, 2, 0, 0, 0, 0, 1, 5},
    {1, 5, 0, 0, 0, 0, 4, 2},
    {3, 0, 0, 0, 0, 0, 0, 3},
    {3, 0, 0, 1, 2, 0, 0, 3},
    {4, 6, 6, 5, 4, 6, 6, 5}
  }

  -- Player
  player = {
    image = love.graphics.newImage('player.png'),
    -- player's position on our tilemap
    -- multiply by tile width and height when drawn
    tile_x = 2,
    tile_y = 2
  }
end


function love.update(dt)
  -- body
end

function love.draw()
  for i,row in ipairs(tilemap) do
    for j,tile in ipairs(row) do
      if tile ~= 0 then
        --Draw the image with the correct quad
        love.graphics.draw(image, quads[tile], j * width, i * height)
      end 
    end
  end

  -- Draw the player on top
  love.graphics.draw(player.image, player.tile_x * width, player.tile_y * height)
end

-- Make the player jump when a key is pressed
function love.keypressed(key)
  local x = player.tile_x
  local y = player.tile_y
  if key == "left" then
    if isEmpty(x - 1, y) then
      player.tile_x = x - 1
    end
  elseif key == "right" then
    if isEmpty(x + 1, y) then
      player.tile_x = x + 1
    end
  elseif key == "up" then
    if isEmpty(x, y - 1) then
      player.tile_y = y - 1
    end
  elseif key == "down" then
    if isEmpty(x, y + 1) then
      player.tile_y = y + 1
    end
  end
end

function isEmpty(x, y)
  -- y = row, x == column
  return tilemap[y][x] == 0
end