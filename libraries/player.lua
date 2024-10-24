--- @meta

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
--- This function returns bots as well as human players. See player.GetBots and  player.GetHumans.  
--- ℹ **NOTE**: This function returns a sequential table, meaning it should be looped with Global.ipairs instead of Global.pairs for efficiency reasons.  
--- @return table @All Players currently in the server.
function player.GetAll()
end

--- Returns a table of all bots on the server.  
--- @return table @A table only containing bots ( AI / non human players )
function player.GetBots()
end

--- Tried to get the player with the specified Player:AccountID.  
--- ⚠ **WARNING**: Internally this function iterates over all players in the server, meaning it can be quite expensive in a performance-critical context.  
--- @param accountID number @The Player:AccountID to find the player by.
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
--- ⚠ **WARNING**: Internally this function iterates over all players in the server, meaning it can be quite expensive in a performance-critical context.  
--- @param steamID string @The Player:SteamID to find the player by.
--- @return GPlayer @Player if one is found, false otherwise.
function player.GetBySteamID(steamID)
end

--- Gets the player with the specified SteamID64.  
--- ⚠ **WARNING**: Internally this function iterates over all players in the server, meaning it can be quite expensive in a performance-critical context.  
--- @param steamID64 string @The Player:SteamID64 to find the player by.
--- @return GPlayer @Player if one is found, false otherwise.
function player.GetBySteamID64(steamID64)
end

--- 🛑 **DEPRECATED**: Use player.GetBySteamID64, player.GetBySteamID or player.GetByAccountID to get a player by a unique identifier instead.  
--- Gets the player with the specified uniqueID (not recommended way to identify players).  
--- ⚠ **WARNING**: It is highly recommended to use player.GetByAccountID, player.GetBySteamID or player.GetBySteamID64 instead as this function can have collisions ( be same for different people ) while SteamID is guaranteed to unique to each player.  
--- ⚠ **WARNING**: Internally this function iterates over all players in the server, meaning it can be quite expensive in a performance-critical context.  
--- @param uniqueID string @The Player:UniqueID to find the player by.
--- @return GPlayer @Player if one is found, false otherwise.
function player.GetByUniqueID(uniqueID)
end

--- Gives you the player count.  
--- ℹ **NOTE**: Similar to **#**player.GetAll() but with better performance since the player table doesn't have to be generated. If player.GetAll is already being called for iteration, then using the **#** operator on the table will be faster than calling this function since it is JITted.  
--- @return number @Number of players
function player.GetCount()
end

--- Returns a table containing all human players (non-bot/AI).  
--- Unlike player.GetAll, this does not include bots.  
--- ℹ **NOTE**: This function returns a sequential table, meaning it should be looped with Global.ipairs instead of Global.pairs for efficiency reasons.  
--- @return table @A table containing all human (non-bot/AI) players.
function player.GetHumans()
end

--- Returns a [Stateless Iterator](https://www.lua.org/pil/7.3.html) for all players on the server.  
--- Intended for use in [Generic For Loops](https://www.lua.org/pil/4.3.5.html).  
--- See ents.Iterator for a similar function for all entities.  
--- Internally, this function uses cached values that exist entirely within lua, as opposed to player.GetAll, which is a C++ function.  
--- Because switching from lua to C++ (and vice versa) incurs a performance cost, this function will be somewhat more efficient than player.GetAll.  
--- ℹ **NOTE**: The GM:OnEntityCreated and GM:EntityRemoved hooks are used internally to invalidate this function's cache. Using this function inside those hooks is not guaranteed to use an up-to-date cache because hooks are currently executed in an arbitrary order.  
--- ⚠ **WARNING**: An error being thrown inside the GM:OnEntityCreated or GM:EntityRemoved hooks is likely to break this function. Make it certain that no addons are causing any errors in those hooks.  
--- @return function @The Iterator Function from ipairs
--- @return table @Table of all existing Players
--- @return number @The starting index for the table of players
function player.Iterator()
end
