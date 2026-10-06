--opciones
local exitOptionsButton = {}
exitOptionsButton.width = 250
exitOptionsButton.height = 50
exitOptionsButton.x = (screenWidth / 2) - exitOptionsButton.width / 2
exitOptionsButton.y = ((screenHeight / 4) + screenHeight / 8 * 3) - exitOptionsButton.height / 2 

function showOptions(menuFont)
    
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill",exitOptionsButton.x,exitOptionsButton.y,exitOptionsButton.width,exitOptionsButton.height)
    love.graphics.printf("SALIR",exitOptionsButton.x,exitOptionsButton.y + (exitOptionsButton.height / 2) - 12 / 2,exitOptionsButton.width, "center")
    love.mousepressed(x, y, button, istouch, presses)

    love.graphics.setColor(0, 0, 0)
    love.graphics.setFont(menuFont)
    
    love.graphics.printf("SALIR",exitOptionsButton.x,exitOptionsButton.y + (exitOptionsButton.height / 2) - 12 / 2,exitOptionsButton.width, "center")
end