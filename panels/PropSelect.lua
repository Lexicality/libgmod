--- @meta

--- @class VPropSelect : VContextBase
--- Used in Sandbox tools to allow the player to select models out of a list. Despite being only used in Sandbox, it is **not** exclusive to that gamemode.  
--- See also MatSelect for the material selecting alternative.  
local PANEL = {}
--- Adds a new model to the selection list.  
--- @param model string @Model path, **including** `models/` and `.mdl`.
--- @param convars table @A list of convar names (as keys) and their values to set when the user selects this model.
function PANEL:AddModel(model, convars)
end

--- Adds a new model to the selection list.  
--- @param value string @The "value" for this model, which is used to set the ContextBase:SetConVar.
--- @param model string @Model path, **including** `models/` and `.mdl`.
--- @param skin number @The skin number for this model
function PANEL:AddModelEx(value, model, skin)
end

--- Find and select a SpawnIcon panel based on the input model path.  
--- @param mdl string @The model to find and select within this PropSelect.
function PANEL:FindAndSelectButton(mdl)
end

--- Find a SpawnIcon panel based on the input model path.  
--- @param mdl string @The model to find within this PropSelect.
--- @return VSpawnIcon @The found spawnicon, or `nil`.
function PANEL:FindModelByValue(mdl)
end

--- Called when the player right clicks a model.  
--- By default, this opens a menu that lets the player copy the model path.  
--- @param pnl GPanel @The Spawnicon that was clicked.
function PANEL:OnRightClick(pnl)
end

--- Called when the player selects a model.  
--- @param pnl GPanel @The Spawnicon that was clicked.
--- @param model string @Path of the selected model, or its "value".
function PANEL:OnSelect(pnl, model)
end
