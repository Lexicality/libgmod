--- @meta

--- @class DRGBPicker : DPanel
--- DRGBPicker is an interactive panel which can be used to select a color hue.  
--- See DColorCube for a color picker which controls brightness and saturation.  
--- See DColorMixer for a color picker that allows control over hue, saturation, and brightness at once.  
local PANEL = {}
_G.DRGBPicker = PANEL;
--- Returns the color currently set on the color picker.  
--- @return table @The color set on the color picker, see Color.
function PANEL:GetRGB()
end

--- Function which is called when the cursor is clicked and/or moved on the color picker. Meant to be overridden.  
--- @param col table @The color that is selected on the color picker (Color form).
function PANEL:OnChange(col)
end

--- Sets the color stored in the color picker.  
--- ℹ **NOTE**: This function is meant to be called internally and will not update the position of the color picker line or call DRGBPicker:OnChange  
--- @param color table @The color to set, see Color.
function PANEL:SetRGB(color)
end
