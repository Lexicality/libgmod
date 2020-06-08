--- Performs bone merge on client side
EF_BONEMERGE = 1
--- For use with EF_BONEMERGE. If this is set, then it places this ents origin at its parent and uses the parent's bbox + the max extents of the aiment. Otherwise, it sets up the parent's bones every frame to figure out where to place the aiment, which is inefficient because it'll setup the parent's bones even if the parent is not in the PVS.
EF_BONEMERGE_FASTCULL = 128
--- DLIGHT centered at entity origin
EF_BRIGHTLIGHT = 2
--- Player flashlight
EF_DIMLIGHT = 4
--- Don't interpolate the next frame
EF_NOINTERP = 8
--- Disables shadow
EF_NOSHADOW = 16
--- Prevents the entity from drawing and networking.
EF_NODRAW = 32
--- Don't receive shadows
EF_NORECEIVESHADOW = 64
--- Makes the entity blink
EF_ITEM_BLINK = 256
--- Always assume that the parent entity is animating
EF_PARENT_ANIMATES = 512
--- Internal flag that is set by Entity:FollowBone
EF_FOLLOWBONE = 1024

--- This is set on bots that are frozen
EFL_BOT_FROZEN = 256
---
EFL_CHECK_UNTOUCH = 16777216
--- Some dirty bits with respect to abs computations
EFL_DIRTY_ABSANGVELOCITY = 8192
---
EFL_DIRTY_ABSTRANSFORM = 2048
---
EFL_DIRTY_ABSVELOCITY = 4096
--- (Client only) need shadow manager to update the shadow
EFL_DIRTY_SHADOWUPDATE = 32
---
EFL_DIRTY_SPATIAL_PARTITION = 32768
---
EFL_DIRTY_SURROUNDING_COLLISION_BOUNDS = 16384
--- Entity shouldn't block NPC line-of-sight
EFL_DONTBLOCKLOS = 33554432
--- NPCs should not walk on this entity
EFL_DONTWALKON = 67108864
--- Entity is dormant, no updates to client
EFL_DORMANT = 2
--- The default behavior in ShouldTransmit is to not send an entity if it doesn't have a model. Certain entities want to be sent anyway because all the drawing logic is in the client DLL. They can set this flag and the engine will transmit them even if they don't have model
EFL_FORCE_CHECK_TRANSMIT = 128
--- One of the child entities is a player
EFL_HAS_PLAYER_CHILD = 16
--- This is set if the entity detects that it's in the skybox. This forces it to pass the "in PVS" for transmission
EFL_IN_SKYBOX = 131072
---
EFL_IS_BEING_LIFTED_BY_BARNACLE = 1048576
--- This is a special entity that should not be deleted when we restart entities only
EFL_KEEP_ON_RECREATE_ENTITIES = 16
--- This entity is marked for death -- This allows the game to actually delete ents at a safe time. You should never set this flag manually.
EFL_KILLME = 1
--- Lets us know when the noclip command is active
EFL_NOCLIP_ACTIVE = 4
--- Another entity is watching events on this entity (used by teleport)
EFL_NOTIFY = 64
--- Don't attach the edict
EFL_NO_AUTO_EDICT_ATTACH = 1024
--- Doesn't accept forces from physics damage
EFL_NO_DAMAGE_FORCES = -2147483648
--- Entitiy shouldn't dissolve
EFL_NO_DISSOLVE = 134217728
---
EFL_NO_GAME_PHYSICS_SIMULATION = 8388608
--- Mega physcannon can't ragdoll these guys
EFL_NO_MEGAPHYSCANNON_RAGDOLL = 268435456
--- Physcannon can't pick these up or punt them
EFL_NO_PHYSCANNON_INTERACTION = 1073741824
---
EFL_NO_ROTORWASH_PUSH = 2097152
--- Avoid executing the entity's Think
EFL_NO_THINK_FUNCTION = 4194304
--- Don't adjust this entity's velocity when transitioning into water
EFL_NO_WATER_VELOCITY_CHANGE = 536870912
--- Non-networked entity
EFL_SERVER_ONLY = 512
--- Set while a model is setting up its bones
EFL_SETTING_UP_BONES = 8
--- Used to determine if an entity is floating
EFL_TOUCHING_FLUID = 524288
--- Entities with this flag set show up in the partition even when not solid
EFL_USE_PARTITION_WHEN_NOT_SOLID = 262144

--- Is the entity on ground or not
FL_ONGROUND = 1
--- Is player ducking or not
FL_DUCKING = 2
--- Is the player in the process of ducking or standing up
FL_ANIMDUCKING = 4
--- The player is jumping out of water
FL_WATERJUMP = 8
--- This player is controlling a func_train
FL_ONTRAIN = 16
--- Indicates the entity is standing in rain
FL_INRAIN = 32
--- Completely freezes the player Bots will still be able to look around.
FL_FROZEN = 64
--- This player is controlling something UI related in the world, this prevents his movement, but doesn't freeze mouse movement, jumping, etc.
FL_ATCONTROLS = 128
--- Is this entity a player or not
FL_CLIENT = 256
--- Bots have this flag
FL_FAKECLIENT = 512
--- Is the player in water or not
FL_INWATER = 1024
--- This entity can fly
FL_FLY = 2048
--- This entity can swim
FL_SWIM = 4096
--- This entity is a func_conveyor
FL_CONVEYOR = 8192
--- NPCs have this flag (NPC: Ignore player push)
FL_NPC = 16384
--- Whether the player has god mode enabled
FL_GODMODE = 32768
--- Makes the entity invisible to AI
FL_NOTARGET = 65536
--- This entity can be aimed at
FL_AIMTARGET = 131072
--- Not all corners are valid
FL_PARTIALGROUND = 262144
--- It's a static prop
FL_STATICPROP = 524288
--- worldgraph has this ent listed as something that blocks a connection
FL_GRAPHED = 1048576
--- This entity is a grenade, unused
FL_GRENADE = 2097152
--- Changes the SV_Movestep() behavior to not do any processing
FL_STEPMOVEMENT = 4194304
--- Doesn't generate touch functions, calls ENTITY:EndTouch when this flag gets set during a touch callback
FL_DONTTOUCH = 8388608
--- Base velocity has been applied this frame (used to convert base velocity into momentum)
FL_BASEVELOCITY = 16777216
--- This entity is a brush and part of the world
FL_WORLDBRUSH = 33554432
--- This entity can be seen by NPCs
FL_OBJECT = 67108864
--- This entity is about to get removed
FL_KILLME = 134217728
--- This entity is on fire
FL_ONFIRE = 268435456
--- The entity is currently dissolving
FL_DISSOLVING = 536870912
--- This entity is about to become a ragdoll
FL_TRANSRAGDOLL = 1073741824
--- This moving door can't be blocked by the player
FL_UNBLOCKABLE_BY_PLAYER = -2147483648
