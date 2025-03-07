--- @meta

--- Initial state, the global state is off.  
_G.GLOBAL_OFF = 0
--- The global state is enabled.  
_G.GLOBAL_ON = 1
--- The global state is dead and is no longer active. It will be cleared.  
_G.GLOBAL_DEAD = 2

--- Enumerations used by game.SetGlobalState and game.GetGlobalState.  
--- Serverside only.  
--- @alias EGLOBAL `GLOBAL_OFF`|`GLOBAL_ON`|`GLOBAL_DEAD`
