--- @meta

--- Normal  
_G.COLLISION_GROUP_NONE = 0
--- Collides with nothing but world and static stuff  
_G.COLLISION_GROUP_DEBRIS = 1
--- Same as debris, but hits triggers. Useful for an item that can be shot, but doesn't collide.  
_G.COLLISION_GROUP_DEBRIS_TRIGGER = 2
--- Collides with everything except other interactive debris or debris  
_G.COLLISION_GROUP_INTERACTIVE_DEBRIS = 3
--- Collides with everything except interactive debris or debris  
_G.COLLISION_GROUP_INTERACTIVE = 4
--- Used by players, but NOT for movement collision. Does not collide with COLLISION_GROUP_PASSABLE_DOOR and COLLISION_GROUP_PUSHAWAY  
_G.COLLISION_GROUP_PLAYER = 5
--- NPCs can see straight through an Entity with this applied.  
_G.COLLISION_GROUP_BREAKABLE_GLASS = 6
--- Used by driveable vehicles. Always collides against COLLISION_GROUP_VEHICLE_CLIP  
_G.COLLISION_GROUP_VEHICLE = 7
--- For HL2, same as Collision_Group_Player, for TF2, this filters out other players and CBaseObjects  
_G.COLLISION_GROUP_PLAYER_MOVEMENT = 8
--- Generic NPC group  
_G.COLLISION_GROUP_NPC = 9
--- Doesn't collide with anything, no traces  
_G.COLLISION_GROUP_IN_VEHICLE = 10
--- Doesn't collide with players and vehicles  
_G.COLLISION_GROUP_WEAPON = 11
--- Only collides with vehicles  
_G.COLLISION_GROUP_VEHICLE_CLIP = 12
--- Set on projectiles. Does not collide with other projectiles.  
_G.COLLISION_GROUP_PROJECTILE = 13
--- Blocks entities not permitted to get near moving doors  
_G.COLLISION_GROUP_DOOR_BLOCKER = 14
--- Lets the Player through, nothing else.  
_G.COLLISION_GROUP_PASSABLE_DOOR = 15
--- Things that are dissolving are in this group  
_G.COLLISION_GROUP_DISSOLVING = 16
--- Nonsolid on client and server, pushaway in player code  
_G.COLLISION_GROUP_PUSHAWAY = 17
--- Used so NPCs in scripts ignore the player  
_G.COLLISION_GROUP_NPC_ACTOR = 18
--- Used for NPCs in scripts that should not collide with each other  
_G.COLLISION_GROUP_NPC_SCRIPTED = 19
--- Doesn't collide with players/props  
_G.COLLISION_GROUP_WORLD = 20
--- Amount of COLLISION_GROUP_ enumerations  
_G.LAST_SHARED_COLLISION_GROUP = 21

--- Enumerations used by Entity:SetCollisionGroup, Entity:GetCollisionGroup and Traces.  
--- @alias ECOLLISION_GROUP `COLLISION_GROUP_NONE`|`COLLISION_GROUP_DEBRIS`|`COLLISION_GROUP_DEBRIS_TRIGGER`|`COLLISION_GROUP_INTERACTIVE_DEBRIS`|`COLLISION_GROUP_INTERACTIVE`|`COLLISION_GROUP_PLAYER`|`COLLISION_GROUP_BREAKABLE_GLASS`|`COLLISION_GROUP_VEHICLE`|`COLLISION_GROUP_PLAYER_MOVEMENT`|`COLLISION_GROUP_NPC`|`COLLISION_GROUP_IN_VEHICLE`|`COLLISION_GROUP_WEAPON`|`COLLISION_GROUP_VEHICLE_CLIP`|`COLLISION_GROUP_PROJECTILE`|`COLLISION_GROUP_DOOR_BLOCKER`|`COLLISION_GROUP_PASSABLE_DOOR`|`COLLISION_GROUP_DISSOLVING`|`COLLISION_GROUP_PUSHAWAY`|`COLLISION_GROUP_NPC_ACTOR`|`COLLISION_GROUP_NPC_SCRIPTED`|`COLLISION_GROUP_WORLD`|`LAST_SHARED_COLLISION_GROUP`
