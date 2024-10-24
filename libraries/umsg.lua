--- @meta

--- 🛑 **DEPRECATED**: You should be using the net library instead  
--- The umsg (user message) library was previously the most common way of sending information from the server to the client.  
--- ⚠ **WARNING**: Usermessages have a limit of only 256 bytes!  
_G.umsg = {}
--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes an angle to the usermessage.  
--- @param angle GAngle @The angle to be sent.
function umsg.Angle(angle)
end

--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a bool to the usermessage.  
--- @param bool boolean @The bool to be sent.
function umsg.Bool(bool)
end

--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a signed char to the usermessage.  
--- @param char number @The char to be sent.
function umsg.Char(char)
end

--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Dispatches the usermessage to the client(s).  
function umsg.End()
end

--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes an entity object to the usermessage.  
--- @param entity GEntity @The entity to be sent.
function umsg.Entity(entity)
end

--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a float to the usermessage.  
--- @param float number @The float to be sent.
function umsg.Float(float)
end

--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a signed int (32 bit) to the usermessage.  
--- @param int number @The int to be sent.
function umsg.Long(int)
end

--- 🛑 **DEPRECATED**: Inferior version of util.AddNetworkString  
--- The string specified will be networked to the client and receive a identifying number, which will be sent instead of the string to optimize networking.  
--- @param string string @The string to be pooled.
function umsg.PoolString(string)
end

--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a signed short (16 bit) to the usermessage.  
--- @param short number @The short to be sent.
function umsg.Short(short)
end

--- 🛑 **DEPRECATED**: You should be using net instead  
--- Starts a new usermessage.  
--- ⚠ **WARNING**: Usermessages have a limit of only 256 bytes!  
--- @param name string @The name of the message to be sent.
--- @param filter? GPlayer @If passed a player object, it will only be sent to the player, if passed a CRecipientFilter of players, it will be sent to all specified pla
function umsg.Start(name, filter)
end

--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a null terminated string to the usermessage.  
--- @param string string @The string to be sent.
function umsg.String(string)
end

--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a Vector to the usermessage.  
--- @param vector GVector @The vector to be sent.
function umsg.Vector(vector)
end

--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a vector normal to the usermessage.  
--- @param normal GVector @The vector normal to be sent.
function umsg.VectorNormal(normal)
end
