function love.load()
  love.graphics.setColor(0,0,0)
end

function love.draw()
  love.graphics.print("This text is not black because of the line below", 100, 100)
  love.graphics.setColor(255,0,0)
  love.graphics.print("This text is red", 100, 200)
end
