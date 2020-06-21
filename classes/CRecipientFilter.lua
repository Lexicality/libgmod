--- @class GCRecipientFilter
--- List of all possible functions to manipulate Recipient Filters. Can be created with Global.RecipientFilter.  
local GCRecipientFilter = {}
--- Adds all players to the recipient filter.  
function GCRecipientFilter:AddAllPlayers()
end

--- Adds all players that are in the same PAS as this position.  
--- @param pos GVector @PAS position that players may be able to hear.
function GCRecipientFilter:AddPAS(pos)
end

--- Adds all players that are in the same PVS as this position.  
--- @param Position GVector @PVS position.
function GCRecipientFilter:AddPVS(Position)
end

--- Adds a player to the recipient filter  
--- @param Player GPlayer @Player to add to the recipient filter.
function GCRecipientFilter:AddPlayer(Player)
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

--- Removes all players from the filter that are in Potentially Audible Set for given position.  
--- @param position GVector @The position to test
function GCRecipientFilter:RemovePAS(position)
end

--- Removes all players that can see this PVS from the recipient filter.  
--- @param pos GVector @Position that players may be able to see.
function GCRecipientFilter:RemovePVS(pos)
end

--- Removes the player from the recipient filter.  
--- @param Player GPlayer @The player that should be in the recipient filter if you call this function.
function GCRecipientFilter:RemovePlayer(Player)
end

--- Removes all players that are on the given team from the filter.  
--- @param teamid number @Team index to remove players from.
function GCRecipientFilter:RemoveRecipientsByTeam(teamid)
end

--- Removes all players that are not on the given team from the filter.  
--- @param teamid number @Team index.
function GCRecipientFilter:RemoveRecipientsNotOnTeam(teamid)
end

