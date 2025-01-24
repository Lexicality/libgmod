--- @meta

--- @class DColorCombo : DPropertySheet
--- The **DColorCombo** allows the user to choose color, without alpha,  
--- using DColorMixer or DColorPalette in a tabbed view.  
local PANEL = {}
_G.DColorCombo = PANEL;
--- An Global.AccessorFunc that returns the color of the DColorCombo.  
--- @return table @A Color
function PANEL:GetColor()
end

--- Returns true if the panel is currently being edited  
--- More of a internal method, it technically should only ever work (i.e. return true) inside DColorCombo:OnValueChanged.  
--- @return boolean 
function PANEL:IsEditing()
end

--- Called when the value (color) of this panel was changed. For override  
--- @param newcol table 
function PANEL:OnValueChanged(newcol)
end

--- An Global.AccessorFunc that returns the color of this panel. See also DColorCombo:GetColor  
--- @param clr table @A Color.
function PANEL:SetColor(clr)
end
