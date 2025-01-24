--- @meta

--- @class DLabelURL : VURLLabel
--- Underlined link label without a DoClick function. When a valid URL is set and the label is clicked, it will open a browser window and navigate to the address.  
--- This panel uses gui.OpenURL internally and its restrictions apply.  
local PANEL = {}
_G.DLabelURL = PANEL;
--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does absolutely nothing at all.  
--- @return boolean @Does nothing.
function PANEL:GetAutoStretchVertical()
end

--- Gets the current text color of the DLabelURL. Returns either DLabelURL:GetTextColor or if that is unset -  DLabelURL:GetTextStyleColor.  
--- @return table @The current text Global.Color.
function PANEL:GetColor()
end

--- Gets the current text color of the DLabelURL set by DLabelURL:SetTextColor.  
--- @return table @The current text Global.Color.
function PANEL:GetTextColor()
end

--- Returns the color set by DLabelURL:SetTextStyleColor.  
--- @return table @The Color
function PANEL:GetTextStyleColor()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does absolutely nothing at all.  
--- @param draw boolean @Does nothing.
function PANEL:SetAutoStretchVertical(draw)
end

--- Alias of DLabelURL:SetTextColor.  
--- @param col table @The Global.Color to use.
function PANEL:SetColor(col)
end

--- Sets the text color of the DLabelURL. Overrides DLabelURL:SetTextStyleColor.  
--- This should only be used immediately after it is created, and otherwise Panel:SetFGColor.  
--- @param col table @The Global.Color to use.
function PANEL:SetTextColor(col)
end

--- Sets the base text color of the DLabelURL. This is overridden by DLabelURL:SetTextColor.  
--- @param color table @The Global.Color to set
function PANEL:SetTextStyleColor(color)
end
