--- @meta

--- @class DListView : DPanel
--- A data view with rows and columns.  
local PANEL = {}
_G.DListView = PANEL;
--- Adds a column to the listview.  
--- @param column string @The name of the column to add.
--- @param position? number @At which position to insert the new column compared to the other columns
--- @return GPanel @The newly created DListView_Column.
function PANEL:AddColumn(column, position)
end

--- Adds a line to the list view.  
--- @vararg any @Values for a new row in the DListView, If several arguments are supplied, each argument will correspond to a respective column in the DListV
--- @return GPanel @The newly created DListView_Line.
function PANEL:AddLine(...)
end

--- Clears the current selection in the DListView.  
function PANEL:ClearSelection()
end

--- Gets the width of a column.  
--- @param column number @The column to get the width of.
--- @return number @Width of the column.
function PANEL:ColumnWidth(column)
end

--- Creates the lines and gets the height of the contents, in a DListView.  
--- @return number @The height of the contents
function PANEL:DataLayout()
end

--- Removes the scrollbar.  
function PANEL:DisableScrollbar()
end

--- Called when a line in the DListView is double clicked.  
--- @param lineID number @The line number of the double clicked line.
--- @param line GPanel @The double clicked DListView_Line.
function PANEL:DoDoubleClick(lineID, line)
end

--- Gets the canvas.  
--- @return GPanel @The canvas.
function PANEL:GetCanvas()
end

--- Returns the height of the data of the DListView.  
--- See also DListView:SetDataHeight.  
--- @return number @The height of the data of the DListView.
function PANEL:GetDataHeight()
end

--- Returns the height of the header of the DListView.  
--- See also DListView:SetHeaderHeight.  
--- @return number @The height of the header of the DListView.
function PANEL:GetHeaderHeight()
end

--- Returns whether the header line should be visible on not.  
--- @return boolean @Whether the header line should be visible on not.
function PANEL:GetHideHeaders()
end

--- Returns the height of DListView:GetCanvas.  
--- Intended to represent the height of all data lines.  
--- @return number @The height of DListView:GetCanvas.
function PANEL:GetInnerTall()
end

--- Gets the DListView_Line at the given index.  
--- @param id number @The index of the line to get.
--- @return GPanel @The DListView_Line at the given index.
function PANEL:GetLine(id)
end

--- Gets all of the lines added to the DListView.  
--- @return table @The lines added to the DListView.
function PANEL:GetLines()
end

--- Returns whether multiple lines can be selected or not.  
--- See DListView:SetMultiSelect.  
--- @return boolean @Whether multiple lines can be selected or not.
function PANEL:GetMultiSelect()
end

--- Gets all of the lines that are currently selected.  
--- @return table @A table of DListView_Lines.
function PANEL:GetSelected()
end

--- Gets the currently selected DListView_Line index.  
--- If DListView:SetMultiSelect is set to true, only the first line of all selected lines will be returned. Use DListView:GetSelected instead to get all of the selected lines.  
--- @return number @The index of the currently selected line.
--- @return GPanel @The currently selected DListView_Line.
function PANEL:GetSelectedLine()
end

--- Returns whether sorting of columns by clicking their headers is allowed or not.  
--- See also DListView:SetSortable.  
--- @return boolean @Whether sorting of columns by clicking their headers is allowed or not
function PANEL:GetSortable()
end

--- Called when a row is right-clicked  
--- @param lineID number @The line ID of the right clicked line
--- @param line GPanel @The line panel itself, a DListView_Line.
function PANEL:OnRowRightClick(lineID, line)
end

--- Called internally by DListView:OnClickLine when a line is selected. This is the function you should override to define the behavior when a line is selected.  
--- @param rowIndex number @The index of the row/line that the user clicked on.
--- @param row GPanel @The DListView_Line that the user clicked on.
function PANEL:OnRowSelected(rowIndex, row)
end

--- Removes a line from the list view.  
--- @param line number @Removes the given row, by row id (same number as DListView:GetLine).
function PANEL:RemoveLine(line)
end

--- Selects the line at the first index of the DListView if one has been added.  
function PANEL:SelectFirstItem()
end

--- Selects a line in the listview.  
--- @param Line GPanel @The line to select.
function PANEL:SelectItem(Line)
end

--- Sets the height of all lines of the DListView except for the header line.  
--- See also DListView:SetHeaderHeight.  
--- @param height number @The new height to set
function PANEL:SetDataHeight(height)
end

--- Sets the height of the header line of the DListView.  
--- See also DListView:SetDataHeight.  
--- @param height number @The new height to set
function PANEL:SetHeaderHeight(height)
end

--- Sets whether the header line should be visible on not.  
--- @param hide boolean @Whether the header line should be visible on not.
function PANEL:SetHideHeaders(hide)
end

--- Sets whether multiple lines can be selected by the user by using the `Ctrl` or `Shift` keys. When set to false, only one line can be selected.  
--- @param allowMultiSelect boolean @Whether multiple lines can be selected or not
function PANEL:SetMultiSelect(allowMultiSelect)
end

--- Enables/disables the sorting of columns by clicking.  
--- ℹ **NOTE**: This will only affect columns that are created after this function is called. Existing columns will be unaffected.  
--- @param isSortable boolean @Whether sorting columns with clicking is allowed or not.
function PANEL:SetSortable(isSortable)
end

--- Sorts the items in the specified column.  
--- @param columnIndex number @The index of the column that should be sorted.
--- @param descending? boolean @Whether the items should be sorted in descending order or not.
function PANEL:SortByColumn(columnIndex, descending)
end

--- Sorts the list based on given columns.  
--- All arguments are optional  
--- @param column1? number 
--- @param descrending1? boolean 
--- @param column2? number 
--- @param descrending2? boolean 
--- @param column3? number 
--- @param descrending3? boolean 
--- @param column4? number 
--- @param descrending4? boolean 
function PANEL:SortByColumns(column1, descrending1, column2, descrending2, column3, descrending3, column4, descrending4)
end
