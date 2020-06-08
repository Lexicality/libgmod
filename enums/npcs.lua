--- When hit by an explosion, we'll simply block it instead of spilling it to entities behind us, the sv_robust_explosions cvar can also enable this globally when set to 0
CAP_SIMPLE_RADIUS_DAMAGE = -2147483648
--- Walk/Run
CAP_MOVE_GROUND = 1
--- Jump/Leap
CAP_MOVE_JUMP = 2
--- Can fly move all around
CAP_MOVE_FLY = 4
--- climb ladders
CAP_MOVE_CLIMB = 8
---
CAP_MOVE_SWIM = 16
---
CAP_MOVE_CRAWL = 32
--- Tries to shoot weapon while moving
CAP_MOVE_SHOOT = 64
---
CAP_SKIP_NAV_GROUND_CHECK = 128
--- Open doors/push buttons/pull levers
CAP_USE = 256
--- Can trigger auto doors
CAP_AUTO_DOORS = 1024
--- Can open manual doors
CAP_OPEN_DOORS = 2048
--- Can turn head always bone controller 0
CAP_TURN_HEAD = 4096
---
CAP_WEAPON_RANGE_ATTACK1 = 8192
---
CAP_WEAPON_RANGE_ATTACK2 = 16384
---
CAP_WEAPON_MELEE_ATTACK1 = 32768
---
CAP_WEAPON_MELEE_ATTACK2 = 65536
---
CAP_INNATE_RANGE_ATTACK1 = 131072
---
CAP_INNATE_RANGE_ATTACK2 = 262144
---
CAP_INNATE_MELEE_ATTACK1 = 524288
---
CAP_INNATE_MELEE_ATTACK2 = 1048576
---
CAP_USE_WEAPONS = 2097152
---
CAP_USE_SHOT_REGULATOR = 16777216
--- Has animated eyes/face
CAP_ANIMATEDFACE = 8388608
--- Don't take damage from npc's that are D_LI
CAP_FRIENDLY_DMG_IMMUNE = 33554432
--- Can form squads
CAP_SQUAD = 67108864
--- Cover and Reload ducking
CAP_DUCK = 134217728
--- Don't hit players
CAP_NO_HIT_PLAYER = 268435456
--- Use arms to aim gun, not just body
CAP_AIM_GUN = 536870912
---
CAP_NO_HIT_SQUADMATES = 1073741824

--- The NPC will miss a large majority of their shots.
WEAPON_PROFICIENCY_POOR = 0
--- The NPC will miss about half of their shots.
WEAPON_PROFICIENCY_AVERAGE = 1
--- The NPC will sometimes miss their shots.
WEAPON_PROFICIENCY_GOOD = 2
--- The NPC will rarely miss their shots.
WEAPON_PROFICIENCY_VERY_GOOD = 3
--- The NPC will almost never miss their shots.
WEAPON_PROFICIENCY_PERFECT = 4

--- Invalid state
NPC_STATE_INVALID = -1
--- NPC default state
NPC_STATE_NONE = 0
--- NPC is idle
NPC_STATE_IDLE = 1
--- NPC is alert and searching for enemies
NPC_STATE_ALERT = 2
--- NPC is in combat
NPC_STATE_COMBAT = 3
--- NPC is executing scripted sequence
NPC_STATE_SCRIPT = 4
--- NPC is playing dead (used for expressions)
NPC_STATE_PLAYDEAD = 5
--- NPC is prone to death
NPC_STATE_PRONE = 6
--- NPC is dead
NPC_STATE_DEAD = 7

--- Default citizen
CT_DEFAULT = 0
---
CT_DOWNTRODDEN = 1
--- Refugee
CT_REFUGEE = 2
--- Rebel
CT_REBEL = 3
--- Odessa?
CT_UNIQUE = 4

--- Error
D_ER = 0
--- Hate
D_HT = 1
--- Frightened / Fear
D_FR = 2
--- Like
D_LI = 3
--- Neutral
D_NU = 4

--- None - default class for entities.
CLASS_NONE = 0
--- Players.
CLASS_PLAYER = 1
--- HL2 player allies - monster_barney, npc_citizen, hacked npc_manhack, and friendly npc_turret_floor.
CLASS_PLAYER_ALLY = 2
--- HL2 vital player allies - npc_magnusson, npc_gman, npc_fisherman, npc_eli, npc_barney, npc_kleiner, npc_mossman, npc_alyx, npc_monk, npc_dog, and npc_vortigaunt at the end of EP2 (controlled by "MakeGameEndAlly" input).
CLASS_PLAYER_ALLY_VITAL = 3
--- HL2 antlions - npc_antlion, npc_antlionguard, and npc_ichthyosaur.
CLASS_ANTLION = 4
--- HL2 barnacles - npc_barnacle.
CLASS_BARNACLE = 5
--- HL2 bullseyes - npc_bullseye.
CLASS_BULLSEYE = 6
--- HL2 passive/non-rebel citizens - npc_citizen in the beginning of HL2.
CLASS_CITIZEN_PASSIVE = 7
--- HL2 unused.
CLASS_CITIZEN_REBEL = 8
--- HL2 combine troops - npc_combine, npc_advisor, apc_missile, npc_apcdriver, hostile npc_turret_floor, hostile npc_rollermine, npc_turret_ground when active, npc_turret_ceiling when active, and npc_strider when active (not being carried by the gunship).
CLASS_COMBINE = 9
--- HL2 combine aircrafts - npc_combinegunship, npc_combinedropship, and npc_helicopter.
CLASS_COMBINE_GUNSHIP = 10
--- HL2 unused.
CLASS_CONSCRIPT = 11
--- HL2 headcrabs - visible npc_headcrab.
CLASS_HEADCRAB = 12
--- HL2 manhacks - hostile npc_manhack not held by the gravity gun.
CLASS_MANHACK = 13
--- HL2 metro police - npc_metropolice and npc_vehicledriver.
CLASS_METROPOLICE = 14
--- HL2 combine military objects - func_guntarget, npc_spotlight, and active npc_combine_camera.
CLASS_MILITARY = 15
--- HL2 combine scanners - npc_cscanner and npc_clawscanner.
CLASS_SCANNER = 16
--- HL2 stalkers - npc_stalker.
CLASS_STALKER = 17
--- HL2 vortigaunts - npc_vortigaunt before the end of EP2 (controlled by "MakeGameEndAlly" input).
CLASS_VORTIGAUNT = 18
--- HL2 zombies - unslumped npc_zombie, npc_poisonzombie, npc_fastzombie, npc_fastzombie_torso, and npc_zombine.
CLASS_ZOMBIE = 19
--- HL2 snipers - npc_sniper and proto_sniper.
CLASS_PROTOSNIPER = 20
--- HL2 missiles - rpg_missile, apc_missile, and grenade_pathfollower.
CLASS_MISSILE = 21
--- HL2 flares - env_flare.
CLASS_FLARE = 22
--- HL2 animals - npc_crow, npc_seagull, and npc_pigeon.
CLASS_EARTH_FAUNA = 23
--- HL2 friendly rollermines - hacked npc_rollermine.
CLASS_HACKED_ROLLERMINE = 24
--- HL2 hunters - npc_hunter.
CLASS_COMBINE_HUNTER = 25
--- HL:S turrets - monster_turret, monster_miniturret, monster_sentry.
CLASS_MACHINE = 26
--- HL:S friendly humans - monster_scientist.
CLASS_HUMAN_PASSIVE = 27
--- HL:S human military - monster_human_grunt and monster_apache.
CLASS_HUMAN_MILITARY = 28
--- HL:S alien military - monster_alien_controller, monster_vortigaunt, monster_alien_grunt, monster_nihilanth, and monster_snark if it has an enemy of class CLASS_PLAYER, CLASS_HUMAN_PASSIVE, or CLASS_HUMAN_MILITARY.
CLASS_ALIEN_MILITARY = 29
--- HL:S monsters - monster_tentacle, monster_barnacle, monster_zombie, monster_gargantua, monster_houndeye, monster_ichthyosaur, and monster_bigmomma.
CLASS_ALIEN_MONSTER = 30
--- HL:S headcrabs - monster_headcrab.
CLASS_ALIEN_PREY = 31
--- HL:S alien predators - monster_bullsquid, xen_tree, and xen_hull.
CLASS_ALIEN_PREDATOR = 32
--- HL:S insects - montser_roach and monster_leech.
CLASS_INSECT = 33
--- HL:S player bioweapons - hornet fired by a player.
CLASS_PLAYER_BIOWEAPON = 34
--- HL:S enemy bioweapons - hornet fired by anyone but a player, or monster_snark with no enemy or an enemy without the class CLASS_PLAYER, CLASS_HUMAN_PASSIVE, or CLASS_HUMAN_MILITARY.
CLASS_ALIEN_BIOWEAPON = 35

--- The nav area is invalid.
NAV_MESH_INVALID = 0
--- Must crouch to use this node/area
NAV_MESH_CROUCH = 1
--- Must jump to traverse this area (only used during generation)
NAV_MESH_JUMP = 2
--- Do not adjust for obstacles, just move along area
NAV_MESH_PRECISE = 4
--- Inhibit discontinuity jumping
NAV_MESH_NO_JUMP = 8
--- Must stop when entering this area
NAV_MESH_STOP = 16
--- Must run to traverse this area
NAV_MESH_RUN = 32
--- Must walk to traverse this area
NAV_MESH_WALK = 64
--- Avoid this area unless alternatives are too dangerous
NAV_MESH_AVOID = 128
--- Area may become blocked, and should be periodically checked
NAV_MESH_TRANSIENT = 256
--- Area should not be considered for hiding spot generation
NAV_MESH_DONT_HIDE = 512
--- Bots hiding in this area should stand
NAV_MESH_STAND = 1024
--- Hostages shouldn't use this area
NAV_MESH_NO_HOSTAGES = 2048
--- This area represents stairs, do not attempt to climb or jump them - just walk up
NAV_MESH_STAIRS = 4096
--- Don't merge this area with adjacent areas
NAV_MESH_NO_MERGE = 8192
--- This nav area is the climb point on the tip of an obstacle
NAV_MESH_OBSTACLE_TOP = 16384
--- This nav area is adjacent to a drop of at least CliffHeight
NAV_MESH_CLIFF = 32768
--- Area has designer specified cost controlled by func_nav_cost entities
NAV_MESH_FUNC_COST = 536870912
--- Area is in an elevator's path
NAV_MESH_HAS_ELEVATOR = 1073741824
---
NAV_MESH_NAV_BLOCKER = -2147483648

--- Hull of a Citizen
HULL_HUMAN = 0
---
HULL_SMALL_CENTERED = 1
---
HULL_WIDE_HUMAN = 2
---
HULL_TINY = 3
---
HULL_WIDE_SHORT = 4
---
HULL_MEDIUM = 5
---
HULL_TINY_CENTERED = 6
---
HULL_LARGE = 7
---
HULL_LARGE_CENTERED = 8
---
HULL_MEDIUM_TALL = 9

--- Amount of Enums/CLASS. Used by Add_NPC_Class.
NUM_AI_CLASSES = 36
--- Amount of Enums/HULL.
NUM_HULLS = 10

--- The schedule enum limit
LAST_SHARED_SCHEDULE = 88
--- Begins AI script based on NPC's m_hCine save value.
SCHED_AISCRIPT = 56
--- Idle stance and face ideal yaw angles.
SCHED_ALERT_FACE = 5
---
SCHED_ALERT_FACE_BESTSOUND = 6
---
SCHED_ALERT_REACT_TO_COMBAT_SOUND = 7
--- Rotate 180 degrees and back to check for enemies.
SCHED_ALERT_SCAN = 8
--- Remain idle until an enemy is heard or found.
SCHED_ALERT_STAND = 9
--- Walk until an enemy is heard or found.
SCHED_ALERT_WALK = 10
--- Remain idle until provoked or an enemy is found.
SCHED_AMBUSH = 52
--- Performs ACT_ARM.
SCHED_ARM_WEAPON = 48
--- Back away from enemy. If not possible to back away then go behind enemy.
SCHED_BACK_AWAY_FROM_ENEMY = 24
---
SCHED_BACK_AWAY_FROM_SAVE_POSITION = 26
--- Heavy damage was taken for the first time in a while.
SCHED_BIG_FLINCH = 23
--- Begin chasing an enemy.
SCHED_CHASE_ENEMY = 17
--- Failed to chase enemy.
SCHED_CHASE_ENEMY_FAILED = 18
--- Face current enemy.
SCHED_COMBAT_FACE = 12
--- Will walk around patrolling an area until an enemy is found.
SCHED_COMBAT_PATROL = 75
---
SCHED_COMBAT_STAND = 15
---
SCHED_COMBAT_SWEEP = 13
---
SCHED_COMBAT_WALK = 16
--- When not moving, will perform ACT_COWER.
SCHED_COWER = 40
--- Regular NPC death.
SCHED_DIE = 53
--- Plays NPC death sound (doesn't kill NPC).
SCHED_DIE_RAGDOLL = 54
--- Holsters active weapon. (Only works with NPC's that can holster weapons)
SCHED_DISARM_WEAPON = 49
---
SCHED_DROPSHIP_DUSTOFF = 79
--- Preform Ducking animation. (Only works with npc_alyx)
SCHED_DUCK_DODGE = 84
--- Search for a place to shoot current enemy.
SCHED_ESTABLISH_LINE_OF_FIRE = 35
--- Fallback from an established line of fire.
SCHED_ESTABLISH_LINE_OF_FIRE_FALLBACK = 36
--- Failed doing current schedule.
SCHED_FAIL = 81
--- Failed to establish a line of fire.
SCHED_FAIL_ESTABLISH_LINE_OF_FIRE = 38
---
SCHED_FAIL_NOSTOP = 82
--- Failed to take cover.
SCHED_FAIL_TAKE_COVER = 31
--- Fall to ground when in the air.
SCHED_FALL_TO_GROUND = 78
--- Will express fear face. (Only works on NPCs with expressions)
SCHED_FEAR_FACE = 14
---
SCHED_FLEE_FROM_BEST_SOUND = 29
--- Plays ACT_FLINCH_PHYSICS.
SCHED_FLINCH_PHYSICS = 80
--- Force walk to position (debug).
SCHED_FORCED_GO = 71
--- Force run to position (debug).
SCHED_FORCED_GO_RUN = 72
--- Pick up item if within a radius of 5 units.
SCHED_GET_HEALTHKIT = 66
--- Take cover and reload weapon.
SCHED_HIDE_AND_RELOAD = 50
--- Idle stance
SCHED_IDLE_STAND = 1
--- Walk to position.
SCHED_IDLE_WALK = 2
--- Walk to random position within a radius of 200 units.
SCHED_IDLE_WANDER = 3
---
SCHED_INTERACTION_MOVE_TO_PARTNER = 85
---
SCHED_INTERACTION_WAIT_FOR_PARTNER = 86
---
SCHED_INVESTIGATE_SOUND = 11
---
SCHED_MELEE_ATTACK1 = 41
---
SCHED_MELEE_ATTACK2 = 42
--- Move away from player.
SCHED_MOVE_AWAY = 68
--- Stop moving and continue enemy scan.
SCHED_MOVE_AWAY_END = 70
--- Failed to move away; stop moving.
SCHED_MOVE_AWAY_FAIL = 69
--- Move away from enemy while facing it and checking for new enemies.
SCHED_MOVE_AWAY_FROM_ENEMY = 25
--- Move to the range the weapon is preferably used at.
SCHED_MOVE_TO_WEAPON_RANGE = 34
--- Pick up a new weapon if within a radius of 5 units.
SCHED_NEW_WEAPON = 63
--- Fail safe: Create the weapon that the NPC went to pick up if it was removed during pick up schedule.
SCHED_NEW_WEAPON_CHEAT = 64
--- No schedule is being performed.
SCHED_NONE = 0
--- Prevents movement until COND_NPC_UNFREEZE(68) is set.
SCHED_NPC_FREEZE = 73
--- Run to random position and stop if enemy is heard or found.
SCHED_PATROL_RUN = 76
--- Walk to random position and stop if enemy is heard or found.
SCHED_PATROL_WALK = 74
---
SCHED_PRE_FAIL_ESTABLISH_LINE_OF_FIRE = 37
---
SCHED_RANGE_ATTACK1 = 43
---
SCHED_RANGE_ATTACK2 = 44
--- Stop moving and reload until danger is heard.
SCHED_RELOAD = 51
--- Retreat from the established enemy.
SCHED_RUN_FROM_ENEMY = 32
---
SCHED_RUN_FROM_ENEMY_FALLBACK = 33
---
SCHED_RUN_FROM_ENEMY_MOB = 83
--- Run to random position within a radius of 500 units.
SCHED_RUN_RANDOM = 77
---
SCHED_SCENE_GENERIC = 62
---
SCHED_SCRIPTED_CUSTOM_MOVE = 59
---
SCHED_SCRIPTED_FACE = 61
---
SCHED_SCRIPTED_RUN = 58
---
SCHED_SCRIPTED_WAIT = 60
---
SCHED_SCRIPTED_WALK = 57
--- Shoot cover that the enemy is behind.
SCHED_SHOOT_ENEMY_COVER = 39
--- Sets the NPC to a sleep-like state.
SCHED_SLEEP = 87
---
SCHED_SMALL_FLINCH = 22
---
SCHED_SPECIAL_ATTACK1 = 45
---
SCHED_SPECIAL_ATTACK2 = 46
---
SCHED_STANDOFF = 47
---
SCHED_SWITCH_TO_PENDING_WEAPON = 65
---
SCHED_TAKE_COVER_FROM_BEST_SOUND = 28
--- Take cover from current enemy.
SCHED_TAKE_COVER_FROM_ENEMY = 27
---
SCHED_TAKE_COVER_FROM_ORIGIN = 30
--- Chase set NPC target.
SCHED_TARGET_CHASE = 21
--- Face NPC target.
SCHED_TARGET_FACE = 20
--- Human victory dance.
SCHED_VICTORY_DANCE = 19
---
SCHED_WAIT_FOR_SCRIPT = 55
---
SCHED_WAIT_FOR_SPEAK_FINISH = 67
--- Spot an enemy and go from an idle state to combat state.
SCHED_WAKE_ANGRY = 4

--- Citizen that resupplies ammo
SF_CITIZEN_AMMORESUPPLIER = 524288
--- "Follow the player as soon as I spawn"
SF_CITIZEN_FOLLOW = 65536
--- "Work outside the speech semaphore system"
SF_CITIZEN_IGNORE_SEMAPHORE = 2097152
--- Makes the citizen a medic
SF_CITIZEN_MEDIC = 131072
--- Citizen cannot join players squad, and will not able to be commanded by the Half-Life 2 command system for Citizens
SF_CITIZEN_NOT_COMMANDABLE = 1048576
--- Gives the citizen a random head
SF_CITIZEN_RANDOM_HEAD = 262144
--- Gives the citizen a random female head
SF_CITIZEN_RANDOM_HEAD_FEMALE = 8388608
--- Gives the citizen a random male head
SF_CITIZEN_RANDOM_HEAD_MALE = 4194304
--- "Use render bounds instead of human hull for guys sitting in chairs, etc". Must be set before Spawn() is called to take effect
SF_CITIZEN_USE_RENDER_BOUNDS = 16777216
--- Makes the floor turret friendly
SF_FLOOR_TURRET_CITIZEN = 512
--- Do Alternate collision for this NPC (player avoidance)
SF_NPC_ALTCOLLISION = 4096
--- Think outside PVS
SF_NPC_ALWAYSTHINK = 1024
--- NPC Drops health kit when it dies
SF_NPC_DROP_HEALTHKIT = 8
--- Fade Corpse
SF_NPC_FADE_CORPSE = 512
--- If not set, means teleport to ground
SF_NPC_FALL_TO_GROUND = 4
--- No IDLE sounds until angry
SF_NPC_GAG = 2
--- Long Visibility/Shoot
SF_NPC_LONG_RANGE = 256
--- Ignore player push - Don't give way to player
SF_NPC_NO_PLAYER_PUSHAWAY = 16384
--- NPC Doesn't drop weapon on death
SF_NPC_NO_WEAPON_DROP = 8192
--- Don't acquire enemies or avoid obstacles
SF_NPC_START_EFFICIENT = 16
--- This entity is a template for the npc_template_maker. It will not spawn automatically and cannot be used with point_template.
SF_NPC_TEMPLATE = 2048
--- Wait for script
SF_NPC_WAIT_FOR_SCRIPT = 128
--- Wait till seen
SF_NPC_WAIT_TILL_SEEN = 1

--- Makes the rollermine friendly
SF_ROLLERMINE_FRIENDLY = 65536
