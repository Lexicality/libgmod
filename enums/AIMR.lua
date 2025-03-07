--- @meta

--- Move is illegal for some reason.  
_G.AIMR_ILLEGAL = -4
--- Move was blocked by an NPC.  
_G.AIMR_BLOCKED_NPC = -3
--- Move was blocked by the world.  
_G.AIMR_BLOCKED_WORLD = -2
--- Move was blocked by an entity.  
_G.AIMR_BLOCKED_ENTITY = -1
--- Move op was ok.  
_G.AIMR_OK = 0
--- Locomotion method has changed.  
_G.AIMR_CHANGE_TYPE = 1

--- Used by NPC:MoveClimbExec, NPC:MoveJumpExec and NPC:MoveJumpStop.  
--- @alias EAIMR `AIMR_ILLEGAL`|`AIMR_BLOCKED_NPC`|`AIMR_BLOCKED_WORLD`|`AIMR_BLOCKED_ENTITY`|`AIMR_OK`|`AIMR_CHANGE_TYPE`
