--- @meta

--- @class DPanelList : DPanel
--- Displays elements in a horizontal or vertical list. A scrollbar is automatically shown if necessary.  
--- You can get its vertical bar via `DPanelList.VBar`.  
--- DPanelList was succeeded in version 13 by more specialised layout elements.  
--- @deprecated  
--- 🛑 **DEPRECATED**:   
---  Use a combination of DIconLayout, DListLayout and DScrollPanel instead.  
local PANEL = {}
_G.DPanelList = PANEL;
--- Adds a existing panel to the end of DPanelList.  
--- @param pnl GPanel @Panel to be used as element of list
--- @param state? string @If set to "ownline", the item will take its own entire line.
function PANEL:AddItem(pnl, state)
end

--- Removes all items.  
function PANEL:CleanList()
end

--- Enables/creates the vertical scroll bar so that the panel list can be scrolled through.  
function PANEL:EnableVerticalScrollbar()
end

--- Returns all panels has added by DPanelList:AddItem  
--- @return table @A table of panels used as items of DPanelList.
function PANEL:GetItems()
end

--- Returns offset of list items from the panel borders set by DPanelList:SetPadding  
--- @return number @Offset from panel borders
function PANEL:GetPadding()
end

--- Returns distance between list items set by DPanelList:SetSpacing  
--- @return number @Distance between panels
function PANEL:GetSpacing()
end

--- Insert given panel at the top of the list.  
--- @param insert GPanel @The panel to insert
--- @param strLineState string @If set to "ownline", no other panels will be placed to the left or right of the panel we are inserting
function PANEL:InsertAtTop(insert, strLineState)
end

--- Sets the DPanelList to size its height to its contents. This is set to false by default.  
--- @param shouldSizeToContents boolean @Whether to size to the height of the DPanelList contents.
function PANEL:SetAutoSize(shouldSizeToContents)
end

--- Sets the offset of the lists items from the panel borders  
--- @param Offset number @Offset from panel borders
function PANEL:SetPadding(Offset)
end

--- Sets distance between list items  
--- @param Distance number @Distance between panels
function PANEL:SetSpacing(Distance)
end
