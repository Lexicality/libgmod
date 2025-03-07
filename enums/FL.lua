--- @meta

--- Is the entity on ground or not  
_G.FL_ONGROUND = 1
--- Is player ducking or not  
_G.FL_DUCKING = 2
--- Is the player in the process of ducking or standing up  
_G.FL_ANIMDUCKING = 4
--- The player is jumping out of water  
_G.FL_WATERJUMP = 8
--- This player is controlling a func_train  
_G.FL_ONTRAIN = 16
--- Indicates the entity is standing in rain  
_G.FL_INRAIN = 32
--- Completely freezes the player  
--- 🦟 **BUG**: Bots will still be able to look around.  
_G.FL_FROZEN = 64
--- This player is controlling something UI related in the world, this prevents his movement, but doesn't freeze mouse movement, jumping, etc.  
_G.FL_ATCONTROLS = 128
--- Is this entity a player or not  
_G.FL_CLIENT = 256
--- Bots have this flag  
_G.FL_FAKECLIENT = 512
--- Is the player in water or not  
_G.FL_INWATER = 1024
--- This entity can fly  
_G.FL_FLY = 2048
--- This entity can swim  
_G.FL_SWIM = 4096
--- This entity is a func_conveyor  
_G.FL_CONVEYOR = 8192
--- NPCs have this flag (NPC: Ignore player push)  
_G.FL_NPC = 16384
--- Whether the player has god mode enabled  
_G.FL_GODMODE = 32768
--- Makes the entity invisible to AI  
_G.FL_NOTARGET = 65536
--- This entity can be aimed at  
_G.FL_AIMTARGET = 131072
--- Not all corners are valid  
_G.FL_PARTIALGROUND = 262144
--- It's a static prop  
_G.FL_STATICPROP = 524288
--- worldgraph has this ent listed as something that blocks a connection  
_G.FL_GRAPHED = 1048576
--- This entity is a grenade, unused  
_G.FL_GRENADE = 2097152
--- Changes the SV_Movestep() behavior to not do any processing  
_G.FL_STEPMOVEMENT = 4194304
--- Doesn't generate touch functions, calls ENTITY:EndTouch when this flag gets set during a touch callback  
_G.FL_DONTTOUCH = 8388608
--- Base velocity has been applied this frame (used to convert base velocity into momentum)  
_G.FL_BASEVELOCITY = 16777216
--- This entity is a brush and part of the world  
_G.FL_WORLDBRUSH = 33554432
--- This entity can be seen by NPCs  
_G.FL_OBJECT = 67108864
--- This entity is about to get removed  
_G.FL_KILLME = 134217728
--- This entity is on fire  
_G.FL_ONFIRE = 268435456
--- The entity is currently dissolving  
_G.FL_DISSOLVING = 536870912
--- This entity is about to become a ragdoll  
_G.FL_TRANSRAGDOLL = 1073741824
--- This moving door can't be blocked by the player  
_G.FL_UNBLOCKABLE_BY_PLAYER = -2147483648

--- Enumerations used by Entity:AddFlags, Entity:RemoveFlags and Entity:IsFlagSet.  
--- @alias EFL `FL_ONGROUND`|`FL_DUCKING`|`FL_ANIMDUCKING`|`FL_WATERJUMP`|`FL_ONTRAIN`|`FL_INRAIN`|`FL_FROZEN`|`FL_ATCONTROLS`|`FL_CLIENT`|`FL_FAKECLIENT`|`FL_INWATER`|`FL_FLY`|`FL_SWIM`|`FL_CONVEYOR`|`FL_NPC`|`FL_GODMODE`|`FL_NOTARGET`|`FL_AIMTARGET`|`FL_PARTIALGROUND`|`FL_STATICPROP`|`FL_GRAPHED`|`FL_GRENADE`|`FL_STEPMOVEMENT`|`FL_DONTTOUCH`|`FL_BASEVELOCITY`|`FL_WORLDBRUSH`|`FL_OBJECT`|`FL_KILLME`|`FL_ONFIRE`|`FL_DISSOLVING`|`FL_TRANSRAGDOLL`|`FL_UNBLOCKABLE_BY_PLAYER`
