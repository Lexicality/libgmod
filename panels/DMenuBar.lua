--- @meta

--- @class DMenuBar : DPanel
--- A simple menu bar.  
local PANEL = {}
_G.DMenuBar = PANEL;
--- Creates a new DMenu object tied to a DButton with the given label on the menu bar.  
--- This will create a new menu regardless of whether or not one with the same label exists. To add **or** get a menu, use DMenuBar:AddOrGetMenu.  
--- @param label string @The name (label) of the derma menu to create.
--- @return GPanel @The new DMenu which will be opened when the button is clicked.
function PANEL:AddMenu(label)
end

--- Retrieves a DMenu object from the menu bar. If one with the given label doesn't exist, a new one is created.  
--- To add a DMenu without checking, use DMenuBar:AddMenu.  
--- @param label string @The name (label) of the derma menu to get or create.
--- @return GPanel @The DMenu with the given label.
function PANEL:AddOrGetMenu(label)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Use DMenuBar:GetPaintBackground instead.  
--- Returns whether or not the background should be painted. Is the same as DMenuBar:GetPaintBackground  
--- @return boolean @Should the background be painted
function PANEL:GetDrawBackground()
end

--- Returns whether or not the panel is a menu. Used for closing menus when another panel is selected.  
--- @return boolean @Is a menu
function PANEL:GetIsMenu()
end

--- If a menu is visible/opened, then the menu is returned.  
--- @return GPanel @Returns the visible/open menu or nil.
function PANEL:GetOpenMenu()
end

--- Returns whether or not the background should be painted. Is the same as DMenuBar:GetDrawBackground  
--- @return boolean @Should the background be painted
function PANEL:GetPaintBackground()
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Use DMenuBar:SetPaintBackground  
--- Sets whether or not the background should be painted. Is the same as DMenuBar:SetPaintBackground  
--- @param shouldPaint boolean @Should the background be painted
function PANEL:SetDrawBackground(shouldPaint)
end

--- Sets whether or not the panel is part of a DMenu.  
--- If this is set to `true`, Global.CloseDermaMenus will not be called when the panel is clicked, and thus any open menus will remain open.  
--- @param isMenu boolean @Is this a menu
function PANEL:SetIsMenu(isMenu)
end

--- Sets whether or not the background should be painted. Is the same as DMenuBar:SetDrawBackground  
--- @param shouldPaint boolean @Should the background be painted
function PANEL:SetPaintBackground(shouldPaint)
end
