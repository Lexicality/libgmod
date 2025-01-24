--- @meta

--- @class DNotify : GPanel
--- A panel that fades its contents in and out once, like a notification.  
local PANEL = {}
_G.DNotify = PANEL;
--- Adds a panel to the notification  
--- @param pnl GPanel @The panel to add
--- @param lifeLength? number @If set, overrides DNotify:SetLife for when the given panel should be removed.
function PANEL:AddItem(pnl, lifeLength)
end

--- Returns the current alignment of this notification panel. Set by DNotify:SetAlignment.  
--- @return number @The numpad alignment
function PANEL:GetAlignment()
end

--- Returns all the items added with DNotify:AddItem.  
--- @return table @A table of Panels.
function PANEL:GetItems()
end

--- Returns the display time in seconds of the DNotify. This is set with  
--- DNotify:SetLife.  
--- @return number @The display time in seconds.
function PANEL:GetLife()
end

--- Returns the spacing between items set by DNotify:SetSpacing.  
--- @return number 
function PANEL:GetSpacing()
end

--- Sets the alignment of the child panels in the notification  
--- @param alignment number @It's the Numpad alignment, 6 is right, 9 is top left, etc.
function PANEL:SetAlignment(alignment)
end

--- Sets the display time in seconds for the DNotify.  
--- @param time number @The time in seconds.
function PANEL:SetLife(time)
end

--- Sets the spacing between child elements of the notification panel.  
--- @param spacing number 
function PANEL:SetSpacing(spacing)
end
