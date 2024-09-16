--- The cvars library allows you to control what happens when a cvar (console variable) is changed.  
_G.cvars = {}
--- Adds a callback to be called when the named convar changes.  
--- 🦟 **BUG**: [This does not callback convars in the menu state.](https://github.com/Facepunch/garrysmod-issues/issues/1440)  
--- 🦟 **BUG**: [This does not callback convars on the client with FCVAR_GAMEDLL and convars on the server without FCVAR_GAMEDLL.](https://github.com/Facepunch/garrysmod-issues/issues/3503)  
--- 🦟 **BUG**: [This does not callback convars on the client with FCVAR_REPLICATED.](https://github.com/Facepunch/garrysmod-issues/issues/3740)  
--- @param name? string @The name of the convar to add the change callback to.
--- @param callback? function @The function to be called when the convar changes
--- @param identifier? string @If set, you will be able to remove the callback using cvars.RemoveChangeCallback
function cvars.AddChangeCallback(name, callback, identifier)
end

--- Retrieves console variable as a boolean.  
--- @param cvar? string @Name of console variable
--- @param default? boolean @The value to return if the console variable does not exist
--- @return boolean @Retrieved value
function cvars.Bool(cvar, default)
end

--- Returns a table of the given ConVars callbacks.  
--- @param name? string @The name of the ConVar.
--- @param createIfNotFound? boolean @Whether or not to create the internal callback table for given ConVar if there isn't one yet
--- @return table @A table of the convar's callbacks, or nil if the convar doesn't exist.
function cvars.GetConVarCallbacks(name, createIfNotFound)
end

--- Retrieves console variable as a number.  
--- @param cvar? string @Name of console variable
--- @param default? any @The value to return if the console variable does not exist
--- @return number @Retrieved value or the second argument if the console variable does not exist
function cvars.Number(cvar, default)
end

--- Removes a callback for a convar using the the callback's identifier. The identifier should be the third argument specified for cvars.AddChangeCallback.  
--- @param name string @The name of the convar to remove the callback from.
--- @param indentifier string @The callback's identifier.
function cvars.RemoveChangeCallback(name, indentifier)
end

--- Retrieves console variable as a string.  
--- @param cvar? string @Name of console variable
--- @param default? any @The value to return if the console variable does not exist
--- @return string @Retrieved value
function cvars.String(cvar, default)
end

