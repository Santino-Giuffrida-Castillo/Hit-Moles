
 function showMenu  ()

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

love.graphics.setColor(1, 1, 1)

love.graphics.rectangle("fill",button1.x,button1.y,button1.width,button1.height)

love.graphics.rectangle("fill",button2.x,button2.y,button2.width,button3.height)

love.graphics.rectangle("fill",button3.x,button3.y,button3.width,button3.height)

 end

  --Funcion para saber si el mouse se apreto en el boton
function love.mousepressed(x, y, button, istouch, presses)
    --Si se clickeo
    if button == 1 then
        --tengo que chequear si el xy del click esta adentro del boton
        if x >= button.x and x <= (button.x + button.width) and y >= button.y and (button.y + button.height)  then
            print("HOLA PAPU!")
        end
        
    end
end

