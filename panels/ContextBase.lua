--- @meta

--- @class VContextBase : GPanel
--- A base for all context menu panels ( The ones used for tool options in sandbox )  
local PANEL = {}
--- Returns the ConVar for the panel to change/handle, set by ContextBase:SetConVar  
--- @return string @The ConVar for the panel to change.
function PANEL:ConVar()
end

--- Called by spawnmenu functions (when creating a context menu) to fill this control with data.  
--- @param contextData table @A two-membered table:
function PANEL:ControlValues(contextData)
end

--- Sets the ConVar for the panel to change/handle.  
--- @param cvar string @The ConVar for the panel to change.
function PANEL:SetConVar(cvar)
end

--- You should override this function and use it to check whether your convar value changed.  
function PANEL:TestForChanges()
end
