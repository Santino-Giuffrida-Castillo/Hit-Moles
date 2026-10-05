require "src.menu"
require "src.credits"
require "src.options"
require "src.game"





-- Aca iria la carga de las variables 

function love.load()
  actualScreen = "menu"
  menuFont = love.graphics.newFont(12)
  love.window.setTitle("Hit-Moles")
end

 
-- Aca iria la logia del juego (todo lo que se tenga que actualizar)

function love.update()

  if actualScreen == "playing" then
    
  end

end

--Aca ira el dibujo del juego
   function love.draw()    
    if actualScreen == "menu" then
      showMenu(menuFont)
    elseif actualScreen == "options" then
      showOptions(menuFont)
    elseif actualScreen == "credits" then
      showCredits(menuFont)
    elseif actualScreen == "playing" or actualScreen == "lose" or actualScreen == "win" then
      playGame(menuFont)
    end
  end
  