--- @meta

--- @class DMenuOptionCVar : DMenuOption
--- 🚷 **INTERNAL**:   
--- An internal panel used by DMenu.  
--- It acts as a menu option that can be checked.  
--- It automatically sets and reads the given console variable.  
--- It can be right clicked to toggle without closing the DMenu.  
--- Use DMenu:AddCVar instead.  
local PANEL = {}
_G.DMenuOptionCVar = PANEL;
--- Returns the console variable used by the DMenuOptionCVar.  
--- @return string @The console variable used
function PANEL:GetConVar()
end

--- Returns the value of the console variable when the DMenuOptionCVar is not checked.  
--- @return string @The value
function PANEL:GetValueOff()
end

--- Return the value of the console variable when the DMenuOptionCVar is checked.  
--- @return string @The value
function PANEL:GetValueOn()
end

--- Sets the console variable to be used by DMenuOptionCVar.  
--- @param cvar string @The console variable name to set
function PANEL:SetConVar(cvar)
end

--- Sets the value of the console variable when the DMenuOptionCVar is not checked.  
--- @param value string @The value
function PANEL:SetValueOff(value)
end

--- Sets the value of the console variable when the DMenuOptionCVar is checked.  
--- @param value string @The value
function PANEL:SetValueOn(value)
end
