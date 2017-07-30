function love.load()
  fruits = {"apple", "banana"}
  table.insert(fruits, "pear")
end

function love.update()
end

function love.draw()
  -- for i = 1, #fruits do
    -- love.graphics.print(fruits[i], 100, 100 * i)
  -- end
  
  -- Better way to loop through a table
  for i, v in ipairs(fruits) do
    love.graphics.print(i .. " " .. v, 100, 100 * i)
  end
end

