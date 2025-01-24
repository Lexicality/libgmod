--- @meta

--- @class DHorizontalDivider : DPanel
--- Creates an invisible vertical divider between two GUI elements.  
local PANEL = {}
_G.DHorizontalDivider = PANEL;
--- Returns the width of the horizontal divider bar, set by DHorizontalDivider:SetDividerWidth.  
--- @return number @The width of the horizontal divider bar
function PANEL:GetDividerWidth()
end

--- Returns whether or not the player is currently dragging the middle divider bar.  
--- @return boolean @Whether or not the player is currently dragging the middle divider bar.
function PANEL:GetDragging()
end

--- Returns the left side content of the DHorizontalDivider  
--- @return GPanel @The content on the left side
function PANEL:GetLeft()
end

--- Returns the minimum width of the left side, set by DHorizontalDivider:SetLeftMin.  
--- @return number @The minimum width of the left side
function PANEL:GetLeftMin()
end

--- Returns the current width of the left side, set by DHorizontalDivider:SetLeftWidth or by the user.  
--- @return number @The current width of the left side
function PANEL:GetLeftWidth()
end

--- Returns the middle content, set by DHorizontalDivider:SetMiddle.  
--- @return GPanel @The middle content
function PANEL:GetMiddle()
end

--- Returns the right side content  
--- @return GPanel @The right side content
function PANEL:GetRight()
end

--- Returns the minimum width of the right side, set by DHorizontalDivider:SetRightMin.  
--- @return number @The minimum width of the right side
function PANEL:GetRightMin()
end

--- Sets the width of the horizontal divider bar.  
--- @param width number @The width of the horizontal divider bar.
function PANEL:SetDividerWidth(width)
end

--- Sets the left side content of the DHorizontalDivider.  
--- @param pnl GPanel @The panel to set as the left side
function PANEL:SetLeft(pnl)
end

--- Sets the minimum width of the left side  
--- @param minWidth number @The minimum width of the left side
function PANEL:SetLeftMin(minWidth)
end

--- Sets the current/starting width of the left side.  
--- The width of the right side is automatically calculated by subtracting this from the total width of the DHorizontalDivider.  
--- @param width number @The current/starting width of the left side
function PANEL:SetLeftWidth(width)
end

--- Sets the middle content, over the draggable divider bar panel.  
--- @param middle GPanel @The middle content
function PANEL:SetMiddle(middle)
end

--- Sets the right side content  
--- @param pnl GPanel @The right side content
function PANEL:SetRight(pnl)
end

--- Sets the minimum width of the right side  
--- @param minWidth number @The minimum width of the right side
function PANEL:SetRightMin(minWidth)
end
