--creditos
local exitCreditsButton = {}
exitCreditsButton.width = 250
exitCreditsButton.height = 50
exitCreditsButton.x = (screenWidth / 2) - exitCreditsButton.width / 2
exitCreditsButton.y = ((screenHeight / 4) + screenHeight / 8 * 3) - exitCreditsButton.height / 2 

function showCredits(menuFont)

love.graphics.setColor(1, 1, 1)

love.graphics.rectangle("fill",exitCreditsButton.x,exitCreditsButton.y,exitCreditsButton.width,exitCreditsButton.height)

love.graphics.printf("SALIR",exitCreditsButton.x,exitCreditsButton.y + (exitCreditsButton.height / 2) - 12 / 2,exitCreditsButton.width, "center")

love.mousepressed(x, y, button, istouch, presses)

love.graphics.setColor(0, 0, 0)

love.graphics.setFont(menuFont)

love.graphics.printf("SALIR",exitCreditsButton.x,exitCreditsButton.y + (exitCreditsButton.height / 2) - 12 / 2,exitCreditsButton.width, "center")

end

