--- @meta

--- The undo library allows you to add custom entities to the undo list, allowing users to "undo" their creation with their undo (default: `Z`) key.  
_G.undo = {}
--- Adds an entity to the current undo block  
--- @param ent GEntity @The entity to add
function undo.AddEntity(ent)
end

--- Adds a function to call when the current undo block is undone. Note that if an undo has a function, the player will always be notified when this undo is performed, even if the entity it is meant to undo no longer exists.  
--- @param func function @The function to call
--- @vararg any @Arguments to pass to the function (after the undo info table)
function undo.AddFunction(func, ...)
end

--- Begins a new undo entry  
--- @param name string @Name of the undo message to show to players
function undo.Create(name)
end

--- Processes an undo block (in table form). This is used internally by the undo manager when a player presses Z.  
--- You should use `gmod_undo` or `gmod_undonum *num*` console commands instead of calling this function directly.  
--- @param tab SUndo @The undo block to process as an Structures/Undo
--- @return number @Number of removed entities
function undo.Do_Undo(tab)
end

--- Completes an undo entry, and registers it with the player's client  
--- @param NiceText? string @Text that appears in the player's undo history
function undo.Finish(NiceText)
end

--- Serverside, returns a table containing all undo blocks of all players. Clientside, returns a table of the local player's undo blocks.  
--- ℹ **NOTE**: Serverside, this table's keys use Player:UniqueID to store a player's undo blocks.  
--- @return SUndo[] @The undo table.
function undo.GetTable()
end

--- Replaces any instance of the "from" reference with the "to" reference, in any existing undo block.  
--- You very likely want to call cleanup.ReplaceEntity with the same entities as well.  
--- @param from GEntity @The old entity
--- @param to GEntity @The new entity to replace the old one
--- @return boolean @Whether the entity was replaced
function undo.ReplaceEntity(from, to)
end

--- Sets a custom undo text for the current undo block  
--- @param customText string @The text to display when the undo block is undone
function undo.SetCustomUndoText(customText)
end

--- Sets the player which the current undo block belongs to  
--- @param ply GPlayer @The player responsible for undoing the block
function undo.SetPlayer(ply)
end
