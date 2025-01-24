--- @meta

--- @class DPanelOverlay : DPanel
--- Adds curved corners.  
local PANEL = {}
_G.DPanelOverlay = PANEL;
--- Returns the border color of the DPanelOverlay set by DPanelOverlay:SetColor.  
--- @return table @The set color
function PANEL:GetColor()
end

--- Returns the type of the DPanelOverlay set by DPanelOverlay:SetType.  
--- @return number @The set type.
function PANEL:GetType()
end

--- Sets the border color of the DPanelOverlay.  
--- @param color table @The color to set
function PANEL:SetColor(color)
end

--- Sets the type of the DPanelOverlay.  
--- @param type number @The type to set
function PANEL:SetType(type)
end
