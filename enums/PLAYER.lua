--- @meta

_G.PLAYER_IDLE = 0
_G.PLAYER_WALK = 1
_G.PLAYER_JUMP = 2
_G.PLAYER_SUPERJUMP = 3
_G.PLAYER_DIE = 4
--- Player attack according to current hold type, used in SWEPs  
_G.PLAYER_ATTACK1 = 5
_G.PLAYER_IN_VEHICLE = 6
--- Player reload according to current hold type, used in SWEPs  
_G.PLAYER_RELOAD = 7
_G.PLAYER_START_AIMING = 8
_G.PLAYER_LEAVE_AIMING = 9

--- Enumerations used by Entity:SetAnimation  
--- @alias EPLAYER `PLAYER_IDLE`|`PLAYER_WALK`|`PLAYER_JUMP`|`PLAYER_SUPERJUMP`|`PLAYER_DIE`|`PLAYER_ATTACK1`|`PLAYER_IN_VEHICLE`|`PLAYER_RELOAD`|`PLAYER_START_AIMING`|`PLAYER_LEAVE_AIMING`
