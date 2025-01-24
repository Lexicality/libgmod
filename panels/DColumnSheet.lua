--- @meta

--- @class DColumnSheet : GPanel
--- Similar to DPropertySheet, but with tabs on the left.  
local PANEL = {}
_G.DColumnSheet = PANEL;
--- Adds a new column/tab.  
--- @param name string @Name of the column/tab
--- @param pnl GPanel @Panel to be used as contents of the tab
--- @param icon? string @Icon for the tab
--- @return table @A table containing the following keys:
function PANEL:AddSheet(name, pnl, icon)
end

--- An Global.AccessorFunc that returns the active button of this DColumnSheet.  
--- @return GPanel @The active button
function PANEL:GetActiveButton()
end

--- Makes the tabs/buttons show only the image and no text.  
function PANEL:UseButtonOnlyStyle()
end
