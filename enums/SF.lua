--- @meta

--- Citizen that resupplies ammo  
_G.SF_CITIZEN_AMMORESUPPLIER = 524288
--- "Follow the player as soon as I spawn"  
_G.SF_CITIZEN_FOLLOW = 65536
--- "Work outside the speech semaphore system"  
_G.SF_CITIZEN_IGNORE_SEMAPHORE = 2097152
--- Makes the citizen a medic  
_G.SF_CITIZEN_MEDIC = 131072
--- Citizen cannot join players squad, and will not able to be commanded by the Half-Life 2 command system for Citizens  
_G.SF_CITIZEN_NOT_COMMANDABLE = 1048576
--- Gives the citizen a random head  
_G.SF_CITIZEN_RANDOM_HEAD = 262144
--- Gives the citizen a random female head  
_G.SF_CITIZEN_RANDOM_HEAD_FEMALE = 8388608
--- Gives the citizen a random male head  
_G.SF_CITIZEN_RANDOM_HEAD_MALE = 4194304
--- "Use render bounds instead of human hull for guys sitting in chairs, etc". Must be set before Spawn() is called to take effect  
_G.SF_CITIZEN_USE_RENDER_BOUNDS = 16777216
--- Makes the floor turret friendly  
_G.SF_FLOOR_TURRET_CITIZEN = 512
--- Do Alternate collision for this NPC (player avoidance)  
_G.SF_NPC_ALTCOLLISION = 4096
--- [Think outside PVS](https://developer.valvesoftware.com/wiki/NPC_Sensing)  
_G.SF_NPC_ALWAYSTHINK = 1024
--- NPC Drops health kit when it dies. Also works on player.  
_G.SF_NPC_DROP_HEALTHKIT = 8
--- Fade Corpse  
_G.SF_NPC_FADE_CORPSE = 512
--- If not set, means *teleport* to ground  
_G.SF_NPC_FALL_TO_GROUND = 4
--- No IDLE sounds until angry  
_G.SF_NPC_GAG = 2
--- Long Visibility/Shoot  
_G.SF_NPC_LONG_RANGE = 256
--- Ignore player push - Don't give way to player  
_G.SF_NPC_NO_PLAYER_PUSHAWAY = 16384
--- NPC Doesn't drop weapon on death  
_G.SF_NPC_NO_WEAPON_DROP = 8192
--- Don't acquire enemies or avoid obstacles  
_G.SF_NPC_START_EFFICIENT = 16
--- This entity is a template for the [npc_template_maker](https://developer.valvesoftware.com/wiki/Npc_template_maker). It will not spawn automatically and cannot be used with [point_template](https://developer.valvesoftware.com/wiki/Point_template).  
_G.SF_NPC_TEMPLATE = 2048
--- Wait for script  
_G.SF_NPC_WAIT_FOR_SCRIPT = 128
--- Wait till seen  
_G.SF_NPC_WAIT_TILL_SEEN = 1
--- If set, calls PhysObj:EnableMotion( false ) on the func_physbox when the physics are created  
_G.SF_PHYSBOX_MOTIONDISABLED = 32768
--- Gravity gun is ALWAYS allowed to pick this up.  
_G.SF_PHYSBOX_ALWAYS_PICK_UP = 1048576
--- Gravity gun is NOT allowed to pick this up.  
_G.SF_PHYSBOX_NEVER_PICK_UP = 2097152
--- Gravity gun is NOT allowed to punt this entity.  
_G.SF_PHYSBOX_NEVER_PUNT = 4194304
--- If set, calls PhysObj:EnableMotion( false ) on the func_physbox when the physics are created. See [Physics optimization](https://developer.valvesoftware.com/wiki/Physics_optimization).  
_G.SF_PHYSPROP_MOTIONDISABLED = 8
--- Prevent that physbox from being picked up.  
_G.SF_PHYSPROP_PREVENT_PICKUP = 512
--- This flag is set if the entity is gib.  
_G.SF_PHYSPROP_IS_GIB = 4194304
--- Makes the rollermine friendly.  
_G.SF_ROLLERMINE_FRIENDLY = 65536
--- If set before Entity:Spawn, the weapon will be constrained and will not simply fall to the ground.  
_G.SF_WEAPON_START_CONSTRAINED = 1
--- Player is NOT allowed to pick this up.  
_G.SF_WEAPON_NO_PLAYER_PICKUP = 2
--- Physgun is NOT allowed to pick this up.  
_G.SF_WEAPON_NO_PHYSCANNON_PUNT = 4

--- Enumerations describing certain spawnflags. Everything except for SF_PHYS* and SF_WEAPON* is serverside only.  
--- Spawnflags are set using Entity:SetKeyValue with **"spawnflags"** as the key.  
--- * SF_CITIZEN_* spawnflags represent spawnflags only usable on [npc_citizen](https://developer.valvesoftware.com/wiki/Npc_citizen).  
--- * SF_NPC_* - Usable on all NPCs  
--- * SF_PHYSBOX_* - Usable on [func_physbox](https://developer.valvesoftware.com/wiki/Func_physbox)  
--- * SF_PHYSPROP_* - Usable on [prop_physics](https://developer.valvesoftware.com/wiki/Prop_physics) entities  
--- * SF_WEAPON_* - Usable on Weapons  
--- ℹ **NOTE**: This is not a full list of available spawnflags, there are **a lot** more, each unique to each entity, you can find out more on the [Valve Developer Community](https://developer.valvesoftware.com/wiki/Main_Page) website for the entities in question.  
--- @alias ESF `SF_CITIZEN_AMMORESUPPLIER`|`SF_CITIZEN_FOLLOW`|`SF_CITIZEN_IGNORE_SEMAPHORE`|`SF_CITIZEN_MEDIC`|`SF_CITIZEN_NOT_COMMANDABLE`|`SF_CITIZEN_RANDOM_HEAD`|`SF_CITIZEN_RANDOM_HEAD_FEMALE`|`SF_CITIZEN_RANDOM_HEAD_MALE`|`SF_CITIZEN_USE_RENDER_BOUNDS`|`SF_FLOOR_TURRET_CITIZEN`|`SF_NPC_ALTCOLLISION`|`SF_NPC_ALWAYSTHINK`|`SF_NPC_DROP_HEALTHKIT`|`SF_NPC_FADE_CORPSE`|`SF_NPC_FALL_TO_GROUND`|`SF_NPC_GAG`|`SF_NPC_LONG_RANGE`|`SF_NPC_NO_PLAYER_PUSHAWAY`|`SF_NPC_NO_WEAPON_DROP`|`SF_NPC_START_EFFICIENT`|`SF_NPC_TEMPLATE`|`SF_NPC_WAIT_FOR_SCRIPT`|`SF_NPC_WAIT_TILL_SEEN`|`SF_PHYSBOX_MOTIONDISABLED`|`SF_PHYSBOX_ALWAYS_PICK_UP`|`SF_PHYSBOX_NEVER_PICK_UP`|`SF_PHYSBOX_NEVER_PUNT`|`SF_PHYSPROP_MOTIONDISABLED`|`SF_PHYSPROP_PREVENT_PICKUP`|`SF_PHYSPROP_IS_GIB`|`SF_ROLLERMINE_FRIENDLY`|`SF_WEAPON_START_CONSTRAINED`|`SF_WEAPON_NO_PLAYER_PICKUP`|`SF_WEAPON_NO_PHYSCANNON_PUNT`
