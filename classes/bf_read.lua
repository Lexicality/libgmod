--- @meta

--- @class Gbf_read
--- This is the object passed to usermessage.Hook when a message is received. It contains each value stored in the message in sequential order. You should read values from it in the order you wrote them.  
--- 🛑 **DEPRECATED**: You should be using net instead  
local Gbf_read = {}
--- Reads and returns an angle object from the bitstream.  
--- @return GAngle @The read angle
function Gbf_read:ReadAngle()
end

--- Reads 1 bit and returns a bool representing the bit.  
--- @return boolean @bit
function Gbf_read:ReadBool()
end

--- Reads a signed char and returns a number from -127 to 127 representing the ascii value of that char.  
--- @return number @asciiVal
function Gbf_read:ReadChar()
end

--- Reads a short representing an entity index and returns the matching entity handle.  
--- @return GEntity @ent
function Gbf_read:ReadEntity()
end

--- Reads a 4 byte float from the bitstream and returns it.  
--- @return number @float
function Gbf_read:ReadFloat()
end

--- Reads a 4 byte long from the bitstream and returns it.  
--- @return number @int
function Gbf_read:ReadLong()
end

--- Reads a 2 byte short from the bitstream and returns it.  
--- @return number @short
function Gbf_read:ReadShort()
end

--- Reads a null terminated string from the bitstream.  
--- @return string @str
function Gbf_read:ReadString()
end

--- Reads a special encoded vector from the bitstream and returns it, this function is not suitable to send normals.  
--- @return GVector @vec
function Gbf_read:ReadVector()
end

--- Reads a special encoded vector normal from the bitstream and returns it, this function is not suitable to send vectors that represent a position.  
--- @return GVector @normal
function Gbf_read:ReadVectorNormal()
end

--- Rewinds the bitstream so it can be read again.  
function Gbf_read:Reset()
end

