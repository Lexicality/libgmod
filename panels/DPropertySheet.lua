--- @meta

--- @class DPropertySheet : GPanel
--- A tab oriented control where you can create multiple tabs with items within. Used mainly for organization.  
local PANEL = {}
_G.DPropertySheet = PANEL;
--- Adds a new tab.  
--- @param name string @Name of the tab
--- @param pnl GPanel @Panel to be used as contents of the tab
--- @param icon? string @Icon for the tab
--- @param noStretchX? boolean @Should DPropertySheet try to fill itself with given panel horizontally.
--- @param noStretchY? boolean @Should DPropertySheet try to fill itself with given panel vertically.
--- @param tooltip? string @Tooltip for the tab when user hovers over it with his cursor
--- @return table @A table containing the following keys:
function PANEL:AddSheet(name, pnl, icon, noStretchX, noStretchY, tooltip)
end

--- Removes tab and/or panel from the parent DPropertySheet.  
--- @param tab GPanel @The DTab of the sheet from DPropertySheet
--- @param removePanel boolean @Set to true to remove the associated panel object as well.
--- @return GPanel @The panel of the tab.
function PANEL:CloseTab(tab, removePanel)
end

--- Returns the active DTab of this DPropertySheet.  
--- @return GPanel @The DTab
function PANEL:GetActiveTab()
end

--- Returns the amount of time (in seconds) it takes to fade between tabs.  
--- Set by DPropertySheet:SetFadeTime  
--- @return number @The amount of time (in seconds) it takes to fade between tabs.
function PANEL:GetFadeTime()
end

--- Returns a list of all tabs of this DPropertySheet.  
--- @return table @A table of tables
function PANEL:GetItems()
end

--- Gets the padding from the parent panel to child panels.  
--- @return number @Padding
function PANEL:GetPadding()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Returns whatever value was set by DPropertySheet:SetShowIcons.  
--- @return boolean 
function PANEL:GetShowIcons()
end

--- Called when a player switches the tabs.  
--- Source code states that this is meant to be overridden.  
--- @param old GPanel @The previously active DTab
--- @param new GPanel @The newly active DTab
function PANEL:OnActiveTabChanged(old, new)
end

--- Sets the active tab of the DPropertySheet.  
--- @param tab GPanel @The DTab to set active
function PANEL:SetActiveTab(tab)
end

--- Sets the amount of time (in seconds) it takes to fade between tabs.  
--- @param time? number @The amount of time it takes (in seconds) to fade between tabs.
function PANEL:SetFadeTime(time)
end

--- Sets the padding from parent panel to children panel.  
--- @param padding? number @Amount of padding
function PANEL:SetPadding(padding)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @param show boolean 
function PANEL:SetShowIcons(show)
end

--- Creates a close button on the right side of the DPropertySheet that will run the given callback function when pressed.  
--- @param func function @Callback function to be called when the close button is pressed.
function PANEL:SetupCloseButton(func)
end

--- Sets the width of the DPropertySheet to fit the contents of all of the tabs.  
function PANEL:SizeToContentWidth()
end

--- Switches the active tab to a tab with given name.  
--- @param name string @Case sensitive name of the tab.
function PANEL:SwitchToName(name)
end
