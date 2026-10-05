local button4 = {}
button4.width = 250
button4.height = 50
button4.x = (screenWidth / 2) - button4.width / 2
button4.y = ((screenHeight / 4) + screenHeight / 8 * 3) - button4.height / 2 

function playGame(menuFont)
actualScreen = "lose"
love.graphics.setColor(1, 1, 1)

love.graphics.rectangle("fill",button4.x,button4.y,button4.width,button4.height)
love.graphics.printf("SALIR",button4.x,button4.y + (button4.height / 2) - 12 / 2,button4.width, "center")
love.mousepressed(x, y, button, istouch, presses)

love.graphics.setColor(0, 0, 0)
love.graphics.setFont(menuFont)
    
love.graphics.printf("SALIR",button4.x,button4.y + (button4.height / 2) - 12 / 2,button4.width, "center")

end