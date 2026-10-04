
-- Aca iria la carga de las variables 

function love.load()
    x, y, w, h = 20, 20, 60, 20
end


-- Aca iria la logia del juego (todo lo que se tenga que actualizar)

function love.update()
    w = w + 1
    h = h + 1
end

--Aca ira el dibujo del juego

function love.draw()
    love.graphics.setColor(0, 0.4, 0.4)
    love.graphics.rectangle("fill", x, y, w, h)
end