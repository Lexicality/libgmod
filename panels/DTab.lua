--- @meta

--- @class DTab : DButton
--- 🚷 **INTERNAL**:   
--- This element is created within and only used in the DPropertySheet file. These can be elements are stored items are stored in the `Items` subtable of the DPropertySheet  
local PANEL = {}
_G.DTab = PANEL;
--- Returns the panel that the tab represents.  
--- @return GPanel @Panel added to the sheet using DPropertySheet:AddSheet.
function PANEL:GetPanel()
end

--- The DPropertySheet this tab belongs to.  
--- @return GPanel @The DPropertySheet this tab belongs to.
function PANEL:GetPropertySheet()
end

--- Returns whether the tab is the currently selected tab of the associated DPropertySheet.  
--- @return boolean @Currently selected tab.
function PANEL:IsActive()
end
