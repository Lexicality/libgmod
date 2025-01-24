--- @meta

--- @class VSpawnmenuContentPanel : DPanel
--- The default SpawnmenuContentPanel  
--- 🚷 **INTERNAL**:   
local PANEL = {}
--- Changes the Spawnmenu category to search in  
--- @param hookname string @The Hook name
function PANEL:CallPopulateHook(hookname)
end

--- Allows the modification of the ContentSidebar  
function PANEL:EnableModify()
end

--- Changes the Spawnmenu category to search in  
--- @param category string @The category
--- @param hookname string @The Hook name
function PANEL:EnableSearch(category, hookname)
end

--- Switches the current panel with the given panel  
--- @param panel GPanel @Panel to switch to
function PANEL:SwitchPanel(panel)
end
