--- @meta

--- @class DListBox : DPanelList
--- @deprecated  
--- 🛑 **DEPRECATED**: Derived from the deprecated DPanelList.  
--- A simple list box with optional multi-select.  
--- As this is deprecated, it is recommended that you use DListView, which contains the same functionality with multi-column options.  
local PANEL = {}
_G.DListBox = PANEL;
--- Returns whether the list box can select multiple items.  
--- @return boolean @Whether the list box can select multiple items.
function PANEL:GetMultiple()
end

--- Returns selected items.  
--- @return table @The selected items
function PANEL:GetSelectedItems()
end

--- Returns selected item values.  
--- @return table @The selected item values
function PANEL:GetSelectedValues()
end

--- Select a DListBoxItem based on its value.  
--- @param val string @Panel:GetValue of a DListBoxItem to select.
function PANEL:SelectByName(val)
end

--- Sets whether the list box can select multiple items.  
--- @param multiple boolean @Whether the list box can select multiple items.
function PANEL:SetMultiple(multiple)
end
