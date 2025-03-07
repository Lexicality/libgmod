--- @meta

--- Won't receive physics forces from collisions and won't collide with other PhysObj with the same flag set.  
_G.FVPHYSICS_CONSTRAINT_STATIC = 2
--- Colliding with entities will cause 1000 damage with DMG_DISSOLVE as the damage type, but only if EFL_NO_DISSOLVE is not set.  
_G.FVPHYSICS_DMG_DISSOLVE = 512
--- Does slice damage, not just blunt damage.  
_G.FVPHYSICS_DMG_SLICE = 1
--- Will deal high physics damage even with a small mass.  
_G.FVPHYSICS_HEAVY_OBJECT = 32
--- This PhysObj is part of an entity with multiple PhysObj , such as a ragdoll or a vehicle , and will be considered during collision damage events.  
_G.FVPHYSICS_MULTIOBJECT_ENTITY = 16
--- Colliding with entities won't cause physics damage.  
_G.FVPHYSICS_NO_IMPACT_DMG = 1024
--- Like FVPHYSICS_NO_NPC_IMPACT_DMG, but only checks for NPCs. Usually set on Combine Balls fired by Combine Soldiers.  
_G.FVPHYSICS_NO_NPC_IMPACT_DMG = 2048
--- Doesn't allow the player to pick this PhysObj with the Gravity Gun or +use pickup.  
_G.FVPHYSICS_NO_PLAYER_PICKUP = 128
--- We won't collide with other PhysObj associated to the same entity, only used for vehicles and ragdolls held by the Super Gravity Gun.  
_G.FVPHYSICS_NO_SELF_COLLISIONS = 32768
--- This PhysObj is part of a ragdoll.  
_G.FVPHYSICS_PART_OF_RAGDOLL = 8
--- Set by the physics engine when two PhysObj are penetrating each other. This is only automatically updated for non-static physics objects.  
_G.FVPHYSICS_PENETRATING = 64
--- Set when the player is holding this PhysObj with the Physics Gun, Gravity Gun or +use pickup.  
_G.FVPHYSICS_PLAYER_HELD = 4
--- This object was thrown by the Gravity Gun , stuns Antlion guards, Hunters, and squashes Antlion grubs.  
_G.FVPHYSICS_WAS_THROWN = 256

--- Enumerations used by PhysObj:AddGameFlag, PhysObj:HasGameFlag and PhysObj:ClearGameFlag.  
--- @alias EFVPHYSICS `FVPHYSICS_CONSTRAINT_STATIC`|`FVPHYSICS_DMG_DISSOLVE`|`FVPHYSICS_DMG_SLICE`|`FVPHYSICS_HEAVY_OBJECT`|`FVPHYSICS_MULTIOBJECT_ENTITY`|`FVPHYSICS_NO_IMPACT_DMG`|`FVPHYSICS_NO_NPC_IMPACT_DMG`|`FVPHYSICS_NO_PLAYER_PICKUP`|`FVPHYSICS_NO_SELF_COLLISIONS`|`FVPHYSICS_PART_OF_RAGDOLL`|`FVPHYSICS_PENETRATING`|`FVPHYSICS_PLAYER_HELD`|`FVPHYSICS_WAS_THROWN`
