--- @meta

--- @class DModelSelectMulti : DPropertySheet
--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- A combination of DModelSelect and DPropertySheet.  
local PANEL = {}
_G.DModelSelectMulti = PANEL;
--- Adds a new tab of models.  
--- @param name string @Name of the tab to add.
--- @param models table @Models list for this tab
--- @param convar string @ConVar to set when a model from this list is selected.
--- @param dontSort boolean @Do not sort the list
--- @param dontCallListConVars boolean @If set, only the `convar` from the 2nd argument will be set, not individual convars from the models list.
function PANEL:AddModelList(name, models, convar, dontSort, dontCallListConVars)
end
