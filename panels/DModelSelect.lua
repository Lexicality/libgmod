--- @meta

--- @class DModelSelect : DPanelSelect
--- @deprecated  
--- 🛑 **DEPRECATED**: This is derived from the deprecated DPanelList.  
--- A vertical list of models.  
local PANEL = {}
_G.DModelSelect = PANEL;
--- Sets the height of the panel **in the amount of 64px spawnicons**.  
--- Overrides Panel:SetHeight.  
--- @param num? number @Basically how many rows of 64x64 px spawnicons should fit in this DModelSelect
function PANEL:SetHeight(num)
end

--- Called to set the list of models within the panel element.  
--- @param models table @Each key is a model path, the value is a kay-value table where they key is a convar name and value is the value to set to that convar.
--- @param convar string @ConVar to set when a model from this list is selected.
--- @param dontSort boolean @Do not sort the list
--- @param dontCallListConVars boolean @If set, only the `convar` from the 2nd argument will be set, not individual convars from the models list.
function PANEL:SetModelList(models, convar, dontSort, dontCallListConVars)
end
