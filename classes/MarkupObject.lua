--- @meta

--- @class GMarkupObject
--- Object containing parsed markup for later rendering. Created by markup.Parse.  
local GMarkupObject = {}
--- Draws the computed markupobject to the screen. See markup.Parse.  
--- @param xOffset number @The X coordinate on the screen.
--- @param yOffset number @The Y coordinate on the screen.
--- @param xAlign? number @The alignment of the x coordinate within the text using Enums/TEXT_ALIGN
--- @param yAlign? number @The alignment of the y coordinate within the text using Enums/TEXT_ALIGN
--- @param alphaoverride? number @Sets the alpha of all drawn objects to this value.
--- @param textAlign? number @The alignment of the text horizontally using Enums/TEXT_ALIGN
function GMarkupObject:Draw(xOffset, yOffset, xAlign, yAlign, alphaoverride, textAlign)
end

--- Gets computed the height of the markupobject.  
--- @return number @The computed height.
function GMarkupObject:GetHeight()
end

--- Gets maximum width for this markup object as defined in markup.Parse.  
--- @return number @The max width.
function GMarkupObject:GetMaxWidth()
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

