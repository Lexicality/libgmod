--- @meta

--- @class DCategoryList : DScrollPanel
--- A host for multiple DCollapsibleCategory panels.  
--- As the name suggests, each one of them can be collapsed or expanded on demand by the user.  
local PANEL = {}
_G.DCategoryList = PANEL;
--- Adds a DCollapsibleCategory to the list.  
--- @param categoryName string @The name of the category to add.
--- @return GPanel @The created DCollapsibleCategory
function PANEL:Add(categoryName)
end

--- Adds an element to the list.  
--- @param element GPanel @VGUI element to add to the list.
function PANEL:AddItem(element)
end

--- Calls Panel:UnselectAll on all child elements, if they have it.  
function PANEL:UnselectAll()
end
