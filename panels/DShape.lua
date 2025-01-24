--- @meta

--- @class DShape : DPanel
--- Draw a shape on a derma panel. Only one kind of shape, a rectangle, is available for use.  
local PANEL = {}
_G.DShape = PANEL;
--- Returns the current type of shape this panel is set to display.  
--- See DShape:SetBorderColor.  
--- @return table @The border Color
function PANEL:GetBorderColor()
end

--- Returns the color set to display the shape with.  
--- @return table @The shape Color
function PANEL:GetColor()
end

--- Returns the current type of shape this panel is set to display.  
--- See DShape:SetType.  
--- @return string @Current shape type.
function PANEL:GetType()
end

--- Sets the border color of the shape.  
--- Currently does nothing.  
--- @param clr table @The desired border color
function PANEL:SetBorderColor(clr)
end

--- Sets the color to display the shape with.  
--- @param clr table @The Color
function PANEL:SetColor(clr)
end

--- Sets the shape to be drawn.  
--- @param type string @The render type of the DShape
function PANEL:SetType(type)
end
