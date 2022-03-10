

--Initialisation
local allStar = {}

local timer = 1

--Creat circle
function CreateCircle()
  local star = {}
  star.x = love.math.random(300,400)
  star.y = love.math.random(300,400)
  star.rayon = love.math.random(2,10)
  star.red = love.math.random(0.1,1)
  star.green = love.math.random(0.1,1)
  star.blue = love.math.random(0.1,1)
  star.vitesse = love.math.random(1,5)
  star.alpha = love.math.random(0.1,1)
  
  table.insert(allStar,star)
  end

function love.load()
  love.window.setTitle("Hallucination")
end

function love.update()
  
  timer = timer - 0.1
  
  --timer
  if timer < 0 then
    CreateCircle()
    timer = 1
  end
  
  if #allStar > 40 then
    table.remove(allStar,1)
  end
  
end



function love.draw()
  
  
  --Show color circle
  for numb,star in ipairs(allStar) do
    star.rayon = star.rayon + star.vitesse
    love.graphics.setColor(star.red,star.green,star.blue,star.alpha)
    love.graphics.circle("fill",star.x,star.y,star.rayon)
    love.graphics.reset()
    
    
    
  end

  
  end