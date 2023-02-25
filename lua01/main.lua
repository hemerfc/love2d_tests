debug = true -- Add a quick flag to handle our development process.  Set to false before packaging

-- Pull in the Bump library
Bump = require 'libs.bump.bump'

-- Pull in Gamestate from the HUMP library
Gamestate = require 'libs.hump.gamestate'

function love.load()
    -- image = love.graphics.newImage("cake.jpg")
    love.graphics.setNewFont(12)
    love.graphics.setColor(0,0,0)
    love.graphics.setBackgroundColor(255,255,255)
    Num = 0
 end

function love.update(dt)
    if love.keyboard.isDown("up") then
       Num = Num + 100 * dt -- this would increment num by 100 per second
    end
end

function love.draw()
    love.graphics.print("Count"..tostring(Num) , 400, 300)
end