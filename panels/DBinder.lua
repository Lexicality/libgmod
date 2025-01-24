--- @meta

--- @class DBinder : DButton
--- Input which can bind a command to a key. Used for binding inputs and outputs of TOOLs.  
local PANEL = {}
_G.DBinder = PANEL;
--- Gets the code of the key currently bound by the DBinder. Same as DBinder:GetValue. An Global.AccessorFunc  
--- @return number @The key code of the bound key
function PANEL:GetSelectedNumber()
end

--- Gets the code of the key currently bound by the DBinder. Same as DBinder:GetSelectedNumber.  
--- @return number @The key code of the bound key
function PANEL:GetValue()
end

--- Called when the player selects a new bind. Meant to be Overridden  
--- @param iNum number @The new bound key
function PANEL:OnChange(iNum)
end

--- Sets the current key bound by the DBinder, and updates the button's text as well as the ConVar.  
--- @param keyCode number @The key code of the key to bind
function PANEL:SetSelectedNumber(keyCode)
end

--- Alias of DBinder:SetSelectedNumber.  
--- @param keyCode number @The key code of the key to bind
function PANEL:SetValue(keyCode)
end
