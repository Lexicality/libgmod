--- The saverestore library contains functions relating to the singleplayer save system built into the game.  
_G.saverestore = {}
--- Adds a restore/load hook for the Half-Life 2 save system.  
--- @param identifier string @The unique identifier for this hook.
--- @param callback function @The function to be called when an engine save is being loaded
function saverestore.AddRestoreHook(identifier, callback)
end

--- Adds a save hook for the Half-Life 2 save system. You can this to carry data through level transitions in Half-Life 2.  
--- @param identifier string @The unique identifier for this hook.
--- @param callback function @The function to be called when an engine save is being saved
function saverestore.AddSaveHook(identifier, callback)
end

--- Loads Entity:GetTable from the save game file that is being loaded and merges it with the given entitys Entity:GetTable.  
--- @param ent GEntity @The entity which will receive the loaded values from the save.
--- @param save GIRestore @The restore object to read the Entity:GetTable from.
function saverestore.LoadEntity(ent, save)
end

--- Reads a table from the save game file that is being loaded.  
--- @param save GIRestore @The restore object to read the table from.
--- @return table @The table that has been read, if any
function saverestore.ReadTable(save)
end

--- Loads a variable from the save game file that is being loaded.  
--- Variables will be read in the save order you have saved them.  
--- @param save GIRestore @The restore object to read variables from.
--- @return any @The variable that was read, if any.
function saverestore.ReadVar(save)
end

--- Saves entitys Entity:GetTable to the save game file that is being saved.  
--- @param ent GEntity @The entity to save Entity:GetTable of.
--- @param save GISave @The save object to save Entity:GetTable to.
function saverestore.SaveEntity(ent, save)
end

--- Returns how many writable keys are in the given table.  
--- @param table table @The table to test.
--- @return number @The number of keys that can be written with saverestore.WriteTable.
function saverestore.WritableKeysInTable(table)
end

--- Write a table to a save game file that is being saved.  
--- @param table table @The table to write
--- @param save GISave @The save object to write the table to.
function saverestore.WriteTable(table, save)
end

--- Writes a variable to the save game file that is being saved.  
--- @param value any @The value to save
--- @param save GISave @The save object to write the variable to.
function saverestore.WriteVar(value, save)
end
