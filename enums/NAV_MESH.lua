--- @meta

--- The nav area is invalid.  
_G.NAV_MESH_INVALID = 0
--- Must crouch to use this node/area  
_G.NAV_MESH_CROUCH = 1
--- Must jump to traverse this area (only used during generation)  
_G.NAV_MESH_JUMP = 2
--- Do not adjust for obstacles, just move along area  
_G.NAV_MESH_PRECISE = 4
--- Inhibit discontinuity jumping  
_G.NAV_MESH_NO_JUMP = 8
--- Must stop when entering this area  
_G.NAV_MESH_STOP = 16
--- Must run to traverse this area  
_G.NAV_MESH_RUN = 32
--- Must walk to traverse this area  
_G.NAV_MESH_WALK = 64
--- Avoid this area unless alternatives are too dangerous  
_G.NAV_MESH_AVOID = 128
--- Area may become blocked, and should be periodically checked  
_G.NAV_MESH_TRANSIENT = 256
--- Area should not be considered for hiding spot generation  
_G.NAV_MESH_DONT_HIDE = 512
--- Bots hiding in this area should stand  
_G.NAV_MESH_STAND = 1024
--- Hostages shouldn't use this area  
_G.NAV_MESH_NO_HOSTAGES = 2048
--- This area represents stairs, do not attempt to climb or jump them - just walk up  
_G.NAV_MESH_STAIRS = 4096
--- Don't merge this area with adjacent areas  
_G.NAV_MESH_NO_MERGE = 8192
--- This nav area is the climb point on the tip of an obstacle  
_G.NAV_MESH_OBSTACLE_TOP = 16384
--- This nav area is adjacent to a drop of at least `CliffHeight` (300 hammer units). Unused by base game.  
_G.NAV_MESH_CLIFF = 32768
--- Whether the area is blocked via CNavArea:MarkAsBlocked.  
_G.NAV_MESH_BLOCKED_LUA = 65536
--- Whether the area has a `prop_door_rotating` that is blocking it (because the door is closed)  
_G.NAV_MESH_BLOCKED_PROPDOOR = 268435456
--- Area has designer specified cost controlled by `func_nav_cost` entities  
_G.NAV_MESH_FUNC_COST = 536870912
--- Area is in an elevator's path  
_G.NAV_MESH_HAS_ELEVATOR = 1073741824
--- Whether the area is blocked by a `func_nav_blocker` entity and is impassible.  
_G.NAV_MESH_NAV_BLOCKER = -2147483648

--- Enumerations used by CNavArea:GetAttributes and CNavArea:HasAttributes.  
--- @alias ENAV_MESH `NAV_MESH_INVALID`|`NAV_MESH_CROUCH`|`NAV_MESH_JUMP`|`NAV_MESH_PRECISE`|`NAV_MESH_NO_JUMP`|`NAV_MESH_STOP`|`NAV_MESH_RUN`|`NAV_MESH_WALK`|`NAV_MESH_AVOID`|`NAV_MESH_TRANSIENT`|`NAV_MESH_DONT_HIDE`|`NAV_MESH_STAND`|`NAV_MESH_NO_HOSTAGES`|`NAV_MESH_STAIRS`|`NAV_MESH_NO_MERGE`|`NAV_MESH_OBSTACLE_TOP`|`NAV_MESH_CLIFF`|`NAV_MESH_BLOCKED_LUA`|`NAV_MESH_BLOCKED_PROPDOOR`|`NAV_MESH_FUNC_COST`|`NAV_MESH_HAS_ELEVATOR`|`NAV_MESH_NAV_BLOCKER`
