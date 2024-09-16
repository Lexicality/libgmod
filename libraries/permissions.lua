--- Used to ask player for various potentially dangerous permissions.  
_G.permissions = {}
--- Requests the player to connect to a specified server. The player will be prompted with a confirmation window.  
--- @param address string @The address to ask to connect to
function permissions.AskToConnect(address)
end

--- Activates player's microphone as if they pressed the speak button themself. The player will be prompted with a confirmation window which grants permission temporarily/permanently(depending on checkbox state) for the connected server (revokable).  
--- This is used for TTT's traitor voice channel.  
--- @param enable boolean @Enable or disable voice activity
function permissions.EnableVoiceChat(enable)
end

--- Returns whether the player has granted the current server a specific permission.  
--- @param permission string @The permission to poll
--- @return boolean @Whether the permission is granted or not.
function permissions.IsGranted(permission)
end

