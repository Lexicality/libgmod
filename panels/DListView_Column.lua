--- @meta

--- @class DListView_Column : GPanel
--- 🚷 **INTERNAL**:   
--- A single column, used by DListView.  
local PANEL = {}
_G.DListView_Column = PANEL;
--- Called when the column is left clicked (on key release) by the client.  
--- See also DListView_Column:DoRightClick.  
function PANEL:DoClick()
end

--- Called when the column is right clicked (on key release) by the client.  
--- See also DListView_Column:DoClick.  
function PANEL:DoRightClick()
end

--- Gets the index used for this column.  
--- @return number @The column index of the DListView_Column.
function PANEL:GetColumnID()
end

--- Returns whether the column is sorted in descending order or not.  
--- @return boolean @Whether the column is sorted in descending order or not.
function PANEL:GetDescending()
end

--- Returns the fixed width of this column.  
--- @return number @The fixed width.
function PANEL:GetFixedWidth()
end

--- Returns the maximum width set with DListView_Column:SetMaxWidth.  
--- @return number @The maximum width
function PANEL:GetMaxWidth()
end

--- Returns the minimum width set with DListView_Column:SetMinWidth.  
--- @return number @The minimum width
function PANEL:GetMinWidth()
end

--- Returns the text alignment for the column  
--- @return number @The direction of the content, based on the number pad
function PANEL:GetTextAlign()
end

--- Resizes the column, additionally adjusting the size of the column to the right, if any.  
--- @param size number @The amount to add to the current column's width
function PANEL:ResizeColumn(size)
end

--- Sets whether the column is sorted in descending order or not.  
--- @param desc boolean @Whether the column is sorted in descending order or not.
function PANEL:SetDescending(desc)
end

--- Sets the fixed width of the column.  
--- ℹ **NOTE**: Internally this will set SetMinWidth and SetMaxWidth to the value provided  
--- @param width number @The number value which will determine a fixed width.
function PANEL:SetFixedWidth(width)
end

--- Sets the maximum width of a column.  
--- @param width number @The number value which will determine a maximum width.
function PANEL:SetMaxWidth(width)
end

--- Sets the minimum width of a column.  
--- @param width number @The number value which will determine a minimum width.
function PANEL:SetMinWidth(width)
end

--- Sets the text in the column's header.  
--- @param name string @The new name that the column's header will use.
function PANEL:SetName(name)
end

--- Sets the text alignment for the column  
--- @param alignment number @The direction of the content, based on the number pad
function PANEL:SetTextAlign(alignment)
end

--- Sets the width of the panel.  
--- @param width number @The number value which will determine panel width.
function PANEL:SetWidth(width)
end
