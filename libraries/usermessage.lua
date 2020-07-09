--- 🛑 **DEPRECATED**: You should be using the net instead  
--- The usermessage library is used to receive user messages from the server on the client.  
--- ⚠ **WARNING**: Usermessages have a limit of only 256 bytes!  
_G.usermessage = {}
--- Returns a table of every usermessage hook  
--- @return table @hooks
function usermessage.GetTable()
end

--- 🛑 **DEPRECATED**: You should be using net instead  
--- Sets a hook for the specified to be called when a usermessage with the specified name arrives.  
--- ⚠ **WARNING**: Usermessages have a limit of only 256 bytes!  
--- @param name string @The message name to hook to.
--- @param callback function @The function to be called if the specified message was received
function usermessage.Hook(name, callback, ...)
end

