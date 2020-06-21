--- @class GISave
--- The object used in the saverestore, mainly in saverestore.AddSaveHook.  
--- It allows you to write blocks directly into the save game files used by Half-Life 2 save system when such save is being saved.  
local GISave = {}
--- Ends current data block started with ISave:StartBlock and returns to the parent block.  
--- To avoid all sorts of errors, you **must** end all blocks you start.  
function GISave:EndBlock()
end

--- Starts a new block of data that you can write to inside current block. Blocks **must** be ended with ISave:EndBlock.  
--- @param name string @Name of the new block
function GISave:StartBlock(name)
end

--- Writes an Angle to the save object.  
--- @param ang GAngle @The angle to write.
function GISave:WriteAngle(ang)
end

--- Writes a boolean to the save object.  
--- @param bool boolean @The boolean to write.
function GISave:WriteBool(bool)
end

--- Writes an Entity to the save object.  
--- @param ent GEntity @The entity to write.
function GISave:WriteEntity(ent)
end

--- Writes a floating point number to the save object.  
--- @param float number @The floating point number to write.
function GISave:WriteFloat(float)
end

--- Writes an integer number to the save object.  
--- @param int number @The integer number to write.
function GISave:WriteInt(int)
end

--- Writes a string to the save object.  
--- @param str string @The string to write
function GISave:WriteString(str)
end

--- Writes a Vector to the save object.  
--- @param vec GVector @The vector to write.
function GISave:WriteVector(vec)
end

