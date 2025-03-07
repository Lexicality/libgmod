--- @meta

--- Save the ConVar value into either client.vdf or server.vdf  
--- Reported as "a" by `cvarlist`, except Lua ConVars  
_G.FCVAR_ARCHIVE = 128
--- Save the ConVar value into config.vdf on XBox  
_G.FCVAR_ARCHIVE_XBOX = 16777216
--- Requires sv_cheats to be enabled to change the ConVar or run the command  
--- Reported as "cheat" by `cvarlist`  
_G.FCVAR_CHEAT = 16384
--- IVEngineClient::ClientCmd is allowed to execute this command  
--- Reported as "clientcmd_can_execute" by `cvarlist`  
_G.FCVAR_CLIENTCMD_CAN_EXECUTE = 1073741824
--- ConVar is defined by the client DLL.  
--- This flag is set automatically  
--- Reported as "cl" by `cvarlist`  
_G.FCVAR_CLIENTDLL = 8
--- Force the ConVar to be recorded by demo recordings.  
--- Reported as "demo" by `cvarlist`  
_G.FCVAR_DEMO = 65536
--- Opposite of FCVAR_DEMO, ensures the ConVar is not recorded in demos  
--- Reported as "norecord" by `cvarlist`  
_G.FCVAR_DONTRECORD = 131072
--- ConVar is defined by the game DLL.  
--- This flag is set automatically  
--- Reported as "sv" by `cvarlist`  
_G.FCVAR_GAMEDLL = 4
--- Set automatically on all ConVars and console commands created by the client Lua state.  
--- Reported as "lua_client" by `cvarlist`  
_G.FCVAR_LUA_CLIENT = 262144
--- Set automatically on all ConVars and console commands created by the server Lua state.  
--- Reported as "lua_server" by `cvarlist`  
_G.FCVAR_LUA_SERVER = 524288
--- Tells the engine to never print this variable as a string. This is used for variables which may contain control characters.  
--- Reported as "numeric" by `cvarlist`  
_G.FCVAR_NEVER_AS_STRING = 4096
--- No flags  
_G.FCVAR_NONE = 0
--- For serverside ConVars, notifies all players with blue chat text when the value gets changed  
--- Reported as "nf" by `cvarlist`  
_G.FCVAR_NOTIFY = 256
--- Makes the ConVar not changeable while connected to a server or in singleplayer  
_G.FCVAR_NOT_CONNECTED = 4194304
--- Forces the ConVar to only have printable characters ( No control characters )  
--- Reported as "print" by `cvarlist`  
_G.FCVAR_PRINTABLEONLY = 1024
--- Makes the ConVar value hidden from all clients ( For example sv_password )  
--- Reported as "prot" by `cvarlist`  
_G.FCVAR_PROTECTED = 32
--- For serverside ConVars, it will send its value to all clients. The ConVar with the same name must also exist on the client!  
--- Reported as "rep" by `cvarlist`  
_G.FCVAR_REPLICATED = 8192
--- Prevents the server from querying value of this ConVar  
_G.FCVAR_SERVER_CANNOT_QUERY = 536870912
--- The server is allowed to execute this command on clients.  
--- Reported as "server_can_execute" by `cvarlist`  
_G.FCVAR_SERVER_CAN_EXECUTE = 268435456
--- Executing the command or changing the ConVar is only allowed in singleplayer  
--- Reported as "sp" by `cvarlist`  
_G.FCVAR_SPONLY = 64
--- Don't log the ConVar changes to console/log files/users  
--- Reported as "log" by `cvarlist`  
_G.FCVAR_UNLOGGED = 2048
--- If this is set, the convar will become anonymous and won't show up in the 'find' results.  
_G.FCVAR_UNREGISTERED = 1
--- For clientside commands, sends the value to the server  
--- Reported as "user" by `cvarlist`  
_G.FCVAR_USERINFO = 512

--- Enumerations used by Global.AddConsoleCommand, concommand.Add, Global.CreateClientConVar and Global.CreateConVar.  
--- @alias EFCVAR `FCVAR_ARCHIVE`|`FCVAR_ARCHIVE_XBOX`|`FCVAR_CHEAT`|`FCVAR_CLIENTCMD_CAN_EXECUTE`|`FCVAR_CLIENTDLL`|`FCVAR_DEMO`|`FCVAR_DONTRECORD`|`FCVAR_GAMEDLL`|`FCVAR_LUA_CLIENT`|`FCVAR_LUA_SERVER`|`FCVAR_NEVER_AS_STRING`|`FCVAR_NONE`|`FCVAR_NOTIFY`|`FCVAR_NOT_CONNECTED`|`FCVAR_PRINTABLEONLY`|`FCVAR_PROTECTED`|`FCVAR_REPLICATED`|`FCVAR_SERVER_CANNOT_QUERY`|`FCVAR_SERVER_CAN_EXECUTE`|`FCVAR_SPONLY`|`FCVAR_UNLOGGED`|`FCVAR_UNREGISTERED`|`FCVAR_USERINFO`
