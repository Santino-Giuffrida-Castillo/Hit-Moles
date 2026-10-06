--opciones
local exitOptionsButton = {}
exitOptionsButton.width = 250
exitOptionsButton.height = 50
exitOptionsButton.x = (screenWidth / 2) - exitOptionsButton.width / 2
exitOptionsButton.y = ((screenHeight / 4) + screenHeight / 8 * 3) - exitOptionsButton.height / 2 
local background = {}
background.image = love.graphics.newImage("res/Cartoon_Forest_BG_01.png")
function showHowPlay(menuFont, menuTitleFont)
    love.graphics.setFont(menuTitleFont)

    love.graphics.setColor(1, 1, 1)

    love.graphics.draw(background.image,0,0,0,screenWidth / background.image:getWidth(), screenHeight / background.image:getHeight())

    love.graphics.printf("¿COMO JUGAR?",235,50,350, "center")

    love.graphics.rectangle("fill",exitOptionsButton.x,exitOptionsButton.y,exitOptionsButton.width,exitOptionsButton.height)



    love.graphics.setFont(menuFont)
    love.graphics.printf("-Tenes que darle click izquierdo al topo cuando aparece en la pantalla",exitOptionsButton.x - 350,exitOptionsButton.y - 230,1000, "center")
    love.graphics.printf("-Tenes 3 vidas, si el topo desaparece antes de que lo desaparezcas perdes 1 vida",exitOptionsButton.x - 350,exitOptionsButton.y - 210,1000, "center")
    love.graphics.printf("-A medida que vas acumulando puntos, la velocidad aumenta!",exitOptionsButton.x - 350,exitOptionsButton.y - 190,1000, "center")
    love.graphics.setColor(0, 0, 0)
    love.graphics.printf("SALIR",exitOptionsButton.x,exitOptionsButton.y + (exitOptionsButton.height / 2) - 12 / 2,exitOptionsButton.width, "center")
end