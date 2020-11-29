--- The net library is one of a number of ways to send data between the client and server.  
--- The major advantages of the net library are the large size limit (64kb/message) and the ability to send data backwards - from the client to the server.  
--- Refer to Net Library Usage for a short introduction.  
_G.net = {}
--- Sends the currently built net message to all connected players.  
--- More information can be found in Net Library Usage.  
function net.Broadcast()
end

--- Returns the amount of data left to read in the current message in bytes. Does nothing when sending data.  
--- @return number @The amount of data left to read in the current net message in bytes
--- @return number @The amount of data left to read in the current net message in bits
function net.BytesLeft()
end

--- Returns the size of the current message in bytes.  
--- ℹ **NOTE**: This will include 3 extra bytes used by the engine internally to send the data over the network.  
--- @return number @The amount of bytes written to the current net message
--- @return number @The amount of bits written to the current net message
function net.BytesWritten()
end

--- Reads an angle from the received net message.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @return GAngle @The read angle, or Angle(0,0,0) if no angle could be read
function net.ReadAngle()
end

--- Reads a bit from the received net message.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @return number @0 or 1, or 0 if the bit could not be read.
function net.ReadBit()
end

--- Reads a boolean from the received net message.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @return boolean @true or false, or false if the bool could not be read.
function net.ReadBool()
end

--- Reads a Color from the current net message.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @return table @The Color read from the current net message, or Color(0,0,0,0) if the color could not be read.
function net.ReadColor()
end

--- Reads pure binary data from the message.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @param length number @The length of the data to be read, in bytes.
--- @return string @The binary data read, or a string containing one character with a byte of 0 if no data could be read.
function net.ReadData(length)
end

--- Reads a double-precision number from the received net message.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @return number @The double-precision number, or 0 if no number could be read.
function net.ReadDouble()
end

--- Reads an entity from the received net message. You should always check if the specified entity exists as it may have been removed and therefor NULL if it is outside of the players PVS or was already removed.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @return GEntity @The entity, or Entity(0) if no entity could be read.
function net.ReadEntity()
end

--- Reads a floating point number from the received net message.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @return number @The floating point number, or 0 if no number could be read.
function net.ReadFloat()
end

--- Reads an integer from the received net message.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @param bitCount number @The amount of bits to be read
--- @return number @The read integer number, or 0 if no integer could be read.
function net.ReadInt(bitCount)
end

--- Reads a VMatrix from the received net message.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @return GVMatrix @The matrix, or an empty matrix if no matrix could be read.
function net.ReadMatrix()
end

--- Reads a normal vector from the net message.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @return GVector @The normalized vector ( length = 1 ), or Vector(0,0,1) if no normal could be read.
function net.ReadNormal()
end

--- Reads a null terminated string from the net stream. The size of the string is 8 bits plus 8 bits for every ASCII character in the string.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @return string @The read string, or a string with 0 length if no string could be read.
function net.ReadString()
end

--- Reads a table from the received net message.  
--- ℹ **NOTE**: Sometimes when sending a table through the net library, the order of the keys may be switched. So be cautious when comparing (See Example 1).  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- See net.WriteTable for extra info.  
--- You may get `net.ReadType: Couldn't read type X` during the execution of the function, the problem is that you are sending objects that cannot be serialized/sent over the network.  
--- @return table @Table recieved via the net message, or a blank table if no table could be read.
function net.ReadTable()
end

--- Reads an unsigned integer with the specified number of bits from the received net message.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @param numberOfBits number @The size of the integer to be read, in bits.
--- @return number @The unsigned integer read, or 0 if the integer could not be read.
function net.ReadUInt(numberOfBits)
end

--- Reads a vector from the received net message.  Vectors sent by this function are compressed, which may result in precision loss. See net.WriteVector for more information.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @return GVector @The read vector, or Vector(0,0,0) if no vector could be read.
function net.ReadVector()
end

--- Adds a net message handler. Only one receiver can be used to receive the net message.  
--- ℹ **NOTE**: The message-name is converted to lower-case so the message-names "`BigBlue`" and "`bigblue`" would be equal.  
--- ⚠ **WARNING**: You **must** put this function **outside** of any other function or hook for it to work properly unless you know what you are doing!  
--- ⚠ **WARNING**: You **must** read information in the same order as you write it.  
--- ⚠ **WARNING**: Each net message has a length limit of 64KB!  
--- @param messageName string @The message name to hook to.
--- @param callback function @The function to be called if the specified message was received
function net.Receive(messageName, callback)
end

--- Sends the current message to the specified player, or to all players listed in the table.  
--- @param ply GPlayer @The player(s) to send the message to
function net.Send(ply)
end

--- Sends the current message to all except the specified, or to all except all players in the table.  
--- @param ply GPlayer @The player(s) to NOT send the message to
function net.SendOmit(ply)
end

--- Sends the message to all players that are in the same potentially audible set(PAS) as the position, or simply said, it adds all players that can potentially hear sounds from this position.  
--- @param position GVector @PAS position.
function net.SendPAS(position)
end

--- Sends the message to all players the position is in the PVS of or, more simply said, sends the message to players that can potentially see this position.  
--- @param position GVector @Position that must be in players' visibility set.
function net.SendPVS(position)
end

--- Sends the current message to the server.  
function net.SendToServer()
end

--- Begins a new net message. If another net message is already started and hasn't been sent yet, it will be discarded.  
--- ⚠ **WARNING**: Each net message has a length limit of 64KB!  
--- ⚠ **WARNING**: The message name must be pooled with util.AddNetworkString beforehand!  
--- @param messageName string @The name of the message to send
--- @param unreliable boolean @If set to true, the message is not guaranteed to reach its destination
--- @return boolean @True if the message has been started.
function net.Start(messageName, unreliable)
end

--- Writes an angle to the current net message.  
--- @param angle GAngle @The angle to be sent.
function net.WriteAngle(angle)
end

--- Appends a boolean (as 1 or 0) to the current net message.  
--- Please note that the bit is written here from a boolean (true/false) but net.ReadBit returns a number.  
--- @param boolean boolean @Bit status (false = 0, true = 1)
function net.WriteBit(boolean)
end

--- Appends a boolean to the current net message. Alias of net.WriteBit  
--- @param boolean boolean @Boolean value to write
function net.WriteBool(boolean)
end

--- Appends a Color to the current net message.  
--- @param Color table @The Color you want to append to the net message.
function net.WriteColor(Color)
end

--- Writes a chunk of binary data to the message.  
--- @param binaryData string @The binary data to be sent.
--- @param length number @The length of the binary data to be sent, in bytes.
function net.WriteData(binaryData, length)
end

--- Appends a double-precision number to the current net message.  
--- @param double number @The double to be sent
function net.WriteDouble(double)
end

--- Appends an entity to the current net message.  
--- @param entity GEntity @The entity to be sent.
function net.WriteEntity(entity)
end

--- Appends a float (number with decimals) to the current net message.  
--- @param float number @The float to be sent.
function net.WriteFloat(float)
end

--- Appends an integer - a whole number - to the current net message. Can be read back with net.ReadInt on the receiving end.  
--- Use net.WriteUInt to send an unsigned number (that you know will never be negative). Use net.WriteFloat for a non-whole number (e.g. 2.25).  
--- @param integer number @The integer to be sent.
--- @param bitCount number @The amount of bits the number consists of
function net.WriteInt(integer, bitCount)
end

--- Writes a VMatrix to the current net message.  
--- @param matrix GVMatrix @The matrix to be sent.
function net.WriteMatrix(matrix)
end

--- Writes a normalized/direction vector ( Vector with length of 1 ) to the net message.  
--- This function uses less bandwidth compared to net.WriteVector and will not send vectors with length of > 1 properly.  
--- @param normal GVector @The normalized/direction vector to be send.
function net.WriteNormal(normal)
end

--- Appends a string to the current net message. The size of the string is 8 bits plus 8 bits for every ASCII character in the string. The maximum allowed length of a single written string is 65533 characters.  
--- @param string string @The string to be sent.
function net.WriteString(string)
end

--- Appends a table to the current net message. Adds 16 extra bits per key/value pair so you're better off writing each individual key/value as the exact type if possible.  
--- ⚠ **WARNING**: All net messages have a 64kb buffer. This function will not check or error when that buffer is overflown. You might want to consider using util.TableToJSON and util.Compress and send the resulting string in 60kb chunks, doing the opposite on the receiving end.  
--- @param table table @The table to be sent
function net.WriteTable(table)
end

--- Appends an unsigned integer with the specified number of bits to the current net message.  
--- Use net.WriteInt if you want to send negative and positive numbers. Use net.WriteFloat for a non-whole number (e.g. 2.25).  
--- ℹ **NOTE**: Unsigned numbers do not support negative numbers.  
--- @param unsignedInteger number @The unsigned integer to be sent.
--- @param numberOfBits number @The size of the integer to be sent, in bits
function net.WriteUInt(unsignedInteger, numberOfBits)
end

--- Appends a vector to the current net message.  
--- Vectors sent by this function are compressed, which may result in precision loss.  XYZ components greater than 16384 or less than -16384 are irrecoverably altered (most significant bits are trimmed) and precision after the decimal point is low.  
--- @param vector GVector @The vector to be sent.
function net.WriteVector(vector)
end

