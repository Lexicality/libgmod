--- @meta

--- When hit by an explosion, we'll simply block it instead of spilling it to entities behind us, the sv_robust_explosions cvar can also enable this globally when set to 0  
_G.CAP_SIMPLE_RADIUS_DAMAGE = -2147483648
--- Walk/Run  
_G.CAP_MOVE_GROUND = 1
--- Jump/Leap  
_G.CAP_MOVE_JUMP = 2
--- Can fly  move all around  
_G.CAP_MOVE_FLY = 4
--- climb ladders  
_G.CAP_MOVE_CLIMB = 8
_G.CAP_MOVE_SWIM = 16
_G.CAP_MOVE_CRAWL = 32
--- Tries to shoot weapon while moving  
_G.CAP_MOVE_SHOOT = 64
_G.CAP_SKIP_NAV_GROUND_CHECK = 128
--- Open doors/push buttons/pull levers  
_G.CAP_USE = 256
--- Can trigger auto doors  
_G.CAP_AUTO_DOORS = 1024
--- Can open manual doors  
_G.CAP_OPEN_DOORS = 2048
--- Can turn head  always bone controller 0  
_G.CAP_TURN_HEAD = 4096
_G.CAP_WEAPON_RANGE_ATTACK1 = 8192
_G.CAP_WEAPON_RANGE_ATTACK2 = 16384
_G.CAP_WEAPON_MELEE_ATTACK1 = 32768
_G.CAP_WEAPON_MELEE_ATTACK2 = 65536
_G.CAP_INNATE_RANGE_ATTACK1 = 131072
_G.CAP_INNATE_RANGE_ATTACK2 = 262144
_G.CAP_INNATE_MELEE_ATTACK1 = 524288
_G.CAP_INNATE_MELEE_ATTACK2 = 1048576
_G.CAP_USE_WEAPONS = 2097152
_G.CAP_USE_SHOT_REGULATOR = 16777216
--- Has animated eyes/face  
_G.CAP_ANIMATEDFACE = 8388608
--- Don't take damage from npc's that are D_LI  
_G.CAP_FRIENDLY_DMG_IMMUNE = 33554432
--- Can form squads  
_G.CAP_SQUAD = 67108864
--- Cover and Reload ducking  
_G.CAP_DUCK = 134217728
--- Don't hit players  
_G.CAP_NO_HIT_PLAYER = 268435456
--- Use arms to aim gun, not just body  
_G.CAP_AIM_GUN = 536870912
_G.CAP_NO_HIT_SQUADMATES = 1073741824

--- Enumerations used by NPC:CapabilitiesAdd, WEAPON:GetCapabilities and NPC:CapabilitiesGet. Serverside only.  
--- @alias ECAP `CAP_SIMPLE_RADIUS_DAMAGE`|`CAP_MOVE_GROUND`|`CAP_MOVE_JUMP`|`CAP_MOVE_FLY`|`CAP_MOVE_CLIMB`|`CAP_MOVE_SWIM`|`CAP_MOVE_CRAWL`|`CAP_MOVE_SHOOT`|`CAP_SKIP_NAV_GROUND_CHECK`|`CAP_USE`|`CAP_AUTO_DOORS`|`CAP_OPEN_DOORS`|`CAP_TURN_HEAD`|`CAP_WEAPON_RANGE_ATTACK1`|`CAP_WEAPON_RANGE_ATTACK2`|`CAP_WEAPON_MELEE_ATTACK1`|`CAP_WEAPON_MELEE_ATTACK2`|`CAP_INNATE_RANGE_ATTACK1`|`CAP_INNATE_RANGE_ATTACK2`|`CAP_INNATE_MELEE_ATTACK1`|`CAP_INNATE_MELEE_ATTACK2`|`CAP_USE_WEAPONS`|`CAP_USE_SHOT_REGULATOR`|`CAP_ANIMATEDFACE`|`CAP_FRIENDLY_DMG_IMMUNE`|`CAP_SQUAD`|`CAP_DUCK`|`CAP_NO_HIT_PLAYER`|`CAP_AIM_GUN`|`CAP_NO_HIT_SQUADMATES`
