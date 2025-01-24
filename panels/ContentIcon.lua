--- @meta

--- @class VContentIcon : DButton
--- The spawn icon used for SWEPs and other SENTs, commonly featured as part of the spawn menu.  
--- Do note that at least one of your ContentIcon's parents must either be an EditablePanel or derived from it  
--- (like a DFrame, for example), else it won't be able to focus and thus be unclickable.  
--- This control only exists in Sandbox derived gamemodes.  
local PANEL = {}
--- An Global.AccessorFunc that returns the color set by ContentIcon:SetColor  
--- @return table @See Color
function PANEL:GetColor()
end

--- An Global.AccessorFunc that returns the content type used to save and restore the content icon in a spawnlist.  
--- @return string @The content type, for example "entity" or "weapon".
function PANEL:GetContentType()
end

--- An Global.AccessorFunc that returns a table of weapon classes for the content icon with "NPC" content type to be randomly chosen from when user tries to spawn the NPC.  
--- @return table @A table of weapon classes to be chosen from when user tries to spawn the NPC.
function PANEL:GetNPCWeapon()
end

--- An Global.AccessorFunc that returns the internal "name" for the content icon, usually a class name for an entity.  
--- @return string @Internal "name" to be used when user left clicks the icon.
function PANEL:GetSpawnName()
end

--- A hook for override, by default does nothing. Called when user right clicks on the content icon, you are supposed to open a Global.DermaMenu here with additional options.  
function PANEL:OpenMenu()
end

--- An Global.AccessorFunc that sets whether the content item is admin only. This makes the icon to display a admin icon in the top left corner of the icon.  
--- @param adminOnly boolean @Whether this content should be admin only or not
function PANEL:SetAdminOnly(adminOnly)
end

--- An Global.AccessorFunc that sets the color for the content icon. Currently is not used by the content icon panel.  
--- @param clr table @The color to set
function PANEL:SetColor(clr)
end

--- An Global.AccessorFunc that sets the content type used to save and restore the content icon in a spawnlist.  
--- @param type string @The content type, for example "entity" or "weapon"
function PANEL:SetContentType(type)
end

--- Sets the material to be displayed as the content icon.  
--- @param path string @Path to the icon to use.
function PANEL:SetMaterial(path)
end

--- An Global.AccessorFunc that sets a table of weapon classes for the content icon with "NPC" content type to be randomly chosen from when user tries to spawn the NPC.  
--- @param weapons table @A table of weapon classes to be chosen from when user tries to spawn the NPC.
function PANEL:SetNPCWeapon(weapons)
end

--- Sets the tool tip and the "nice" name to be displayed by the content icon.  
--- @param name string @"Nice" name to display.
function PANEL:SetName(name)
end

--- An Global.AccessorFunc that sets the internal "name" for the content icon, usually a class name for an entity.  
--- @param name string @Internal "name" to be used when user left clicks the icon.
function PANEL:SetSpawnName(name)
end
