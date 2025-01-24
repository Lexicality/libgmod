--- @meta

--- @class DBubbleContainer : DPanel
--- A transparent gray speech bubble panel made up of a rounded box and point coming from the bottom.  
local PANEL = {}
_G.DBubbleContainer = PANEL;
--- Returns Background Color, See DBubbleContainer:SetBackgroundColor  
function PANEL:GetBackgroundColor()
end

--- Sets the speech bubble position and size along with the dialog point position.  
--- @param x number @The x position of the dialog point
--- @param y number @The y position of the bubble container
--- @param w number @The width of the bubble container.
--- @param h number @The height of the bubble container.
function PANEL:OpenForPos(x, y, w, h)
end

--- Sets Background Color, See Also DBubbleContainer:GetBackgroundColor  
--- @param color GColor @The New Color
function PANEL:SetBackgroundColor(color)
end
