--- @meta

--- No goal type.  
_G.GOALTYPE_NONE = 0
--- The goal type is an entity.  
_G.GOALTYPE_TARGETENT = 1
--- The goal type is the enemy entity.  
_G.GOALTYPE_ENEMY = 2
--- The goal type is a path corner.  
_G.GOALTYPE_PATHCORNER = 3
--- The goal type is a position.  
_G.GOALTYPE_LOCATION = 4
--- The goal type is a node nearest to a certain position.  
_G.GOALTYPE_LOCATION_NEAREST_NODE = 5
--- Goal type is a flank location.  
_G.GOALTYPE_FLANK = 6
--- Goal type is a cover spot.  
_G.GOALTYPE_COVER = 7
--- Invalid goal type.  
_G.GOALTYPE_INVALID = 8

--- Used by NPC:GetCurGoalType.  
--- ⚠ **WARNING**: These enumerations do not exist in game and are listed here only for reference  
--- @alias EGOALTYPE `GOALTYPE_NONE`|`GOALTYPE_TARGETENT`|`GOALTYPE_ENEMY`|`GOALTYPE_PATHCORNER`|`GOALTYPE_LOCATION`|`GOALTYPE_LOCATION_NEAREST_NODE`|`GOALTYPE_FLANK`|`GOALTYPE_COVER`|`GOALTYPE_INVALID`
