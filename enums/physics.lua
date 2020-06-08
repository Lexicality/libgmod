--- Does not collide with anything. No physics object will be created when using this with Entity:PhysicsInit.
SOLID_NONE = 0
--- The entity has a brush model defined by the map. Does not collide with other SOLID_BSP entities.
SOLID_BSP = 1
--- Uses the entity's axis-aligned bounding box for collisions.
SOLID_BBOX = 2
--- Uses the entity's object-aligned bounding box for collisions.
SOLID_OBB = 3
--- Same as SOLID_OBB but restricts orientation to the Z-axis. Seems to be broken.
SOLID_OBB_YAW = 4
--- Always call the entity's ICollideable::TestCollision method for traces regardless of the presence of FSOLID_CUSTOMRAYTEST or FSOLID_CUSTOMBOXTEST. This will only be called back to Lua as Entity:TestCollision for "anim" type SENTs.
SOLID_CUSTOM = 5
--- Uses the PhysObjects of the entity.
SOLID_VPHYSICS = 6

--- Normal
COLLISION_GROUP_NONE = 0
--- Collides with nothing but world and static stuff
COLLISION_GROUP_DEBRIS = 1
--- Same as debris, but hits triggers. Useful for an item that can be shot, but doesn't collide.
COLLISION_GROUP_DEBRIS_TRIGGER = 2
--- Collides with everything except other interactive debris or debris
COLLISION_GROUP_INTERACTIVE_DEBRIS = 3
--- Collides with everything except interactive debris or debris
COLLISION_GROUP_INTERACTIVE = 4
---
COLLISION_GROUP_PLAYER = 5
--- NPCs can see straight through an Entity with this applied.
COLLISION_GROUP_BREAKABLE_GLASS = 6
---
COLLISION_GROUP_VEHICLE = 7
--- For HL2, same as Collision_Group_Player, for TF2, this filters out other players and CBaseObjects
COLLISION_GROUP_PLAYER_MOVEMENT = 8
---
COLLISION_GROUP_NPC = 9
--- Doesn't collide with anything, no traces
COLLISION_GROUP_IN_VEHICLE = 10
--- Doesn't collide with players and vehicles
COLLISION_GROUP_WEAPON = 11
--- Only collides with vehicles
COLLISION_GROUP_VEHICLE_CLIP = 12
---
COLLISION_GROUP_PROJECTILE = 13
--- Blocks entities not permitted to get near moving doors
COLLISION_GROUP_DOOR_BLOCKER = 14
--- Lets the Player through, nothing else.
COLLISION_GROUP_PASSABLE_DOOR = 15
--- Things that are dissolving are in this group
COLLISION_GROUP_DISSOLVING = 16
--- Nonsolid on client and server, pushaway in player code
COLLISION_GROUP_PUSHAWAY = 17
---
COLLISION_GROUP_NPC_ACTOR = 18
---
COLLISION_GROUP_NPC_SCRIPTED = 19
--- Doesn't collide with players/props
COLLISION_GROUP_WORLD = 20
--- Amount of COLLISION_GROUP_ enumerations
LAST_SHARED_COLLISION_GROUP = 21

--- Things that are not solid
CONTENTS_EMPTY = 0
--- Things that are solid
CONTENTS_SOLID = 1
--- Glass
CONTENTS_WINDOW = 2
---
CONTENTS_AUX = 4
--- Bullets go through, solids don't
CONTENTS_GRATE = 8
---
CONTENTS_SLIME = 16
--- Hits world but not skybox
CONTENTS_WATER = 32
--- Things that block line of sight
CONTENTS_BLOCKLOS = 64
--- Things that block light
CONTENTS_OPAQUE = 128
---
CONTENTS_TESTFOGVOLUME = 256
---
CONTENTS_TEAM4 = 512
---
CONTENTS_TEAM3 = 1024
---
CONTENTS_TEAM1 = 2048
---
CONTENTS_TEAM2 = 4096
---
CONTENTS_IGNORE_NODRAW_OPAQUE = 8192
---
CONTENTS_MOVEABLE = 16384
---
CONTENTS_AREAPORTAL = 32768
---
CONTENTS_PLAYERCLIP = 65536
---
CONTENTS_MONSTERCLIP = 131072
---
CONTENTS_CURRENT_0 = 262144
---
CONTENTS_CURRENT_180 = 1048576
---
CONTENTS_CURRENT_270 = 2097152
---
CONTENTS_CURRENT_90 = 524288
---
CONTENTS_CURRENT_DOWN = 8388608
---
CONTENTS_CURRENT_UP = 4194304
---
CONTENTS_DEBRIS = 67108864
---
CONTENTS_DETAIL = 134217728
--- Hitbox
CONTENTS_HITBOX = 1073741824
--- Ladder
CONTENTS_LADDER = 536870912
--- NPCs
CONTENTS_MONSTER = 33554432
---
CONTENTS_ORIGIN = 16777216
--- Hits world but not skybox
CONTENTS_TRANSLUCENT = 268435456
--- Last visible contents enumeration
LAST_VISIBLE_CONTENTS = 128
--- Sum of all the visible contents enumerations
ALL_VISIBLE_CONTENTS = 255

---
DISPSURF_SURFACE = 1
---
DISPSURF_WALKABLE = 2
---
DISPSURF_BUILDABLE = 4
---
DISPSURF_SURFPROP1 = 8
---
DISPSURF_SURFPROP2 = 16

--- Ignore solid type + always call into the entity for ray tests
FSOLID_CUSTOMRAYTEST = 1
--- Ignore solid type + always call into the entity for swept box tests
FSOLID_CUSTOMBOXTEST = 2
--- The object is currently not solid
FSOLID_NOT_SOLID = 4
--- This is something may be collideable but fires touch functions even when it's not collideable (when the FSOLID_NOT_SOLID flag is set)
FSOLID_TRIGGER = 8
--- The player can't stand on this
FSOLID_NOT_STANDABLE = 16
--- Contains volumetric contents (like water)
FSOLID_VOLUME_CONTENTS = 32
--- Forces the collision representation to be world-aligned even if it's SOLID_BSP or SOLID_VPHYSICS
FSOLID_FORCE_WORLD_ALIGNED = 64
--- Uses a special trigger bounds separate from the normal OBB
FSOLID_USE_TRIGGER_BOUNDS = 128
--- Collisions are defined in root parent's local coordinate space
FSOLID_ROOT_PARENT_ALIGNED = 256
--- This trigger will touch debris objects
FSOLID_TRIGGER_TOUCH_DEBRIS = 512
--- The amount of bits needed to store the all the flags in a variable/sent over network.
FSOLID_MAX_BITS = 10

--- Won't receive physics forces from collisions and won't collide with other PhysObj with the same flag set.
FVPHYSICS_CONSTRAINT_STATIC = 2
--- Colliding with entities will cause 1000 damage with DMG_DISSOLVE as the damage type, but only if EFL_NO_DISSOLVE is not set.
FVPHYSICS_DMG_DISSOLVE = 512
--- Does slice damage, not just blunt damage.
FVPHYSICS_DMG_SLICE = 1
--- Will deal high physics damage even with a small mass.
FVPHYSICS_HEAVY_OBJECT = 32
--- This PhysObj is part of an entity with multiple PhysObj , such as a ragdoll or a vehicle , and will be considered during collision damage events.
FVPHYSICS_MULTIOBJECT_ENTITY = 16
--- Colliding with entities won't cause physics damage.
FVPHYSICS_NO_IMPACT_DMG = 1024
--- Like FVPHYSICS_NO_NPC_IMPACT_DMG, but only checks for NPCs. Usually set on Combine Balls fired by Combine Soldiers.
FVPHYSICS_NO_NPC_IMPACT_DMG = 2048
--- Doesn't allow the player to pick this PhysObj with the Gravity Gun or +use pickup.
FVPHYSICS_NO_PLAYER_PICKUP = 128
--- We won't collide with other PhysObj associated to the same entity, only used for vehicles and ragdolls held by the Super Gravity Gun.
FVPHYSICS_NO_SELF_COLLISIONS = 32768
--- This PhysObj is part of a ragdoll.
FVPHYSICS_PART_OF_RAGDOLL = 8
--- Set by the physics engine when two PhysObj are penetrating each other. This is only automatically updated for non-static physics objects.
FVPHYSICS_PENETRATING = 64
--- Set when the player is holding this PhysObj with the Gravity Gun or +use pickup.
FVPHYSICS_PLAYER_HELD = 4
--- This object was thrown by the Gravity Gun , stuns Antlion guards, Hunters, and squashes Antlion grubs.
FVPHYSICS_WAS_THROWN = 256

--- Anything that is not empty space
MASK_ALL = 4294967295
--- Anything that blocks line of sight for AI
MASK_BLOCKLOS = 16449
--- Anything that blocks line of sight for AI or NPCs
MASK_BLOCKLOS_AND_NPCS = 33570881
--- Water that is moving (may not work)
MASK_CURRENT = 16515072
--- Anything that blocks corpse movement
MASK_DEADSOLID = 65547
--- Anything that blocks NPC movement
MASK_NPCSOLID = 33701899
--- Anything that blocks NPC movement, except other NPCs
MASK_NPCSOLID_BRUSHONLY = 147467
--- The world entity
MASK_NPCWORLDSTATIC = 131083
--- Anything that blocks lighting
MASK_OPAQUE = 16513
--- Anything that blocks lighting, including NPCs
MASK_OPAQUE_AND_NPCS = 33570945
--- Anything that blocks player movement
MASK_PLAYERSOLID = 33636363
--- World + Brushes + Player Clips
MASK_PLAYERSOLID_BRUSHONLY = 81931
--- Anything that stops a bullet (including hitboxes)
MASK_SHOT = 1174421507
--- Anything that stops a bullet (excluding hitboxes)
MASK_SHOT_HULL = 100679691
--- Solids except for grates
MASK_SHOT_PORTAL = 33570819
--- Anything that is (normally) solid
MASK_SOLID = 33570827
--- World + Brushes
MASK_SOLID_BRUSHONLY = 16395
--- Things that split area portals
MASK_SPLITAREAPORTAL = 48
--- Anything that blocks line of sight for players
MASK_VISIBLE = 24705
--- Anything that blocks line of sight for players, including NPCs
MASK_VISIBLE_AND_NPCS = 33579137
--- Anything that has water-like physics
MASK_WATER = 16432

--- Antlions
MAT_ANTLION = 65
--- Similar to MAT_FLESH, only used by "bloodyflesh" surface property, has different impact sound
MAT_BLOODYFLESH = 66
--- Concrete
MAT_CONCRETE = 67
--- Dirt
MAT_DIRT = 68
--- The egg sacs in the antlion tunnels in HL2: EP2
MAT_EGGSHELL = 69
--- Flesh
MAT_FLESH = 70
--- Grates, chainlink fences
MAT_GRATE = 71
--- Alien flesh - headcrabs and vortigaunts
MAT_ALIENFLESH = 72
--- Unused
MAT_CLIP = 73
--- Snow
MAT_SNOW = 74
--- Plastic
MAT_PLASTIC = 76
--- Metal
MAT_METAL = 77
--- Sand
MAT_SAND = 78
--- Plants, only used by the "foliage" surface property
MAT_FOLIAGE = 79
--- Electronics, only used by "computer" surface property
MAT_COMPUTER = 80
--- Water, slime
MAT_SLOSH = 83
--- Floor tiles
MAT_TILE = 84
--- Grass
MAT_GRASS = 85
--- Metallic vents
MAT_VENT = 86
--- Wood
MAT_WOOD = 87
--- Skybox or nodraw texture
MAT_DEFAULT = 88
--- Glass
MAT_GLASS = 89
--- "wierd-looking jello effect for advisor shield."
MAT_WARPSHIELD = 90

--- Default behavior
MOVECOLLIDE_DEFAULT = 0
--- Entity bounces, reflects, based on elasticity of surface and object - applies friction (adjust velocity)
MOVECOLLIDE_FLY_BOUNCE = 1
--- ENTITY:Touch will modify the velocity however it likes
MOVECOLLIDE_FLY_CUSTOM = 2
--- Entity slides along surfaces (no bounce) - applies friciton (adjusts velocity)
MOVECOLLIDE_FLY_SLIDE = 3
--- Number of different movecollides
MOVECOLLIDE_COUNT = 4

--- Don't move
MOVETYPE_NONE = 0
--- For players, in TF2 commander view, etc
MOVETYPE_ISOMETRIC = 1
--- Player only, moving on the ground
MOVETYPE_WALK = 2
--- Monster/NPC movement
MOVETYPE_STEP = 3
--- Fly, no gravity
MOVETYPE_FLY = 4
--- Fly, with gravity
MOVETYPE_FLYGRAVITY = 5
--- Physics movetype
MOVETYPE_VPHYSICS = 6
--- No clip to world, but pushes and crushes things
MOVETYPE_PUSH = 7
--- Noclip
MOVETYPE_NOCLIP = 8
--- For players, when moving on a ladder
MOVETYPE_LADDER = 9
--- Spectator movetype. DO NOT use this to make player spectate
MOVETYPE_OBSERVER = 10
--- Custom movetype, can be applied to the player to prevent the default movement code from running, while still calling the related hooks
MOVETYPE_CUSTOM = 11

--- If set, calls PhysObj:EnableMotion( false ) on the func_physbox when the physics are created
SF_PHYSBOX_MOTIONDISABLED = 32768
--- Gravity gun is NOT allowed to pick this up.
SF_PHYSBOX_NEVER_PICK_UP = 2097152
--- If set, calls PhysObj:EnableMotion( false ) on the func_physbox when the physics are created. See Physics optimization
SF_PHYSPROP_MOTIONDISABLED = 8
--- Prevent that physbox from being picked up
SF_PHYSPROP_PREVENT_PICKUP = 512

--- Don't simulate physics
SIM_NOTHING = 0
--- Vectors in local coordinate system
SIM_LOCAL_ACCELERATION = 1
--- Vectors in local coordinate system
SIM_LOCAL_FORCE = 2
--- Vectors in world coordinate system
SIM_GLOBAL_ACCELERATION = 3
--- Vectors in world coordinate system
SIM_GLOBAL_FORCE = 4

--- Value will hold the light strength
SURF_LIGHT = 1
--- The surface is a 2D skybox
SURF_SKY2D = 2
--- This surface is a skybox, equivalent to HitSky in Structures/TraceResult
SURF_SKY = 4
--- This surface is animated water
SURF_WARP = 8
--- This surface is translucent
SURF_TRANS = 16
--- This surface cannot have portals placed on, used by Portal's gun
SURF_NOPORTAL = 32
--- This surface is a trigger
SURF_TRIGGER = 64
--- This surface is an invisible entity, equivalent to HitNoDraw in Structures/TraceResult
SURF_NODRAW = 128
--- Make a primary bsp splitter
SURF_HINT = 256
--- This surface can be ignored by impact effects
SURF_SKIP = 512
--- This surface has no lights calculated
SURF_NOLIGHT = 1024
--- Calculate three lightmaps for the surface for bumpmapping
SURF_BUMPLIGHT = 2048
--- No shadows are cast on this surface
SURF_NOSHADOWS = 4096
--- No decals are applied to this surface
SURF_NODECALS = 8192
--- Don't subdivide patches on this surface
SURF_NOCHOP = 16384
--- This surface is part of an entity's hitbox
SURF_HITBOX = 32768

vector_origin = Vector(0, 0, 0)
vector_up = Vector(0, 0, 1)
angle_zero = Angle(0, 0, 0)
