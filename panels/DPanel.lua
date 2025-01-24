--- @meta

--- @class DPanel : GPanel
--- A simple rectangular box, commonly used for parenting other elements to. Pretty much all elements are based on this.  
local PANEL = {}
_G.DPanel = PANEL;
--- Returns the panel's background color.  
--- ℹ **NOTE**: By default this returns **nil** even though the default background color is white  
--- @return table @Color of the panel's background.
function PANEL:GetBackgroundColor()
end

--- Returns whether or not the panel is disabled.  
--- @return boolean @True if the panel is disabled (mouse input disabled and background alpha set to 75), false if its enabled (mouse input enabled and backgroun
function PANEL:GetDisabled()
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use DPanel:GetPaintBackground instead.  
--- Returns whether or not the panel background is being drawn. Alias of DPanel:GetPaintBackground.  
--- @return boolean @True if the panel background is drawn, false otherwise.
function PANEL:GetDrawBackground()
end

--- Used internally by DMenu.  
--- Returns whether the frame is part of a derma menu or not.  
--- If this is `true`, Global.CloseDermaMenus will not be called when the frame is clicked, and thus any open menus will remain open.  
--- @return boolean @Whether this panel is a Menu Component
function PANEL:GetIsMenu()
end

--- Returns whether or not the panel background is being drawn.  
--- @return boolean @True if the panel background is drawn, false otherwise.
function PANEL:GetPaintBackground()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does nothing. Returns value set by DPanel:SetTabbingDisabled.  
--- @return boolean 
function PANEL:GetTabbingDisabled()
end

--- Sets the background color of the panel.  
--- @param color table @The background color.
function PANEL:SetBackgroundColor(color)
end

--- Sets whether or not to disable the panel.  
--- @param disabled boolean @True to disable the panel (mouse input disabled and background alpha set to 75), false to enable it (mouse input enabled and background alph
function PANEL:SetDisabled(disabled)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use DPanel:SetPaintBackground instead.  
--- Sets whether or not to draw the panel background. Alias of DPanel:SetPaintBackground.  
--- @param draw boolean @True to show the panel's background, false to hide it.
function PANEL:SetDrawBackground(draw)
end

--- Used internally by DMenu.  
--- Sets whether the frame is part of a derma menu or not.  
--- If this is set to `true`, Global.CloseDermaMenus will not be called when the frame is clicked, and thus any open menus will remain open.  
--- @param isMenu boolean @Whether this pane is a Menu Component
function PANEL:SetIsMenu(isMenu)
end

--- Sets whether or not to paint/draw the panel background.  
--- @param paint boolean @True to show the panel's background, false to hide it.
function PANEL:SetPaintBackground(paint)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @param draw boolean 
function PANEL:SetTabbingDisabled(draw)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
function PANEL:UpdateColours()
end
