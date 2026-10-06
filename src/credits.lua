--creditos
local exitCreditsButton = {}
exitCreditsButton.width = 250
exitCreditsButton.height = 50
exitCreditsButton.x = (screenWidth / 2) - exitCreditsButton.width / 2
exitCreditsButton.y = ((screenHeight / 4) + screenHeight / 8 * 3) - exitCreditsButton.height / 2 
local background = {}
background.image = love.graphics.newImage("res/Cartoon_Forest_BG_01.png")

function showCredits(menuFont, menuTitleFont)




love.graphics.setFont(menuTitleFont)
love.graphics.setColor(1, 1, 1)
love.graphics.draw(background.image,0,0,0,screenWidth / background.image:getWidth(), screenHeight / background.image:getHeight())
love.graphics.printf("Creditos",exitCreditsButton.x,exitCreditsButton.y - 300,exitCreditsButton.width, "center")
love.graphics.printf("MADE BY:SANTINO GIUFFRIDA CASTILLO",exitCreditsButton.x - 375,exitCreditsButton.y - 200,1000, "center")
love.graphics.rectangle("fill",exitCreditsButton.x,exitCreditsButton.y,exitCreditsButton.width,exitCreditsButton.height)
love.graphics.setFont(menuFont)
love.graphics.printf("ASSETS del topo: By dhtgip. Page:https://www.vecteezy.com/vector-art/41911583-mole-cartoon-roughen-filled-outline-icon",exitCreditsButton.x - 350,exitCreditsButton.y - 250,1000, "center")
love.graphics.printf("ASSETS del background: By Free-Game-Assets. Page: https://free-game-assets.itch.io/free-cartoon-forest-2d-backgrounds",exitCreditsButton.x - 350,exitCreditsButton.y - 230,1000, "center")


love.graphics.setColor(0, 0, 0)



love.graphics.printf("SALIR",exitCreditsButton.x,exitCreditsButton.y + (exitCreditsButton.height / 2) - 12 / 2,exitCreditsButton.width, "center")

end

