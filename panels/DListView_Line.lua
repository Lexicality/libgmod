--- @meta

--- @class DListView_Line : GPanel
--- 🚷 **INTERNAL**:   
--- A panel used by DListView  
local PANEL = {}
_G.DListView_Line = PANEL;
--- Returns whether this line is odd or even in the list. This is internally used (and set) to change the looks of every other line.  
--- @return boolean @Whether this line is 'alternative'.
function PANEL:GetAltLine()
end

--- Gets the string held in the specified column of a DListView_Line panel.  
--- This is the same thing as doing DListView_Line:GetValue( column_number ).  
--- @param column number @The number of the column to retrieve the text from, starts with 1.
--- @return string @The contents of the specified column.
function PANEL:GetColumnText(column)
end

--- Returns the ID of this line, set automatically in DListView:AddLine.  
--- @return number @The ID of this line.
function PANEL:GetID()
end

--- Returns the parent DListView of this line.  
--- @return DListView @The parent DListView of this line.
function PANEL:GetListView()
end

--- Returns the data stored on given cell of this line.  
--- Used in the DListView:SortByColumn function in case you want to sort with something else than the text.  
--- @param column number @The number of the column to write the text from, starts with 1.
--- @return any @The data that is set for given column of this line, if any.
function PANEL:GetSortValue(column)
end

--- Alias of DListView_Line:GetColumnText. Overrides Panel:GetValue.  
--- @param column number @The number of the column to retrieve the text from, starts with 1.
--- @return string @The contents of the specified column.
function PANEL:GetValue(column)
end

--- Returns whether this line is selected.  
--- @return boolean @Whether this line is selected.
function PANEL:IsLineSelected()
end

--- Called when the player right clicks this line.  
function PANEL:OnRightClick()
end

--- Called when the player selects this line.  
function PANEL:OnSelect()
end

--- Sets the string held in the specified column of a DListView_Line panel.  
--- @param column number @The number of the column to write the text from, starts with 1.
--- @param value string @Column text you want to set
--- @return DLabel @The DLabel in which the text was set.
function PANEL:SetColumnText(column, value)
end

--- Sets whether this line is selected or not.  
--- @param selected boolean @Whether this line is selected.
function PANEL:SetSelected(selected)
end

--- Allows you to store data per column.  
--- Used in the DListView:SortByColumn function in case you want to sort with something else than the text.  
--- @param column number @The number of the column to write the text from, starts with 1.
--- @param data any @Data for given column on the line you wish to set.
function PANEL:SetSortValue(column, data)
end

--- Alias of DListView_Line:SetColumnText.  
--- @param column number @The number of the column to write the text from, starts with 1.
--- @param value string @Column text you want to set
--- @return DLabel @The DLabel in which the text was set.
function PANEL:SetValue(column, value)
end
