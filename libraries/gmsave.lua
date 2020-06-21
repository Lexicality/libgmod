--- The gmsave library provides functions relating to the singleplayer save system in Garry's Mod.  
_G.gmsave = {}
--- Loads a saved map.  
--- @param mapData string @The JSON encoded string containing all the map data.
--- @param ply GPlayer @The player to load positions for
function gmsave.LoadMap(mapData, ply)
end

--- Sets player position and angles from supplied table  
--- @param ply GPlayer @The player to "load" values for
--- @param data table @A table containing Origin and Angle keys for position and angles to set.
function gmsave.PlayerLoad(ply, data)
end

--- Returns a table containing player position and angles. Used by gmsave.SaveMap.  
--- @param ply GPlayer @The player to "save"
--- @return table @A table containing player position ( Origin ) and angles ( Angle )
function gmsave.PlayerSave(ply)
end

--- Saves the map  
--- @param ply GPlayer @The player, whose position should be saved for loading the save
--- @return string @The encoded to JSON string containing save data
function gmsave.SaveMap(ply)
end

--- Returns if we should save this entity in a duplication or a map save or not.  
--- @param ent GEntity @The entity
--- @param t table @A table containing classname key with entities classname.
--- @return boolean @Should save entity or not
function gmsave.ShouldSaveEntity(ent, t)
end

