--- @meta

--- Used when playing sounds through console commands.  
_G.CHAN_REPLACE = -1
--- Automatic channel  
_G.CHAN_AUTO = 0
--- Channel for weapon sounds  
_G.CHAN_WEAPON = 1
--- Channel for NPC voices  
_G.CHAN_VOICE = 2
--- Channel for items ( Health kits, etc )  
_G.CHAN_ITEM = 3
--- Clothing, ragdoll impacts, footsteps, knocking/pounding/punching etc.  
_G.CHAN_BODY = 4
--- Stream channel from the static or dynamic area  
_G.CHAN_STREAM = 5
--- A constant/background sound that doesn't require any reaction.  
--- **This channel allows same sounds files to play multiple times without cutting out.**  
_G.CHAN_STATIC = 6
--- TF2s Announcer dialogue channel  
_G.CHAN_VOICE2 = 7
--- Channels 8-135 (128 channels) are allocated for player voice chat  
--- **This channel allows same sounds files to play multiple times without cutting out.**  
_G.CHAN_VOICE_BASE = 8
--- Channels from this and onwards are allocated to game code  
_G.CHAN_USER_BASE = 136

--- Enumerations used by Global.EmitSound and sound.Add.  
--- @alias ECHAN `CHAN_REPLACE`|`CHAN_AUTO`|`CHAN_WEAPON`|`CHAN_VOICE`|`CHAN_ITEM`|`CHAN_BODY`|`CHAN_STREAM`|`CHAN_STATIC`|`CHAN_VOICE2`|`CHAN_VOICE_BASE`|`CHAN_USER_BASE`
