--- @meta

--- @class DColorCube : DSlider
--- The DColorCube allows a user to select saturation and value but not hue. Uses HSV colors  
local PANEL = {}
_G.DColorCube = PANEL;
--- An Global.AccessorFunc that returns the base Color set by DColorCube:SetBaseRGB.  
--- @return table @A Color
function PANEL:GetBaseRGB()
end

--- An Global.AccessorFunc that returns the color cube's default color. By default, it is set to white. (255 255 255 RGB)  
--- @return table @The default Color.
function PANEL:GetDefaultColor()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- An Global.AccessorFunc that returns the value set by DColorCube:SetHue.  
--- @return number 
function PANEL:GetHue()
end

--- An Global.AccessorFunc that returns the color cube's current set color.  
--- @return table @The set color, uses Color.
function PANEL:GetRGB()
end

--- Function which is called when the color cube slider is moved (through user input). Meant to be overridden.  
--- @param color table @The new color, uses Color.
function PANEL:OnUserChanged(color)
end

--- Sets the color to whatever DColorCube:GetDefaultColor returns  
function PANEL:ResetToDefaultValue()
end

--- An Global.AccessorFunc that sets the base color and the color used to draw the color cube panel itself.  
--- ℹ **NOTE**: Calling this when using a color that isn't 100% saturated and valued (Global.HSVToColor with saturation and value set to 1) causes the color cube to look inaccurate compared to the color that's returned by methods like DColorCube:GetRGB and DColorCube:OnUserChanged. You should use DColorCube:SetColor instead  
--- @param color table @The base color to set, uses Color.
function PANEL:SetBaseRGB(color)
end

--- Sets the base color of the color cube and updates the slider position.  
--- @param color table @The color to set, uses Color.
function PANEL:SetColor(color)
end

--- An Global.AccessorFunc that sets the color cube's default color. This value will be used to reset to on middle mouse click of the color cube's draggable slider.  
--- @param arg table @The new default Color.
function PANEL:SetDefaultColor(arg)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- An Global.AccessorFunc that appears to do nothing and unused.  
--- @param hue number 
function PANEL:SetHue(hue)
end
