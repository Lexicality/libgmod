--- @meta

--- This entity is marked for death -- This allows the game to actually delete ents at a safe time.  
--- ⚠ **WARNING**: You should never set this flag manually.  
_G.EFL_KILLME = 1
--- Entity is dormant, no updates to client  
_G.EFL_DORMANT = 2
--- Lets us know when the noclip command is active  
_G.EFL_NOCLIP_ACTIVE = 4
--- Set while a model is setting up its bones  
_G.EFL_SETTING_UP_BONES = 8
--- This is a special entity that should not be deleted when we respawn entities via game.CleanUpMap.  
_G.EFL_KEEP_ON_RECREATE_ENTITIES = 16
--- One of the child entities is a player  
_G.EFL_HAS_PLAYER_CHILD = 16
--- (Client only) need shadow manager to update the shadow  
_G.EFL_DIRTY_SHADOWUPDATE = 32
--- Another entity is watching events on this entity (used by teleport)  
_G.EFL_NOTIFY = 64
--- The default behavior in ShouldTransmit is to not send an entity if it doesn't have a model. Certain entities want to be sent anyway because all the drawing logic is in the client DLL. They can set this flag and the engine will transmit them even if they don't have model  
_G.EFL_FORCE_CHECK_TRANSMIT = 128
--- This is set on bots that are frozen  
_G.EFL_BOT_FROZEN = 256
--- Non-networked entity  
_G.EFL_SERVER_ONLY = 512
--- Don't attach the edict  
_G.EFL_NO_AUTO_EDICT_ATTACH = 1024
--- Some 'dirty' bits with respect to absolute computations. Used internally by the engine when an entity's absolute position needs to be recalculated.  
_G.EFL_DIRTY_ABSTRANSFORM = 2048
--- Some 'dirty' bits with respect to absolute computations. Used internally by the engine when an entity's absolute velocity needs to be recalculated.  
_G.EFL_DIRTY_ABSVELOCITY = 4096
--- Some 'dirty' bits with respect to absolute computations. Used internally by the engine when an entity's absolute angular velocity needs to be recalculated.  
_G.EFL_DIRTY_ABSANGVELOCITY = 8192
--- Marks the entity as having a 'dirty' surrounding box. Used internally by the engine to recompute the entity's collision bounds.  
_G.EFL_DIRTY_SURROUNDING_COLLISION_BOUNDS = 16384
--- Used internally by the engine when an entity's "spatial partition" needs to be recalculated.  
_G.EFL_DIRTY_SPATIAL_PARTITION = 32768
--- This is set if the entity detects that it's in the skybox. This forces it to pass the "in PVS" for transmission  
_G.EFL_IN_SKYBOX = 131072
--- Entities with this flag set show up in the partition even when not solid  
_G.EFL_USE_PARTITION_WHEN_NOT_SOLID = 262144
--- Used to determine if an entity is floating  
_G.EFL_TOUCHING_FLUID = 524288
--- The entity is currently being lifted by a Barnacle.  
_G.EFL_IS_BEING_LIFTED_BY_BARNACLE = 1048576
--- The entity is not affected by 'rotorwash push'--the wind-push effect caused by helicopters close to the ground in Half-Life 2.  
_G.EFL_NO_ROTORWASH_PUSH = 2097152
--- Avoid executing the entity's Think  
_G.EFL_NO_THINK_FUNCTION = 4194304
--- The entity is currently not simulating any physics.  
_G.EFL_NO_GAME_PHYSICS_SIMULATION = 8388608
--- The entity is about to have its untouch callback checked, e.g. when this entity stops touching another entity.  
_G.EFL_CHECK_UNTOUCH = 16777216
--- Entity shouldn't block NPC line-of-sight  
_G.EFL_DONTBLOCKLOS = 33554432
--- NPCs should not walk on this entity  
_G.EFL_DONTWALKON = 67108864
--- The entity shouldn't dissolve  
_G.EFL_NO_DISSOLVE = 134217728
--- Mega physcannon can't ragdoll these guys  
_G.EFL_NO_MEGAPHYSCANNON_RAGDOLL = 268435456
--- Don't adjust this entity's velocity when transitioning into water  
_G.EFL_NO_WATER_VELOCITY_CHANGE = 536870912
--- Physcannon can't pick these up or punt them  
_G.EFL_NO_PHYSCANNON_INTERACTION = 1073741824
--- Doesn't accept forces from physics damage  
_G.EFL_NO_DAMAGE_FORCES = -2147483648

--- Enumerations used by Entity:AddEFlags, Entity:RemoveEFlags and Entity:IsEFlagSet.  
--- @alias EEFL `EFL_KILLME`|`EFL_DORMANT`|`EFL_NOCLIP_ACTIVE`|`EFL_SETTING_UP_BONES`|`EFL_KEEP_ON_RECREATE_ENTITIES`|`EFL_HAS_PLAYER_CHILD`|`EFL_DIRTY_SHADOWUPDATE`|`EFL_NOTIFY`|`EFL_FORCE_CHECK_TRANSMIT`|`EFL_BOT_FROZEN`|`EFL_SERVER_ONLY`|`EFL_NO_AUTO_EDICT_ATTACH`|`EFL_DIRTY_ABSTRANSFORM`|`EFL_DIRTY_ABSVELOCITY`|`EFL_DIRTY_ABSANGVELOCITY`|`EFL_DIRTY_SURROUNDING_COLLISION_BOUNDS`|`EFL_DIRTY_SPATIAL_PARTITION`|`EFL_IN_SKYBOX`|`EFL_USE_PARTITION_WHEN_NOT_SOLID`|`EFL_TOUCHING_FLUID`|`EFL_IS_BEING_LIFTED_BY_BARNACLE`|`EFL_NO_ROTORWASH_PUSH`|`EFL_NO_THINK_FUNCTION`|`EFL_NO_GAME_PHYSICS_SIMULATION`|`EFL_CHECK_UNTOUCH`|`EFL_DONTBLOCKLOS`|`EFL_DONTWALKON`|`EFL_NO_DISSOLVE`|`EFL_NO_MEGAPHYSCANNON_RAGDOLL`|`EFL_NO_WATER_VELOCITY_CHANGE`|`EFL_NO_PHYSCANNON_INTERACTION`|`EFL_NO_DAMAGE_FORCES`
