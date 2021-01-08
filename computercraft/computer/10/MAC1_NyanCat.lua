-- © Marcel Märtens, Germany 2012
-- Please do not remove this hint. Thank you.

-- Diese Datei steht unter der Creative Commons Lizenz für Namensnennung-Weitergabe unter gleichen Bedingungen 3.0 Deutschland (CC BY-SA 3.0) 
-- Besuchen sie die folgende Website für weitere Informationen: http://creativecommons.org/licenses/by-sa/3.0/de/
-- website in english http://creativecommons.org/licenses/by-sa/3.0/


term.clear()
term.setCursorPos(1,1)
--while true do mTask.RunFile("/marcelOS/programs/vlc","/examples/evlc2") end

local star = {}
star.__index = star

local minX = 1
local maxX = 10
local monWidth, monHeight = term.getSize()

function star.create()
	local acnt = {}
	setmetatable(acnt,star)
	
    mx = math.floor(monWidth+2)
    my = math.floor(math.random(1,monHeight))
	
	acnt.x = mx
	acnt.y = my
	acnt.speed = math.floor(math.random(1,4))
	acnt.pos =math.floor(math.random(minX,maxX))
	return acnt
end

function rawWriteLoc(x,y,sText)
	term.setCursorPos(x,y)
	term.write(sText)
end

function star:clear()
if self.pos == 1 then
	rawWriteLoc(self.x,self.y," ")
	elseif (self.pos == 2) or (self.pos == 3) or (self.pos == 4) or (self.pos == 8) or (self.pos == 9) or (self.pos == 10) then
		
	rawWriteLoc(self.x-1,self.y-1,"   ")
	rawWriteLoc(self.x-1,self.y,  "   ")
	rawWriteLoc(self.x-1,self.y+1,"   ")
	elseif (self.pos == 5) or (self.pos == 6) or (self.pos == 7) then
		
	rawWriteLoc(self.x-2,self.y-2,"     ")
	rawWriteLoc(self.x-2,self.y-1,"     ")
	rawWriteLoc(self.x-2,self.y,  "     ")
	rawWriteLoc(self.x-2,self.y+1,"     ")
	rawWriteLoc(self.x-2,self.y+2,"     ")
	end
end

function star:draw()
if self.pos == 1 then
	rawWriteLoc(self.x,self.y,"+")
	elseif self.pos == 2 then
		
	rawWriteLoc(self.x-1,self.y-1," | ")
	rawWriteLoc(self.x-1,self.y,  "-+-")
	rawWriteLoc(self.x-1,self.y+1," | ")
	elseif self.pos == 3 then
		
	rawWriteLoc(self.x-1,self.y-1," | ")
	rawWriteLoc(self.x-1,self.y,  "- -")
	rawWriteLoc(self.x-1,self.y+1," | ")
	
	elseif self.pos == 4 then
			
	rawWriteLoc(self.x-1,self.y-1,"/-\\")
	rawWriteLoc(self.x-1,self.y,  "| |")
	rawWriteLoc(self.x-1,self.y+1,"\\-/")
	
	elseif self.pos == 5 then
			
	rawWriteLoc(self.x-2,self.y-2,"  |  ")
	rawWriteLoc(self.x-2,self.y-1," / \\ ")
	rawWriteLoc(self.x-2,self.y,  "-   -")
	rawWriteLoc(self.x-2,self.y+1," \\ / ")
	rawWriteLoc(self.x-2,self.y+2,"  |  ")
	
	elseif self.pos == 6 then
			
	rawWriteLoc(self.x-2,self.y-2," /-\\ ")
	rawWriteLoc(self.x-2,self.y-1,"/   \\")
	rawWriteLoc(self.x-2,self.y,  "|   |")
	rawWriteLoc(self.x-2,self.y+1,"\\   /")
	rawWriteLoc(self.x-2,self.y+2," \\-/ ")
	
	elseif self.pos == 7 then
			
	rawWriteLoc(self.x-2,self.y-2,"  |  ")
	rawWriteLoc(self.x-2,self.y-1," / \\ ")
	rawWriteLoc(self.x-2,self.y,  "-   -")
	rawWriteLoc(self.x-2,self.y+1," \\ / ")
	rawWriteLoc(self.x-2,self.y+2,"  |  ")
	
	elseif self.pos == 8 then
			
	rawWriteLoc(self.x-1,self.y-1,"/-\\")
	rawWriteLoc(self.x-1,self.y,  "| |")
	rawWriteLoc(self.x-1,self.y+1,"\\-/")
	
	elseif self.pos == 9 then
		
	rawWriteLoc(self.x-1,self.y-1," | ")
	rawWriteLoc(self.x-1,self.y,  "- -")
	rawWriteLoc(self.x-1,self.y+1," | ")
	
	elseif self.pos == 10 then
		
	rawWriteLoc(self.x-1,self.y-1," | ")
	rawWriteLoc(self.x-1,self.y,  "-+-")
	rawWriteLoc(self.x-1,self.y+1," | ")
	end
end

function star:move()
self.x = self.x - self.speed
return self.x > -4 
end

function Addstar()
local new = star.create()
local x = #star+1
star[x] = new
return new,x
end

function RenderStar()
local i,w = 1
for i,w in ipairs(star) do
	w:draw()
	end
end

function MoveStar()
local i,w = 1
for i,w in ipairs(star) do
	w:clear()
	if (math.random(1,6) < 4) then 
		w.pos = w.pos +1
		if w.pos > maxX then w.pos = minX end
		end
	if not w:move() then
	   star[i] = star[#star]
	   star[#star] = nil
	   end
	end
end

local catnr = 1
local catmax = 6
local catmin = 1
local catx = 0
local caty = math.floor((monHeight-4)/2)


function DrawCat()
if catnr == 1 then                   
	
	rawWriteLoc(catx,caty,  "--.__.--.__.--.__.--,------,  ")
	rawWriteLoc(catx,caty+1,"--.__.--.__.--.__.--|   /\\_/\\ ")
	rawWriteLoc(catx,caty+2,"--.__.--.__.--.__.-~|__( ^ .^)")
	rawWriteLoc(catx,caty+3,"--.__.--.__.--.__.--\"\"  \"\" ")
	
	elseif catnr == 2 then
		
	rawWriteLoc(catx,caty,  "-.__.--.__.--.__.--.,------,  ")
	rawWriteLoc(catx,caty+1,"-.__.--.__.--.__.--.|   /\\_/\\ ")
	rawWriteLoc(catx,caty+2,"-.__.--.__.--.__.--~|__( ^ .^)")
	rawWriteLoc(catx,caty+3,"-.__.--.__.--.__.--. \"\"  \"\" ")

	elseif catnr == 3 then
		
	rawWriteLoc(catx,caty,  ".__.--.__.--.__.--._,------,  ")
	rawWriteLoc(catx,caty+1,".__.--.__.--.__.--._|   /\\_/\\ ")
	rawWriteLoc(catx,caty+2,".__.--.__.--.__.--.~|__( ^ .^)")
	rawWriteLoc(catx,caty+3,".__.--.__.--.__.--._ \"\"  \"\" ")

	elseif catnr == 4 then
		
	rawWriteLoc(catx,caty,  "__.--.__.--.__.--.__,------,  ")
	rawWriteLoc(catx,caty+1,"__.--.__.--.__.--.__|   /\\_/\\ ")
	rawWriteLoc(catx,caty+2,"__.--.__.--.__.--._~|__( ^ .^)")
	rawWriteLoc(catx,caty+3,"__.--.__.--.__.--.__ \"\"  \"\" ")	
	
	elseif catnr == 5 then
		
	rawWriteLoc(catx,caty,  "_.--.__.--.__.--.__.,------,  ")
	rawWriteLoc(catx,caty+1,"_.--.__.--.__.--.__.|   /\\_/\\ ")
	rawWriteLoc(catx,caty+2,"_.--.__.--.__.--.__~|__( ^ .^)")
	rawWriteLoc(catx,caty+3,"_.--.__.--.__.--.__.\"\"  \"\" ")	
	
	elseif catnr == 6 then
		
	rawWriteLoc(catx,caty,  ".--.__.--.__.--.__.-,------,  ")
	rawWriteLoc(catx,caty+1,".--.__.--.__.--.__.-|   /\\_/\\ ")
	rawWriteLoc(catx,caty+2,".--.__.--.__.--.__.~|__( ^ .^)")
	rawWriteLoc(catx,caty+3,".--.__.--.__.--.__.-\"\"  \"\" ")

	end


catnr = catnr + 1
if catnr > catmax then catnr = catmin end
end

while true do
	if (math.random(1,6) < 4) then
		Addstar()
		end
	MoveStar()
	RenderStar()
	DrawCat()
	sleep(0.05)
	end