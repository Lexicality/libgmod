--- @meta

--- The engine library provides functions to access various features in the game's engine, most are related to the demo and save systems.  
_G.engine = {}
--- Returns non paused Global.FrameTime.  
--- @return number @Frame time.
function engine.AbsoluteFrameTime()
end

--- Returns the name of the currently running gamemode.  
--- @return string @The active gamemode's name
function engine.ActiveGamemode()
end

--- Closes the server and completely exits.  
--- To enable this function for use on your server, add `-allowquit` to your commandline, which will make this function run `quit keep_players` when executed, this also does not forcibly disconnect players.  
--- This is also available when running in server test mode (launch option `-systemtest`). Server test mode is used internally at Facepunch as part of the build process to make sure that the dedicated servers aren't crashing on startup.  
function engine.CloseServer()
end

--- Returns a list of addons the player have subscribed to on the workshop.  
--- This list will also include "Floating" .gma addons that are mounted by the game, but not the folder addons.  
--- @return table @A table of tables containing 8 keys (downloaded, models, title, file, mounted, wsid, size, updated).
function engine.GetAddons()
end

--- When starting playing a demo, engine.GetDemoPlaybackTick will be reset and its old value will be added to this functions return value.  
--- @return number 
function engine.GetDemoPlaybackStartTick()
end

--- Current tick of currently loaded demo.  
--- If not playing a demo, it will return amount of ticks since last demo playback.  
--- @return number @The amount of ticks of currently loaded demo.
function engine.GetDemoPlaybackTick()
end

--- Returns time scale of demo playback.  
--- If not during demo playback, returns 1.  
--- @return number @The time scale of demo playback, value of demo_timescale console variable.
function engine.GetDemoPlaybackTimeScale()
end

--- Returns total amount of ticks of currently loaded demo.  
--- If not playing a demo, returns 0 or the value of last played demo.  
--- @return number @Total amount of ticks of currently loaded demo.
function engine.GetDemoPlaybackTotalTicks()
end

--- Returns a table containing info for all installed gamemodes  
--- @return table @gamemodes
function engine.GetGamemodes()
end

--- Returns an array of tables corresponding to all games from which Garry's Mod supports mounting content.  
--- @return table @A table of tables containing all mountable games
function engine.GetGames()
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Used internally for in-game menus, may be merged in the future into engine.GetAddons.  
--- Returns the UGC (demos, saves and dupes) the player have subscribed to on the workshop.  
--- @return table @Returns a table with 5 keys (title, type, tags, wsid, timeadded)
function engine.GetUserContent()
end

--- Returns true if we're currently playing a demo.  
--- You will notice that there's no server-side version of this. That's because there is no server when playing a demo. Demos are both recorded and played back purely clientside.  
--- @return boolean @Whether the game is currently playing a demo or not.
function engine.IsPlayingDemo()
end

--- Returns true if the game is currently recording a demo file (.dem) using gm_demo  
--- @return boolean @Whether the game is currently recording a demo or not.
function engine.IsRecordingDemo()
end

--- This is a direct binding to the function `engine->LightStyle`. This function allows you to change the default light style of the map - so you can make lighting lighter or darker. You’ll need to call render.RedownloadAllLightmaps clientside to refresh the lightmaps to this new color.  
--- 🦟 **BUG**: [Calling this function with arguments 0 and "a" will cause dynamic lights such as those produced by the Light tool to stop working.](https://github.com/Facepunch/garrysmod-issues/issues/3626)  
--- @param lightstyle number @The lightstyle to edit
--- @param pattern string @The pattern to change the lightstyle to
function engine.LightStyle(lightstyle, pattern)
end

--- Loads a duplication from the local filesystem.  
--- @param dupeName string @Name of the file
--- @return table @A table with a simple field:
function engine.OpenDupe(dupeName)
end

--- Returns an estimate of the server's performance. Equivalent to calling Global.FrameTime from the server, according to source code.  
--- @return number @Frame time.
--- @return number @Server framerate [standard deviation](https://en.wikipedia.org/wiki/Standard_deviation).
function engine.ServerFrameTime()
end

--- Returns the number of ticks since the game server started.  
--- @return number @Number of ticks since the game server started.
function engine.TickCount()
end

--- Returns the time interval between each game tick in seconds.  
--- This function is useful for making animations (usually serverside, such as doors rotating) and similar things to be independent of the tickrate in hooks that run at the tick rate, such as GM:Tick.  
--- Clientside you'd want to use Global.FrameTime for this purpose in hooks that run every frame.  
--- The default tickrate is `66.6666`, aka `15` milliseconds interval between each game tick.  
--- The tickrate can be adjusted via the `-tickrate` [command line option](Command_Line_Parameters).  
--- @return number @Number of seconds between each gametick.
function engine.TickInterval()
end
