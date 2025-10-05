--- @meta

--- @class GFile
--- This is the file object. It used used primarily to read or write binary data from files.  
--- The default endianness is little-endian. To use big-endian you will need to provide your own functions to read and write shorts and longs.  
--- The object is returned by file.Open.  
local GFile = {}
--- Dumps the file changes to disk and closes the file handle which makes the handle useless.  
function GFile:Close()
end

--- Returns whether the File object has reached the end of file or not.  
--- @return boolean @Whether the file has reached end or not.
function GFile:EndOfFile()
end

--- Dumps the file changes to disk and saves the file.  
function GFile:Flush()
end

--- Reads the specified amount of chars and returns them as a binary string.  
--- @param length? number @Reads the specified amount of chars
--- @return string 
function GFile:Read(length)
end

--- Reads one byte of the file and returns whether that byte was not 0.  
--- @return boolean @val
function GFile:ReadBool()
end

--- Reads one unsigned 8-bit integer from the file.  
--- @return number @The unsigned 8-bit integer from the file.
function GFile:ReadByte()
end

--- Reads an 8-byte little-endian IEEE-754 floating point double from the file.  
--- @return number @The double-precision floating point value read from the file.
function GFile:ReadDouble()
end

--- Reads an IEEE 754 little-endian 4-byte float from the file.  
--- @return number @The read value
function GFile:ReadFloat()
end

--- Returns the contents of the file from the current position up until the end of the current line.  
--- ℹ **NOTE**: This function will look specifically for `Line Feed` characters `\n` and will **completely ignore `Carriage Return` characters** `\r`.  
--- It will also stop at a `\0` or `NULL` character, but will add a new line instead.  
--- This function will not return more than 8192 characters. The return value will include the `\n` character.  
--- @return string @The string of data from the read line.
function GFile:ReadLine()
end

--- Reads a signed little-endian 32-bit integer from the file.  
--- @return number @A signed 32-bit integer
function GFile:ReadLong()
end

--- Reads a signed little-endian 16-bit integer from the file.  
--- @return number @int16
function GFile:ReadShort()
end

--- Reads an unsigned 64-bit integer from the file.  
--- @return string @An unsigned 64-bit integer
function GFile:ReadUInt64()
end

--- Reads an unsigned little-endian 32-bit integer from the file.  
--- @return number @An unsigned 32-bit integer
function GFile:ReadULong()
end

--- Reads an unsigned little-endian 16-bit integer from the file.  
--- @return number @The 16-bit integer
function GFile:ReadUShort()
end

--- Sets the file pointer to the specified position.  
--- @param pos number @Pointer position, in bytes.
function GFile:Seek(pos)
end

--- Returns the size of the file in bytes.  
--- @return number 
function GFile:Size()
end

--- Moves the file pointer by the specified amount of chars.  
--- @param amount number @The amount of chars to skip, can be negative to skip backwards.
--- @return number @amount
function GFile:Skip(amount)
end

--- Returns the current position of the file pointer.  
--- @return number @pos
function GFile:Tell()
end

--- Writes the given string into the file.  
--- @param data string @Binary data to write to the file.
function GFile:Write(data)
end

--- Writes a boolean value to the file as one **byte**.  
--- @param bool boolean @The bool to be written to the file.
function GFile:WriteBool(bool)
end

--- Write an 8-bit unsigned integer to the file.  
--- @param uint8 number @The 8-bit unsigned integer to be written to the file.
function GFile:WriteByte(uint8)
end

--- Writes an 8-byte little-endian IEEE-754 floating point double to the file.  
--- @param double number @The double to be written to the file.
function GFile:WriteDouble(double)
end

--- Writes an IEEE 754 little-endian 4-byte float to the file.  
--- @param float number @The float to be written to the file.
function GFile:WriteFloat(float)
end

--- Writes a signed little-endian 32-bit integer to the file.  
--- @param int32 number @The 32-bit signed integer to be written to the file.
function GFile:WriteLong(int32)
end

--- Writes a signed little-endian 16-bit integer to the file.  
--- @param int16 number @The 16-bit signed integer to be written to the file.
function GFile:WriteShort(int16)
end

--- Writes an unsigned 64-bit integer to the file.  
--- @param uint64 string @The unsigned 64-bit integer to be written to the file
function GFile:WriteUInt64(uint64)
end

--- Writes an unsigned little-endian 32-bit integer to the file.  
--- @param uint32 number @The unsigned 32-bit integer to be written to the file.
function GFile:WriteULong(uint32)
end

--- Writes an unsigned little-endian 16-bit integer to the file.  
--- @param uint16 number @The unsigned 16-bit integer to the file.
function GFile:WriteUShort(uint16)
end
