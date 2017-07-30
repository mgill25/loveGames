# Love is a framework made with C++ and OpenGL :o

## How does love work?
    1. love.load()
    2. love.update() 
    3. love.draw()
    4. goto 2 (repeatedly call update and draw, in that order)

love.load -> love.update -> love.draw -> love.update -> love.draw -> ...


1. Write Code, main.lua
2. $ open -n -a love "." where if $CWD has a main.lua file.


# Modules

love:
    - event
    - filesystem 
    - font
    - graphics
    - image
    - math
    - video
    - audio
    - mouse
    - physics
    - system
    - thread
    - timer
    - touch
    - window
    - joystick
    - keyboard
    - sound


Third party
    - lua-enet (multiplayer networking module)
    - socket (HTTP, TCP, UDP networking)
    - utf8


References
    1. https://www.love2d.org/wiki/Category:Tutorials
    2. http://sheepolution.com/learn
