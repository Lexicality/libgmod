--- @meta

--- Anything that is not empty space  
_G.MASK_ALL = 4294967295
--- Anything that blocks line of sight for AI  
_G.MASK_BLOCKLOS = 16449
--- Anything that blocks line of sight for AI or NPCs  
_G.MASK_BLOCKLOS_AND_NPCS = 33570881
--- Water that is moving (may not work)  
_G.MASK_CURRENT = 16515072
--- Anything that blocks corpse movement  
_G.MASK_DEADSOLID = 65547
--- Anything that blocks NPC movement  
_G.MASK_NPCSOLID = 33701899
--- Anything that blocks NPC movement, except other NPCs  
_G.MASK_NPCSOLID_BRUSHONLY = 147467
--- The world entity  
_G.MASK_NPCWORLDSTATIC = 131083
--- Anything that blocks lighting  
_G.MASK_OPAQUE = 16513
--- Anything that blocks lighting, including NPCs  
_G.MASK_OPAQUE_AND_NPCS = 33570945
--- Anything that blocks player movement  
_G.MASK_PLAYERSOLID = 33636363
--- World + Brushes + Player Clips  
_G.MASK_PLAYERSOLID_BRUSHONLY = 81931
--- Anything that stops a bullet (including hitboxes)  
_G.MASK_SHOT = 1174421507
--- Anything that stops a bullet (excluding hitboxes)  
_G.MASK_SHOT_HULL = 100679691
--- Solids except for grates  
_G.MASK_SHOT_PORTAL = 33570819
--- Anything that is (normally) solid  
_G.MASK_SOLID = 33570827
--- World + Brushes  
_G.MASK_SOLID_BRUSHONLY = 16395
--- Things that split area portals  
_G.MASK_SPLITAREAPORTAL = 48
--- Anything that blocks line of sight for players  
_G.MASK_VISIBLE = 24705
--- Anything that blocks line of sight for players, including NPCs  
_G.MASK_VISIBLE_AND_NPCS = 33579137
--- Anything that has water-like physics  
_G.MASK_WATER = 16432

--- Enumerations used as trace masks in Structures/Trace and Structures/HullTrace. These enumerations are simply combinations of Enums/CONTENTS.  
--- @alias EMASK `MASK_ALL`|`MASK_BLOCKLOS`|`MASK_BLOCKLOS_AND_NPCS`|`MASK_CURRENT`|`MASK_DEADSOLID`|`MASK_NPCSOLID`|`MASK_NPCSOLID_BRUSHONLY`|`MASK_NPCWORLDSTATIC`|`MASK_OPAQUE`|`MASK_OPAQUE_AND_NPCS`|`MASK_PLAYERSOLID`|`MASK_PLAYERSOLID_BRUSHONLY`|`MASK_SHOT`|`MASK_SHOT_HULL`|`MASK_SHOT_PORTAL`|`MASK_SOLID`|`MASK_SOLID_BRUSHONLY`|`MASK_SPLITAREAPORTAL`|`MASK_VISIBLE`|`MASK_VISIBLE_AND_NPCS`|`MASK_WATER`
