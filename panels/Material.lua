--- @meta

--- @class VMaterial : VButton
--- Material is a VGUI element that renders a VMT material.  
local PANEL = {}
--- Sets the alpha value of the Material panel.  
--- @param alpha number @The alpha value, from 0 to 255.
function PANEL:SetAlpha(alpha)
end

--- Sets the material used by the panel.  
--- ℹ **NOTE**: If the material is not showing up as the correct size, try setting the Material panel's `AutoSize` variable to **false**  
--- @param matname string @The file path of the material to set (relative to "garrysmod/materials/").
function PANEL:SetMaterial(matname)
end
