--- @meta

--- @class DAlphaBar : DPanel
--- A bar to select the opacity (alpha level) of a color.  
local PANEL = {}
_G.DAlphaBar = PANEL;
--- Returns the base color of the alpha bar. This is the color for which the alpha channel is being modified. An Global.AccessorFunc  
--- @return table @The current base color.
function PANEL:GetBarColor()
end

--- Returns the alpha value of the alpha bar. An Global.AccessorFunc  
--- @return number @The current alpha value.
function PANEL:GetValue()
end

--- Called when user changes the desired alpha value with the control. This function is meant to be overridden  
--- @param alpha number @The new alpha value
function PANEL:OnChange(alpha)
end

--- Sets the base color of the alpha bar. This is the color for which the alpha channel is being modified. An Global.AccessorFunc  
--- @param clr table @The new Color to set
function PANEL:SetBarColor(clr)
end

--- Sets the alpha value or the alpha bar. An Global.AccessorFunc  
--- @param alpha number @The new alpha value to set
function PANEL:SetValue(alpha)
end
