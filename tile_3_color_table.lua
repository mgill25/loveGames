function love.load()
  -- A 2-D tile map
  tilemap = {
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 2, 2, 2, 2, 2, 2, 2, 2, 1},
    {1, 2, 3, 4, 5, 5, 4, 3, 2, 1},
    {1, 2, 2, 2, 2, 2, 2, 2, 2, 1},
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
  }

  -- Color table
  colors = {
    {255, 255, 255},
    {255, 0, 0},
    {255, 0, 255},
    {0, 0, 255},
    {0, 255, 255}
  }
end


function love.update(dt)
  -- body
end

function love.draw()
  -- Draw tiles in different colours based on values
  for i, row in ipairs(tilemap) do
    for j, tile in ipairs(row) do
      if tile ~= 0 then
        love.graphics.setColor(colors[tile])
        love.graphics.rectangle("fill", j * 25, i * 25, 25, 25)
      end
    end
  end
end