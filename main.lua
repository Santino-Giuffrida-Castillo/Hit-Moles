require "src.menu"
require "src.credits"
require "src.howPlay"
require "src.game"
--main




-- Aca iria la carga de las variables 

function love.load()
  actualScreen = "menu"
  menuFont = love.graphics.newFont(12)
  menuTitleFont = love.graphics.newFont(40)
  love.window.setTitle("Hit-Moles")
end


-- Aca iria la logia del juego (todo lo que se tenga que actualizar)

function love.update(deltatime)

  if actualScreen == "playing" then
    updateGame(deltatime)
  end

end

--Aca ira el dibujo del juego
  function love.draw()    
    if actualScreen == "menu" then
      showMenu(menuFont, menuTitleFont)
    elseif actualScreen == "howPlay" then
      showHowPlay(menuFont, menuTitleFont)
    elseif actualScreen == "credits" then
      showCredits(menuFont, menuTitleFont)
    elseif actualScreen == "playing" or actualScreen == "lose"then

      playGame(menuFont)
    end
  end
  