--- @meta

--- @class DMenu : DScrollPanel
--- A simple menu with sub menu, icon and convar support.  
local PANEL = {}
_G.DMenu = PANEL;
--- Creates a DMenuOptionCVar and adds it as an option into the menu. Checking and unchecking the option will alter the given console variable's value.  
--- @param strText string @The text of the button
--- @param convar string @The console variable to change
--- @param on string @The value of the console variable to set when the option is checked
--- @param off string @The value of the console variable to set when the option is unchecked
--- @param funcFunction? function @If set, the function will be called every time the option is pressed/clicked/selected
--- @return GPanel @The created DMenuOptionCVar
function PANEL:AddCVar(strText, convar, on, off, funcFunction)
end

--- Add an option to the DMenu  
--- @param name string @Name of the option.
--- @param func? function @Function to execute when this option is clicked
--- @return GPanel @Returns the created DMenuOption panel.
function PANEL:AddOption(name, func)
end

--- Adds a panel to the DMenu as if it were an option.  
--- This invokes DScrollPanel:AddItem and will not create a new panel if a class name is passed, unlike Panel:Add.  
--- @param pnl GPanel @The panel that you want to add.
function PANEL:AddPanel(pnl)
end

--- Adds a horizontal line spacer.  
function PANEL:AddSpacer()
end

--- Add a sub menu to the DMenu  
--- @param Name string @Name of the sub menu.
--- @param func? function @Function to execute when this sub menu is clicked
--- @return GPanel @The created sub DMenu
--- @return GPanel @The created DMenuOption
function PANEL:AddSubMenu(Name, func)
end

--- Returns the number of child elements of DMenu's DScrollPanel:GetCanvas.  
--- @return number @The number of child elements
function PANEL:ChildCount()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Clears all highlights made by DMenu:HighlightItem.  
--- Doesn't appear to be used or do anything.  
function PANEL:ClearHighlights()
end

--- Gets a child by its index.  
--- @param childIndex number @The index of the child to get
function PANEL:GetChild(childIndex)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Set by DMenu:SetDeleteSelf  
--- @return boolean 
function PANEL:GetDeleteSelf()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Returns the value set by DMenu:SetDrawBorder.  
--- @return boolean 
function PANEL:GetDrawBorder()
end

--- Returns whether the DMenu should draw the icon column with a different color or not.  
--- See DMenu:SetDrawColumn  
--- @return boolean @Whether to draw the column or not
function PANEL:GetDrawColumn()
end

--- Returns the maximum height of the DMenu.  
--- @return number @The maximum height in pixels
function PANEL:GetMaxHeight()
end

--- Returns the minimum width of the DMenu in pixels  
--- @return number @the minimum width of the DMenu
function PANEL:GetMinimumWidth()
end

--- Used to safely hide (not remove) the menu. This will also hide any opened submenues recursively.  
function PANEL:Hide()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Highlights selected item in the DMenu by setting the item's key "Highlight" to true.  
--- Doesn't appear to be working or used.  
--- @param item GPanel @The item to highlight.
function PANEL:HighlightItem(item)
end

--- Opens the DMenu at given position.  
--- @param x? number @Position (X coordinate) to open the menu at.
--- @param y? number @Position (Y coordinate) to open the menu at.
--- @param skipanimation? any @This argument does nothing.
--- @param ownerpanel? GPanel @If `x` and `y` are not set manually, setting this argument will offset the `y` position of the opened menu by the height of given panel.
function PANEL:Open(x, y, skipanimation, ownerpanel)
end

--- Closes any active sub menus, and opens a new one.  
--- @param item GPanel @The DMenuOption to open the submenu at
--- @param menu? GPanel @The submenu to open
function PANEL:OpenSubMenu(item, menu)
end

--- Called when a option has been selected  
--- @param option GPanel @The DMenuOption that was selected
--- @param optionText string @The options text
function PANEL:OptionSelected(option, optionText)
end

--- Set to true by default. IF set to true, the menu will be deleted when it is closed, not simply hidden.  
--- This is used by DMenuBar  
--- @param newState boolean @true to delete menu on close, false to simply hide.
function PANEL:SetDeleteSelf(newState)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @param bool boolean 
function PANEL:SetDrawBorder(bool)
end

--- Sets whether the DMenu should draw the icon column with a different color.  
--- @param draw boolean @Whether to draw the column or not
function PANEL:SetDrawColumn(draw)
end

--- Sets the maximum height the DMenu can have. If the height of all menu items exceed this value, a scroll bar will be automatically added.  
--- @param maxHeight number @The maximum height of the DMenu to set, in pixels
function PANEL:SetMaxHeight(maxHeight)
end

--- Sets the minimum width of the DMenu. The menu will be stretched to match the given value.  
--- @param minWidth number @The minimum width of the DMenu in pixels
function PANEL:SetMinimumWidth(minWidth)
end
