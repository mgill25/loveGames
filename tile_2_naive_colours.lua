function love.load()
  -- A 2-D tile map
  tilemap = {
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 2, 2, 2, 2, 2, 2, 2, 2, 1},
    {1, 2, 3, 4, 5, 5, 4, 3, 2, 1},
    {1, 2, 2, 2, 2, 2, 2, 2, 2, 1},
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
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
        if tile == 1 then
          love.graphics.setColor(255, 255, 255)
        elseif tile == 2 then
          love.graphics.setColor(255, 0, 0)
        elseif tile == 3 then
          love.graphics.setColor(255, 0, 255)
        elseif tile == 4 then
          love.graphics.setColor(0, 0, 255)
        elseif tile == 5 then
          love.graphics.setColor(0, 255, 255)
        end
        love.graphics.rectangle("fill", j * 25, i * 25, 25, 25)
      end
    end
  end
end