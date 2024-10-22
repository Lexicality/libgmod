--- @meta

--- @class GIRestore
--- The object used in the saverestore, mainly in saverestore.AddRestoreHook.  
--- It allows you to read blocks directly from the save game files used by Half-Life 2 save system when such save is loaded.  
local GIRestore = {}
--- Ends current data block started with IRestore:StartBlock and returns to the parent block.  
--- To avoid all sorts of errors, you **must** end all blocks you start.  
function GIRestore:EndBlock()
end

--- Reads next bytes from the restore object as an Angle.  
--- @return GAngle @The angle that has been read
function GIRestore:ReadAngle()
end

--- Reads next bytes from the restore object as a boolean.  
--- @return boolean @The boolean that has been read
function GIRestore:ReadBool()
end

--- Reads next bytes from the restore object as an Entity.  
--- @return GEntity @The entity that has been read.
function GIRestore:ReadEntity()
end

--- Reads next bytes from the restore object as a floating point number.  
--- @return number @The read floating point number.
function GIRestore:ReadFloat()
end

--- Reads next bytes from the restore object as an integer number.  
--- @return number @The read integer number.
function GIRestore:ReadInt()
end

--- Reads next bytes from the restore object as a string.  
--- @return string @The read string.
function GIRestore:ReadString()
end

--- Reads next bytes from the restore object as a Vector.  
--- @return GVector @The read vector.
function GIRestore:ReadVector()
end

--- Loads next block of data to be read inside current block. Blocks **must** be ended with IRestore:EndBlock.  
--- @return string @The name of the next data block to be read.
function GIRestore:StartBlock()
end
