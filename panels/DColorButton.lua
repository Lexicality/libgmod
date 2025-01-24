--- @meta

--- @class DColorButton : DLabel
--- Colorful buttons. Used internally by DColorPalette.  
local PANEL = {}
_G.DColorButton = PANEL;
--- An Global.AccessorFunc that returns the color of the button  
--- @return table @The Color of the button
function PANEL:GetColor()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- An Global.AccessorFunc that returns value set by DColorButton:SetDrawBorder. See that page for more info.  
--- @return boolean @Value set by DColorButton:SetDrawBorder.
function PANEL:GetDrawBorder()
end

--- An Global.AccessorFunc that returns the unique ID set by DColorButton:SetID.  
--- Used internally by DColorPalette  
--- @return number @The unique ID of the button
function PANEL:GetID()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- An Global.AccessorFunc that is an alias of Panel:IsSelected.  
--- @return boolean 
function PANEL:GetSelected()
end

--- Returns whether the DColorButton is currently being pressed (the user is holding it down).  
--- @return boolean 
function PANEL:IsDown()
end

--- Sets the color of the DColorButton.  
--- @param color table @A Color to set the color as
--- @param noTooltip? boolean @If true, the tooltip will not be reset to display the selected color.
function PANEL:SetColor(color, noTooltip)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- An Global.AccessorFunc that does absolutely nothing at all. Default value is automatically set to true.  
--- @param draw boolean @Does nothing.
function PANEL:SetDrawBorder(draw)
end

--- An Global.AccessorFunc that is used internally by DColorPalette to detect which button is which.  
--- Pairs with DColorButton:GetID  
--- @param id number @A unique ID to give this button
function PANEL:SetID(id)
end
