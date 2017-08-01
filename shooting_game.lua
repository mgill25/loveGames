function love.load()
	Object = require "classic"
  require "player"
  require "enemy"
  require "bullet"

  player = Player()
  enemy = Enemy()
  listOfBullets = {}
end

function love.update(dt)
  player:update(dt)
  enemy:update(dt)

  for i, v in ipairs(listOfBullets) do
    v:update(dt)
    -- check collision after each update
    v:checkCollision(enemy)

    -- Remove used bullets
    if v.used then
      table.remove(listOfBullets, i)
    end
  end
end

function love.draw()
  player:draw()
  enemy:draw()

  -- In each update, iterate through the current list of bullets and draw them
  for i, v in ipairs(listOfBullets) do
    v:draw()
  end
end

function love.keypressed(key)
  player:keyPressed(key)
end
