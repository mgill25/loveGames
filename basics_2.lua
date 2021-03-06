-- Load content before the game is started.
-- This function is called only once, initially.
function love.load()
  image = love.graphics.newImage("new_whale.jpg")
  love.graphics.setNewFont(12)
  love.graphics.setColor(0, 0, 0)
  love.graphics.setBackgroundColor(255, 255, 255)
end

-- Called continuously, probably where most of the mathematical
-- calculations would be done. dt stands for "delta time",
-- which is the amount of seconds since the last time this function
-- was called (which is usually a small value like 0.025714)
function love.update(dt)
  if love.keyboard.isDown("up") then
    num = num + 100 * dt  -- this would increment num by 100 per sec
  end
end


-- Where all the drawing happens!
-- This function is also called continuously,
-- so state change at the end can have an effect on
-- things at the beginning
function love.draw()
  -- love.graphics.print("Hello, World!", 400, 300)
  image = love.graphics.newImage("whale.png")
  love.graphics.draw(image, 0, 100)
end


-- Do something when mouse is clicked
function love.mousepressed(x, y, button, istouch)
  if button == 1 then
    imgx = x  -- move image to where mouse clicked
    imgy = y
  end
end

-- Other similar functions
-- mousereleased
-- keypressed
-- keyreleased

-- Focus - called whenever the user clicks off and on the Love window
-- Game could be notified if the user leaves the game and goes to
-- his browser
function love.focus(f)
  if not f then
    print("LOST FOCUS")
  else
    print("GAINED FOCUS")
  end
end

-- Called when the user clicks the window's close button.
function love.quit()
  print("Thanks for playing! Come back soon!")
end
