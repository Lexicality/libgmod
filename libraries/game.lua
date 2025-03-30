--- @meta

--- The game library provides functions to access various features in the game's engine, most of it's functions are related to controlling the map.  
_G.game = {}
--- Adds a new ammo type to the game.  
--- You can find a list of default ammo types [here](https://wiki.facepunch.com/gmod/Default_Ammo_Types).  
--- ⚠ **WARNING**: This function **must** be called on both the client and server in GM:Initialize or you will have unexpected problems.  
--- ℹ **NOTE**: There is a limit of 256 ammo types, including the default ones.  
--- @param ammoData SAmmoData @The attributes of the ammo
function game.AddAmmoType(ammoData)
end

--- Registers a new decal.  
--- ⚠ **WARNING**: There's a rather low limit of around 256 for decal materials that may be registered and they are not cleared on map load.  
--- @param decalName string @The name of the decal.
--- @param materialName string @The material to be used for the decal
function game.AddDecal(decalName, materialName)
end

--- Loads a particle file. Individual particle systems will still need to be precached with Global.PrecacheParticleSystem.  
--- ℹ **NOTE**: You will still need to call this function clientside regardless if you create the particle effects serverside.  
--- @param particleFileName string @The path of the file to add
function game.AddParticles(particleFileName)
end

--- Removes most entities, and then respawns entities created by the map, as if the map was just loaded.  
--- There are certain exclusions, such as players or weapons held by players, soundscapes and others.  
--- EFL_KEEP_ON_RECREATE_ENTITIES can be set on entities to preserve them through a map cleanup.  
--- On the client it will remove decals, sounds, gibs, dead NPCs, and entities created via ents.CreateClientProp. This function is ran on all clients from server automatically, when it is called on the server.  
--- This function calls GM:PreCleanupMap before cleaning up the map and GM:PostCleanupMap after cleaning up the map.  
--- Beware of calling this function in hooks that may be called on map clean up (such as ENTITY:StartTouch) to avoid infinite loops.  
--- 🦟 **BUG**: [Calling this destroys all BASS streams.](https://github.com/Facepunch/garrysmod-issues/issues/2874)  
--- 🦟 **BUG**: [This can crash when removing `_firesmoke` entities. **You can use the example below to workaround this issue.**](https://github.com/Facepunch/garrysmod-issues/issues/3637)  
--- 🦟 **BUG**: [The EFL_KEEP_ON_RECREATE_ENTITIES flag doesn't prevent an entity from being recreated, which means flagged entities will be duplicated since they are both kept and recreated.](https://github.com/Facepunch/garrysmod-issues/issues/6105)  
--- @param dontSendToClients? boolean @If set to `true`, don't run this functions on all clients.
--- @param extraFilters? table @Entity classes not to reset during cleanup.
--- @param callback? function @If set, delays the map cleanup until the end of a server tick, allowing bypassing the entity limit on maps with large amounts of them
function game.CleanUpMap(dontSendToClients, extraFilters, callback)
end

--- Runs a console command.  
--- Make sure to add a newline ("\n") at the end of the command.  
--- ⚠ **WARNING**: If you use data that were received from a client, you should avoid using this function because newline and semicolon (at least) allow the client to run arbitrary commands!  
--- For safety, you are urged to prefer using Global.RunConsoleCommand in this case.  
--- @param stringCommand string @String containing the command and arguments to be ran.
function game.ConsoleCommand(stringCommand)
end

--- Returns the damage type of given ammo type.  
--- @param id number @Ammo ID to retrieve the damage type of
--- @return number @See Enums/DMG
function game.GetAmmoDamageType(id)
end

--- Returns the Structures/AmmoData for given ID.  
--- @param id number @ID of the ammo type to look up the data for
--- @return SAmmoData @The Structures/AmmoData containing all ammo data
function game.GetAmmoData(id)
end

--- Returns the ammo bullet force that is applied when an entity is hit by a bullet of given ammo type.  
--- @param id number @Ammo ID to retrieve the force of
--- @return number 
function game.GetAmmoForce(id)
end

--- Returns the ammo type ID for given ammo type name.  
--- See game.GetAmmoName for reverse.  
--- @param name string @Name of the ammo type to look up ID of
--- @return number @The ammo type ID of given ammo type name, or -1 if not found
function game.GetAmmoID(name)
end

--- Returns the real maximum amount of ammo of given ammo ID, regardless of the setting of `gmod_maxammo` convar.  
--- @param id number @Ammo type ID
--- @return number @The maximum amount of reserve ammo a player can hold of this ammo type.
function game.GetAmmoMax(id)
end

--- Returns the damage given ammo type should do to NPCs.  
--- @param id number @Ammo ID to retrieve the damage info of
--- @return number 
function game.GetAmmoNPCDamage(id)
end

--- Returns the ammo name for given ammo type ID.  
--- See game.GetAmmoID for reverse.  
--- @param id number @Ammo ID to retrieve the name of
--- @return string @The name of given ammo type ID or nil if ammo type ID is invalid.
function game.GetAmmoName(id)
end

--- Returns the damage given ammo type should do to players.  
--- @param id number @Ammo ID to retrieve the damage info of
--- @return number 
function game.GetAmmoPlayerDamage(id)
end

--- Returns a list of all ammo types currently registered.  
--- @return {[number]: string} @A table containing all ammo types
function game.GetAmmoTypes()
end

--- Returns the counter of a Global State.  
--- See Global States for more information.  
--- @param name string @The name of the Global State to set
--- @return number @The value of the given Global State, 0 if the global state doesn't exist.
function game.GetGlobalCounter(name)
end

--- Returns whether a Global State is off, active or dead ( inactive )  
--- See Global States for more information.  
--- @param name string @The name of the Global State to retrieve the state of
--- @return number @The state of the Global State
function game.GetGlobalState(name)
end

--- Returns the public IP address and port of the current server. This will return the IP/port that you are connecting through when ran clientside.  
--- ℹ **NOTE**: Returns "loopback" in singleplayer.  
--- 🦟 **BUG**: [Returns "0.0.0.0:`port`" on the server when called too early, including in GM:Initialize and GM:InitPostEntity. This bug seems to only happen the first time a server is launched, and will return the correct value after switching maps.](https://github.com/Facepunch/garrysmod-issues/issues/3001)  
--- @return string @The IP address and port in the format "x.x.x.x:x"
function game.GetIPAddress()
end

--- Returns the name of the current map, without a file extension.  
--- On the menu state, returns "menu".  
--- ⚠ **WARNING**: In Multiplayer this does not return the current map in the CLIENT realm before GM:Initialize.  
--- @return string @The name of the current map, without a file extension.
function game.GetMap()
end

--- Returns the next map that would be loaded according to the file that is set by the mapcyclefile convar.  
--- @return string @nextMap or nil if called too early
function game.GetMapNext()
end

--- Returns the revision (Not to be confused with [VBSP Version](https://developer.valvesoftware.com/wiki/Source_BSP_File_Format#Versions)) of the current map.  
--- @return number @Revision of the currently loaded map.
function game.GetMapVersion()
end

--- Returns the difficulty level of the game.  
--- **TIP:** You can use this function in your scripted NPCs or Nextbots to make them stronger, however, it is a good idea to lock powerful attacks behind the highest difficulty instead of just increasing the health.  
--- ℹ **NOTE**: Internally this is tied to the gamerules entity, so you'll have to wait until GM:InitPostEntity is called to return the skill level  
--- @return number @The difficulty level, Easy (1), Normal (2), Hard (3).
function game.GetSkillLevel()
end

--- Returns the time scale set with game.SetTimeScale.  
--- If you want to get the value of `host_timescale` use  
--- ```lua  
--- local timescale = GetConVar( "host_timescale" ):GetFloat()  
--- ```  
--- @return number @The time scale
function game.GetTimeScale()
end

--- Returns the worldspawn entity.  
--- @return GEntity @The world
function game.GetWorld()
end

--- Returns true if the server is a dedicated server, false if it is a listen server or a singleplayer game.  
--- @return boolean @Is the server dedicated or not.
function game.IsDedicated()
end

--- Kicks a player from the server. This can be ran before the player has spawned.  
--- @param id string @UserID or SteamID of the player to kick
--- @param reason? string @Reason to display to the player
function game.KickID(id, reason)
end

--- Loads the next map according to the `nextlevel` convar, or from the current `mapcyclefile` set by the respective convar.  
function game.LoadNextMap()
end

--- Returns the map load type of the current map.  
--- After changing the map with the console command `changelevel`, "newgame" is returned. With `changelevel2` (single player only), "transition" is returned.  
--- @return string @The load type
function game.MapLoadType()
end

--- Returns the maximum amount of players (including bots) that the server can have.  
--- @return number @The maximum amount of players
function game.MaxPlayers()
end

--- Mounts a GMA addon from the disk.  
--- Can be used with steamworks.DownloadUGC  
--- ℹ **NOTE**: Any error models currently loaded that the mounted addon provides will be reloaded.  
--- Any error materials currently loaded that the mounted addon provides will NOT be reloaded. That means that this cannot be used to fix missing map materials, as the map materials are loaded before you are able to call this.  
--- @param path string @Location of the GMA file to mount, retrieved from steamworks.DownloadUGC or relative to the `garrysmod/` directory (ignores mounting)
--- @return boolean @success
--- @return table @If successful, a table of files that have been mounted
function game.MountGMA(path)
end

--- Removes all the clientside ragdolls. On server, it will remove all `prop_ragdolls` that have the `SF_RAGDOLLPROP_USE_LRU_RETIREMENT` (4096) spawnflag.  
function game.RemoveRagdolls()
end

--- Sets the counter of a Global State.  
--- See Global States for more information.  
--- @param name string @The name of the Global State to set
--- @param count number @The value to set for that Global State.
function game.SetGlobalCounter(name, count)
end

--- Sets whether a Global State is off, active or dead ( inactive )  
--- See Global States for more information.  
--- @param name string @The name of the Global State to set
--- @param state number @The state of the Global State
function game.SetGlobalState(name, state)
end

--- Sets the difficulty level of the game, can be retrieved with game.GetSkillLevel.  
--- This will automatically change whenever the "skill" convar is modified serverside.  
--- @param level number @The difficulty level, Easy( 1 ), Normal( 2 ), Hard( 3 ).
function game.SetSkillLevel(level)
end

--- Sets the time scale of the game.  
--- This function is supposed to remove the need of using the host_timescale convar, which is cheat protected.  
--- To slow down or speed up the movement of a specific player, use Player:SetLaggedMovementValue instead.  
--- ℹ **NOTE**: Like host_timescale, this method does not affect sounds, if you wish to change that, look into GM:EntityEmitSound.  
--- ℹ **NOTE**: The true timescale will be `host_timescale` multiplied by game.GetTimeScale  
--- @param timeScale number @The new timescale, minimum value is 0.001 and maximum is 5.
function game.SetTimeScale(timeScale)
end

--- Returns whether the current session is a single player game.  
--- @return boolean @isSinglePlayer
function game.SinglePlayer()
end

--- Returns the name of the entity that should be used as player start position.  
--- This is not the same thing as spawn points (See GM:PlayerSelectSpawn for that), this is used to properly transit the player between maps, and therefore will only be set after a level change via `trigger_changelevel` entity in singleplayer.  
--- @return string @The name of the entity that should be used as start position.
function game.StartSpot()
end
