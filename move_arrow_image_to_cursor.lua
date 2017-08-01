function love.load()
    arrow = {}
    arrow.x = 200
    arrow.y = 200
    arrow.speed = 300
    arrow.angle = 0
    arrow.image = love.graphics.newImage("arrow_right.png")

    -- We want the arrow to rotate from its center instead of top-left
    arrow.origin_x = arrow.image:getWidth() / 2
    arrow.origin_y = arrow.image:getHeight() / 2
end

function love.update(dt)
    mouse_x, mouse_y = love.mouse.getPosition()
    -- Update the arrow angle to where the mouse is
    arrow.angle = math.atan2(mouse_y - arrow.y, mouse_x - arrow.x)
    cos = math.cos(arrow.angle)
    sin = math.sin(arrow.angle)

    -- Move the arrow image towards the mouse with given speed
    arrow.x = arrow.x + arrow.speed * cos * dt
    arrow.y = arrow.y + arrow.speed * sin * dt
end

function love.draw()
    love.graphics.draw(arrow.image, 
                       arrow.x, 
                       arrow.y, 
                       arrow.angle, 
                       1, 
                       1, 
                       arrow.origin_x,
                       arrow.origin_y)
    love.graphics.circle("fill", mouse_x, mouse_y, 5)
end
