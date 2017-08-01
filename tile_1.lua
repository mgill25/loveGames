function love.load()
  -- A 2-D tile map
  -- 1 = tile, 0 = empty 
  tilemap = {
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 1, 1, 1, 1, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
  }
end


function love.update(dt)
  -- body
end

function love.draw()
  for i, row in ipairs(tilemap) do
    for j, tile in ipairs(row) do
      if tile == 1 then
        love.graphics.rectangle("fill", j * 25, i * 25, 25, 25)
      end
    end
  end
end