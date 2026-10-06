--juego
local exitGameButton = {}
exitGameButton.width = 250
exitGameButton.height = 50
exitGameButton.x = (screenWidth / 2) - exitGameButton.width / 2
exitGameButton.y = ((screenHeight / 4) + screenHeight / 8 * 3) - exitGameButton.height / 2 

local mole = {}
mole.x = 0
mole.y = 0
mole.height = 50
mole.width = 50
mole.isActive = false
mole.image = love.graphics.newImage("res/mole.jpg")
mole.timeActive = 2

function spawnMole()
    mole.x = 10
    mole.y = 10
    mole.isActive = true
end

function updateGame(dt)

end

function drawMole()
    if mole.isActive == true then
    love.graphics.draw(mole.image,mole.x,mole.y,0,mole.width / mole.image:getWidth(),mole.height / mole.image:getHeight())
    end
end

function killMole(x,y)
    if x >= mole.x and x <= (mole.x + mole.width) and y >= mole.y and y <= (mole.y + mole.height) then
        mole.isActive = false
    end
end

function playGame(menuFont)

drawMole()
love.graphics.setColor(1, 1, 1)
if actualScreen == "lose" or actualScreen == "win" then
love.graphics.rectangle("fill",exitGameButton.x,exitGameButton.y,exitGameButton.width,exitGameButton.height)
love.graphics.printf("SALIR",exitGameButton.x,exitGameButton.y + (exitGameButton.height / 2) - 12 / 2,exitGameButton.width, "center")
love.mousepressed(x, y, button, istouch, presses)

love.graphics.setColor(0, 0, 0)
love.graphics.setFont(menuFont)
    
love.graphics.printf("SALIR",exitGameButton.x,exitGameButton.y + (exitGameButton.height / 2) - 12 / 2,exitGameButton.width, "center")
end



end
