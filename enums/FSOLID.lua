--- @meta

--- Ignore solid type + always call into the entity for ray tests  
_G.FSOLID_CUSTOMRAYTEST = 1
--- Ignore solid type + always call into the entity for swept box tests  
_G.FSOLID_CUSTOMBOXTEST = 2
--- The object is currently not solid  
_G.FSOLID_NOT_SOLID = 4
--- This is something may be collideable but fires touch functions even when it's not collideable (when the FSOLID_NOT_SOLID flag is set)  
_G.FSOLID_TRIGGER = 8
--- The player can't stand on this  
_G.FSOLID_NOT_STANDABLE = 16
--- Contains volumetric contents (like water)  
_G.FSOLID_VOLUME_CONTENTS = 32
--- Forces the collision representation to be world-aligned even if it's SOLID_BSP or SOLID_VPHYSICS  
_G.FSOLID_FORCE_WORLD_ALIGNED = 64
--- Uses a special trigger bounds separate from the normal OBB  
_G.FSOLID_USE_TRIGGER_BOUNDS = 128
--- Collisions are defined in root parent's local coordinate space  
_G.FSOLID_ROOT_PARENT_ALIGNED = 256
--- This trigger will touch debris objects  
_G.FSOLID_TRIGGER_TOUCH_DEBRIS = 512
--- The amount of bits needed to store the all the flags in a variable/sent over network.  
_G.FSOLID_MAX_BITS = 10

--- Enumerations used by Entity:SetSolidFlags and Entity:GetSolidFlags.  
--- @alias EFSOLID `FSOLID_CUSTOMRAYTEST`|`FSOLID_CUSTOMBOXTEST`|`FSOLID_NOT_SOLID`|`FSOLID_TRIGGER`|`FSOLID_NOT_STANDABLE`|`FSOLID_VOLUME_CONTENTS`|`FSOLID_FORCE_WORLD_ALIGNED`|`FSOLID_USE_TRIGGER_BOUNDS`|`FSOLID_ROOT_PARENT_ALIGNED`|`FSOLID_TRIGGER_TOUCH_DEBRIS`|`FSOLID_MAX_BITS`
