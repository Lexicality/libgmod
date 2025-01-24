--- @meta

--- @class VSpawnIcon : DButton
--- A "spawn icon" displays an image for the given model path.  
--- It is mostly used in the Spawn Menu (`Q`).  
--- It uses ModelImage internally.  
local PANEL = {}
--- Returns the currently active Sub Model IDs for each Body Group of the spawn icon.  
--- This is set by SpawnIcon:SetBodyGroup.  
--- @return string @The Body Groups of the spawnicon
function PANEL:GetBodyGroup()
end

--- Returns the currently set model name. This is set by SpawnIcon:SetModelName.  
--- @return string @The model name
function PANEL:GetModelName()
end

--- Returns the currently set skin of the spawnicon. This is set by SpawnIcon:SetSkinID.  
--- @return number @Current skin ID
function PANEL:GetSkinID()
end

--- Called when right clicked on the SpawnIcon. It will not be called if there is a selection (Panel:GetSelectionCanvas), in which case SANDBOX:SpawnlistOpenGenericMenu is called.  
function PANEL:OpenMenu()
end
