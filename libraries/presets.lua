--- The presets library lets you add and modify the pre-set options for scripted tools (selected via the white bar at the top of each tools control panel).  
_G.presets = {}
--- Adds preset to a preset group.  
--- @param groupname string @The preset group name, usually it's tool class name.
--- @param name string @Preset name, must be unique.
--- @param values table @A table of preset console commands.
function presets.Add(groupname, name, values)
end

--- Returns whether a preset with given name exists or not  
--- @param type string @The preset group name, usually it's tool class name.
--- @param name string @Name of the preset to test
--- @return boolean @true if the preset does exist
function presets.Exists(type, name)
end

--- Returns a table with preset names and values from a single preset group.  
--- @param groupname string @Preset group name.
--- @return table @All presets in specified group.
function presets.GetTable(groupname)
end

--- Removes a preset entry from a preset group.  
--- @param groupname string @Preset group to remove from
--- @param name string @Name of preset to remove
function presets.Remove(groupname, name)
end

--- Renames preset.  
--- @param groupname string @Preset group name
--- @param oldname string @Old preset name
--- @param newname string @New preset name
function presets.Rename(groupname, oldname, newname)
end

