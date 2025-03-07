--- @meta

--- The channel is stopped  
_G.GMOD_CHANNEL_STOPPED = 0
--- The channel is playing  
_G.GMOD_CHANNEL_PLAYING = 1
--- The channel is paused  
_G.GMOD_CHANNEL_PAUSED = 2
--- The channel is buffering  
_G.GMOD_CHANNEL_STALLED = 3

--- Enumerations used by IGModAudioChannel:GetState. Clientside only.  
--- @alias EGMOD_CHANNEL `GMOD_CHANNEL_STOPPED`|`GMOD_CHANNEL_PLAYING`|`GMOD_CHANNEL_PAUSED`|`GMOD_CHANNEL_STALLED`
