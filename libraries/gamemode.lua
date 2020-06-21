--- The gamemode library provides functions relating to the gamemode system in Garry's Mod.  
_G.gamemode = {}
--- Called by the engine to call a hook within the loaded gamemode.  
--- The supplied event 'name' must be defined in the active gamemode. Otherwise, nothing will happen - not even hooks added with hook.Add will be called.  
--- This is similar to hook.Run and hook.Call, except the hook library will call hooks created with hook.Add even if there is no corresponding gamemode function.  
--- @param name string @The name of the hook to call.
--- @vararg any @The arguments
--- @return any @The result of the hook function - can be up to 6 values
function gamemode.Call(name, ...)
end

