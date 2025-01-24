--- @meta

--- @class DHorizontalScroller : GPanel
--- A very basic horizontal scrollable panel, similar to DScrollPanel.  
--- Used internally in DPropertySheet.  
local PANEL = {}
_G.DHorizontalScroller = PANEL;
--- Adds a panel to the DHorizontalScroller.  
--- @param pnl GPanel @The panel to add
function PANEL:AddPanel(pnl)
end

--- Returns the internal canvas panel where the content of DHorizontalScroller are placed on.  
--- @return GPanel @The DDragBase panel.
function PANEL:GetCanvas()
end

--- Returns the overlap set by DHorizontalScroller:SetOverlap.  
--- @return number @The overlap.
function PANEL:GetOverlap()
end

--- Returns whether this panel should show drop targets.  
--- @return boolean 
function PANEL:GetShowDropTargets()
end

--- Same as DDragBase:MakeDroppable.  
--- TODO: Transclude or whatever to here?  
--- @param name string 
function PANEL:MakeDroppable(name)
end

--- Called when the panel is scrolled.  
function PANEL:OnDragModified()
end

--- Scrolls the DHorizontalScroller to given child panel.  
--- @param target GPanel @The target child panel
function PANEL:ScrollToChild(target)
end

--- Controls the spacing between elements of the horizontal scroller.  
--- @param overlap number @Overlap in pixels
function PANEL:SetOverlap(overlap)
end

--- Sets the scroll amount, automatically clamping the value.  
--- @param scroll number @The new scroll amount
function PANEL:SetScroll(scroll)
end

--- Sets whether this panel should show drop targets.  
--- @param newState boolean 
function PANEL:SetShowDropTargets(newState)
end

--- Same as DDragBase:SetUseLiveDrag  
--- @param newState boolean 
function PANEL:SetUseLiveDrag(newState)
end
