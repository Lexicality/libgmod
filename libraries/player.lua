--- The player library is used to get the Lua objects that represent players in-game.  
_G.player = {}
--- Similar to the serverside command "bot", this function creates a new Player bot with the given name. This bot will not obey to the usual "bot_*" commands, and it's the same bot base used in TF2 and CS:S.  
--- The best way to control the behaviour of a Player bot right now is to use the GM:StartCommand hook and modify its input serverside.  
--- ℹ **NOTE**: Despite this Player being fake, it has to be removed from the server by using Player:Kick and **NOT** Entity:Remove.  
--- Also keep in mind that these bots still use player slots, so you won't be able to spawn them in singleplayer!  
--- ℹ **NOTE**: Any Bot created using this method will be considered UnAuthed by Garry's Mod  
--- @param botName string @The name of the bot, using an already existing name will append brackets at the end of it with a number pertaining it
--- @return GPlayer @The newly created Player bot
function player.CreateNextBot(botName)
end

--- Gets all the current players in the server (not including connecting clients).  
--- ℹ **NOTE**: This function returns bots as well as human players. See player.GetBots and  player.GetHumans.  
--- ℹ **NOTE**: This function returns sequential table, this means it should be looped with Global.ipairs instead of Global.pairs for efficiency reasons!  
--- @return table @All Players currently in the server.
function player.GetAll()
end

--- Returns a table of all bots on the server.  
--- @return table @A table only containing bots ( AI / non human players )
function player.GetBots()
end

--- Gets the player with the specified AccountID.  
--- @param accountID string @The Player:AccountID to find the player by.
--- @return GPlayer @Player if one is found, false otherwise.
function player.GetByAccountID(accountID)
end

--- Gets the player with the specified connection ID.  
--- Connection ID can be retrieved via gameevent.Listen events.  
--- For a function that returns a player based on their Entity:EntIndex, see Global.Entity.  
--- For a function that returns a player based on their Player:UserID, see Global.Player.  
--- @param connectionID number @The connection ID to find the player by.
--- @return GPlayer @Player if one is found, nil otherwise
function player.GetByID(connectionID)
end

--- Gets the player with the specified SteamID.  
--- @param steamID string @The Player:SteamID to find the player by.
--- @return GPlayer @Player if one is found, false otherwise.
function player.GetBySteamID(steamID)
end

--- Gets the player with the specified SteamID64.  
--- @param steamID64 string @The Player:SteamID64 to find the player by
--- @return GPlayer @Player if one is found, false otherwise.
function player.GetBySteamID64(steamID64)
end

--- Gets the player with the specified uniqueID (not recommended way to identify players).  
--- ⚠ **WARNING**: It is highly recommended to use player.GetByAccountID, player.GetBySteamID or player.GetBySteamID64 instead as this function can have collisions ( be same for different people ) while SteamID is guaranteed to unique to each player.  
--- @param uniqueID string @The Player:UniqueID to find the player by.
--- @return GPlayer @Player if one is found, false otherwise.
function player.GetByUniqueID(uniqueID)
end

--- Gives you the player count. Similar to **#**player.GetAll but with much better performance.  
--- @return number @Number of players
function player.GetCount()
end

--- Returns a table of all human ( non bot/AI ) players.  
--- Unlike player.GetAll, this does not include bots.  
--- @return table @A table of all human ( non bot/AI ) players.
function player.GetHumans()
end

