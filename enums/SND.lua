--- @meta

--- To keep the compiler happy  
_G.SND_NOFLAGS = 0
--- Change sound volume  
_G.SND_CHANGE_VOL = 1
--- Change sound pitch  
_G.SND_CHANGE_PITCH = 2
--- Stop the sound  
_G.SND_STOP = 4
--- We're spawning, used in some cases for ambients. Not sent over net, only a param between dll and server.  
_G.SND_SPAWNING = 8
--- Sound has an initial delay  
_G.SND_DELAY = 16
--- Stop all looping sounds on the entity.  
_G.SND_STOP_LOOPING = 32
--- This sound should be paused if the game is paused  
_G.SND_SHOULDPAUSE = 128
--- If the sound has any associated phoneme (character lip-sync) data, ignore it.  
_G.SND_IGNORE_PHONEMES = 256
--- Used to change all sounds emitted by an entity, regardless of scriptname  
_G.SND_IGNORE_NAME = 512
--- Unused/legacy; does nothing.  
_G.SND_DO_NOT_OVERWRITE_EXISTING_ON_CHANNEL = 1024

--- Sound flags used by Global.EmitSound and Entity:EmitSound.  
--- @alias ESND `SND_NOFLAGS`|`SND_CHANGE_VOL`|`SND_CHANGE_PITCH`|`SND_STOP`|`SND_SPAWNING`|`SND_DELAY`|`SND_STOP_LOOPING`|`SND_SHOULDPAUSE`|`SND_IGNORE_PHONEMES`|`SND_IGNORE_NAME`|`SND_DO_NOT_OVERWRITE_EXISTING_ON_CHANNEL`
