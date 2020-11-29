--- @class GMarkupObject
--- Object containing parsed markup for later rendering. Created by markup.Parse.  
local GMarkupObject = {}
--- Draws the computed markupobject to the screen.  
--- @param xOffset number @The X coordinate on the screen.
--- @param yOffset number @The Y coordinate on the screen.
--- @param xAlign number @The alignment of the x coordinate using Enums/TEXT_ALIGN
--- @param yAlign number @The alignment of the y coordinate using Enums/TEXT_ALIGN
--- @param alphaoverride number @Sets the alpha of all drawn objects to this.
function GMarkupObject:Draw(xOffset, yOffset, xAlign, yAlign, alphaoverride)
end

--- Gets computed the height of the markupobject.  
--- @return number @The computed height.
function GMarkupObject:GetHeight()
end

--- Gets computed the width of the markupobject.  
--- @return number @The computed width.
function GMarkupObject:GetWidth()
end

--- Gets computed the width and height of the markupobject.  
--- @return number @The computed width.
--- @return number @The computed height.
function GMarkupObject:Size()
end

