--- @meta

--- @class DListBoxItem : DLabel
--- @deprecated  
--- 🛑 **DEPRECATED**: Used Internally by DListBox.  
local PANEL = {}
_G.DListBoxItem = PANEL;
--- Returns the parent "mother" of this **DListBoxItem** set by DListBoxItem:SetMother.  
--- @return GPanel @The "mother" DListBox.
function PANEL:GetMother()
end

--- Selects this item.  
--- @param onlyMe boolean @Whether to deselect other items.
function PANEL:Select(onlyMe)
end
