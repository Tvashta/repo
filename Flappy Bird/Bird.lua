Bird = Class()

function Bird:init()
   self.image = love.graphics.newImage('bird.png')
   self.width = self.image:getWidth()
   self.height = self.image:getHeight()
   
   self.x = VIRTUAL_WIDTH/2 - (self.width/2)
   self.y = VIRTUAL_HEIGHT/2 - (self.height/2)

   self.dy = 0
end

function Bird:render()
    love.graphics.draw(self.image, self.x, self.y)
end

function Bird:update(dt)
    self.dy = self.dy + GRAVITY * dt

    if love.keyboard.isPressed('space') then
        self.dy = -5
    end
    if self.y + self.dy <=VIRTUAL_HEIGHT-self.height then
        self.y =  self.y + self.dy
        if self.y < 0 then
            self.y =0
        end
    end
end