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
mole.timeToReactivate = 2;

local player = {}
player.points = 0
player.lives = 3

function initPlayer()
player.points = 0
player.lives = 3
end

function spawnMole()
    mole.x = math.random(mole.width, screenWidth - mole.width)
    mole.y = math.random(mole.height, screenHeight - mole.height)
    mole.isActive = true
    mole.timeActive = 2
end

function updateGame(deltatime)

if player.lives <= 0 then
    actualScreen = "lose"
end

if mole.isActive == false then
    mole.timeToReactivate = mole.timeToReactivate - deltatime
    if mole.timeToReactivate <= 0 then
        spawnMole()
        if player.points >= 5 and player.points < 30 then
        mole.timeActive = mole.timeActive - 1 
        elseif player.points >= 30 and player.points < 50 then
        mole.timeActive = mole.timeActive - 1.25 
        elseif player.points >= 50 then
        mole.timeActive = mole.timeActive - 1.5
        end

    end
end

if mole.isActive == true then
    mole.timeActive = mole.timeActive - deltatime
    if mole.timeActive <= 0 then
        mole.isActive = false
        player.lives = player.lives - 1
        mole.timeToReactivate = 2
    end
end



end

function drawMole()
    if mole.isActive == true and player.lives > 0 then
    love.graphics.draw(mole.image,mole.x,mole.y,0,mole.width / mole.image:getWidth(),mole.height / mole.image:getHeight())
    end
end

function killMole(x,y)
    if x >= mole.x and x <= (mole.x + mole.width) and y >= mole.y and y <= (mole.y + mole.height) and mole.isActive == true then
        mole.isActive = false
        mole.timeToReactivate = 2
        player.points = player.points + 1
    end
end

function playGame(menuFont)

love.graphics.setColor(1, 1, 1)
--imprimir vida 
love.graphics.printf("Vidas:",-100,0 + (exitGameButton.height / 2) - 12 / 2,exitGameButton.width, "center")
love.graphics.printf(player.lives,(0 - 100) + 35,0+ (exitGameButton.height / 2) - 12 / 2,exitGameButton.width, "center")
--imprimir los puntos
love.graphics.printf("Puntos:",-20,0 + (exitGameButton.height / 2) - 12 / 2,exitGameButton.width, "center")
love.graphics.printf(player.points,(0 - 20) + 35,0+ (exitGameButton.height / 2) - 12 / 2,exitGameButton.width, "center")
drawMole()
--Pantalla derrota 
if actualScreen == "lose" then
love.graphics.printf("Puntos:",exitGameButton.x,exitGameButton.y - 50 + (exitGameButton.height / 2) - 12 / 2,exitGameButton.width, "center")
love.graphics.printf(player.points,exitGameButton.x + 35,exitGameButton.y -50 + (exitGameButton.height / 2) - 12 / 2,exitGameButton.width, "center")
love.graphics.rectangle("fill",exitGameButton.x,exitGameButton.y,exitGameButton.width,exitGameButton.height)
love.graphics.printf("SALIR",exitGameButton.x,exitGameButton.y + (exitGameButton.height / 2) - 12 / 2,exitGameButton.width, "center")

love.graphics.setColor(0, 0, 0)
love.graphics.setFont(menuFont)
    
love.graphics.printf("SALIR",exitGameButton.x,exitGameButton.y + (exitGameButton.height / 2) - 12 / 2,exitGameButton.width, "center")
end



end
