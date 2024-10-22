--- @meta

--- @class GCRecipientFilter
--- List of all possible functions to manipulate Recipient Filters. Can be created with Global.RecipientFilter.  
local GCRecipientFilter = {}
--- Adds all players to the recipient filter.  
function GCRecipientFilter:AddAllPlayers()
end

--- Adds all players that are in the same [PAS (Potentially Audible Set)](https://developer.valvesoftware.com/wiki/PAS "PAS - Valve Developer Community") as this position.  
--- @param pos GVector @A position that players may be able to hear, usually the position of an entity the sound is playing played from.
function GCRecipientFilter:AddPAS(pos)
end

--- Adds all players that are in the same [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community") as this position.  
--- @param Position GVector @PVS position that players may be able to see.
function GCRecipientFilter:AddPVS(Position)
end

--- Adds a player to the recipient filter  
--- @param Player GPlayer @Player to add to the recipient filter.
function GCRecipientFilter:AddPlayer(Player)
end

--- Adds players to the recipient filter from a given table or another recipient filter.  
--- @param input GCRecipientFilter @The filter to add players from
function GCRecipientFilter:AddPlayers(input)
end

--- Adds all players that are on the given team to the filter.  
--- @param teamid number @Team index to add players from.
function GCRecipientFilter:AddRecipientsByTeam(teamid)
end

--- Returns the number of valid players in the recipient filter.  
--- @return number @Number of valid players in the recipient filter.
function GCRecipientFilter:GetCount()
end

--- Returns a table of all valid players currently in the recipient filter.  
--- @return table @A table of all valid players currently in the recipient filter.
function GCRecipientFilter:GetPlayers()
end

--- Removes all players from the recipient filter.  
function GCRecipientFilter:RemoveAllPlayers()
end

--- Remove players from this recipient filter that are **NOT** present in a given table or recipient filter.  
--- @param input GCRecipientFilter @The filter that contains a list of players to test against
function GCRecipientFilter:RemoveMismatchedPlayers(input)
end

--- Removes all players from the filter that are in [PAS (Potentially Audible Set)](https://developer.valvesoftware.com/wiki/PAS "PAS - Valve Developer Community") for given position.  
--- @param position GVector @The position to test
function GCRecipientFilter:RemovePAS(position)
end

--- Removes all players that can see this [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community") from the recipient filter.  
--- @param pos GVector @Position that players may be able to see.
function GCRecipientFilter:RemovePVS(pos)
end

--- Removes the player from the recipient filter.  
--- @param Player GPlayer @The player that should be in the recipient filter if you call this function.
function GCRecipientFilter:RemovePlayer(Player)
end

--- Remove players from this recipient filter that are present in a given table or recipient filter.  
--- @param input GCRecipientFilter @The filter that contains a list of players to remove
function GCRecipientFilter:RemovePlayers(input)
end

--- Removes all players that are on the given team from the filter.  
--- @param teamid number @Team index to remove players from.
function GCRecipientFilter:RemoveRecipientsByTeam(teamid)
end

--- Removes all players that are not on the given team from the filter.  
--- @param teamid number @Team index.
function GCRecipientFilter:RemoveRecipientsNotOnTeam(teamid)
end
