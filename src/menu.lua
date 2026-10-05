--Saco el ancho y alto de la pantalla
screenWidth = love.graphics.getWidth()
screenHeight = love.graphics.getHeight()
--Pongo botones (como no hay structs, uso esto que es una tabla en teoria)
local button1 = {}
button1.width = 250
button1.height = 50
button1.x = (screenWidth / 2) - button1.width / 2
button1.y = (screenHeight / 4) - button1.height / 2 

local button2 = {}
button2.width = 250
button2.height = 50
button2.x = (screenWidth / 2) - button2.width / 2
button2.y = ((screenHeight / 4) + screenHeight / 8 ) - button2.height / 2 

local button3 = {}
button3.width = 250
button3.height = 50
button3.x = (screenWidth / 2) - button3.width / 2
button3.y = ((screenHeight / 4) + screenHeight / 8 * 2) - button3.height / 2 

local button4 = {}
button4.width = 250
button4.height = 50
button4.x = (screenWidth / 2) - button4.width / 2
button4.y = ((screenHeight / 4) + screenHeight / 8 * 3) - button4.height / 2 


 function showMenu (menuFont)


love.graphics.setColor(1, 1, 1)


love.graphics.rectangle("fill",button1.x,button1.y,button1.width,button1.height)

love.graphics.rectangle("fill",button2.x,button2.y,button2.width,button2.height)

love.graphics.rectangle("fill",button3.x,button3.y,button3.width,button3.height)

love.graphics.rectangle("fill",button4.x,button4.y,button4.width,button4.height)

--Le pongo la fuente que es la que viene por parametro
love.graphics.setColor(0, 0, 0)
love.graphics.setFont(menuFont)

--Uso printf para poner el texto de jugar
love.graphics.printf("JUGAR",button1.x,button1.y + (button1.height / 2) - 12 / 2,button1.width, "center")
love.graphics.printf("OPCIONES",button2.x,button2.y + (button2.height / 2) - 12 / 2,button2.width, "center")
love.graphics.printf("CREDITOS",button3.x,button3.y + (button3.height / 2) - 12 / 2,button3.width, "center")
love.graphics.printf("SALIR",button4.x,button4.y + (button4.height / 2) - 12 / 2,button4.width, "center")
 end
--Funcion para saber si el mouse se apreto en el boton
 
function love.mousepressed(x, y, button, istouch, presses)
    --Si se clickeo
    if button == 1 then
       if actualScreen == "menu" then
        if x >= button1.x and x <= (button1.x + button1.width) and y >= button1.y and y <= (button1.y + button1.height)then
            --JUGAR
            actualScreen = "playing"
        end
        if x >= button2.x and x <= (button2.x + button2.width) and y >= button2.y and y <= (button2.y + button2.height)then
            --OPCIONES
            actualScreen = "options"
        end
        if x >= button3.x and x <= (button3.x + button3.width) and y >= button3.y and y <= (button3.y + button3.height)then
            --CREDITOS
            actualScreen = "credits"
        end
        if x >= button4.x and x <= (button4.x + button4.width) and y >= button4.y and y <= (button4.y + button4.height)then
            --SALIR
            love.event.quit()
        end

      elseif actualScreen == "options" then
        if x >= button4.x and x <= (button4.x + button4.width) and y >= button4.y and y <= (button4.y + button4.height)then
            --SALIR
            actualScreen = "menu"
        end

      elseif actualScreen == "credits" then
        if x >= button4.x and x <= (button4.x + button4.width) and y >= button4.y and y <= (button4.y + button4.height)then
            --SALIR
            actualScreen = "menu"
        end
      elseif actualScreen == "lose" then  
                if x >= button4.x and x <= (button4.x + button4.width) and y >= button4.y and y <= (button4.y + button4.height)then
            --SALIR
            actualScreen = "menu"
        end
      elseif actualScreen == "win" then  
                if x >= button4.x and x <= (button4.x + button4.width) and y >= button4.y and y <= (button4.y + button4.height)then
            --SALIR
            actualScreen = "menu"
        end

      end 
        
    end
end
