--- @meta

--- Particle spawns in entity's origin and does not follow it  
_G.PATTACH_ABSORIGIN = 0
--- Particle attaches to entity's origin and follows the entity  
_G.PATTACH_ABSORIGIN_FOLLOW = 1
--- Create at a custom origin, but don't follow  
_G.PATTACH_CUSTOMORIGIN = 2
--- Particle attaches to passed to Global.ParticleEffectAttach attachment id, but does not follow the entity  
_G.PATTACH_POINT = 3
--- Particle attaches to passed to Global.ParticleEffectAttach attachment id and follows the entity  
_G.PATTACH_POINT_FOLLOW = 4
--- Particle spawns in the beginning of coordinates ( Vector( 0, 0, 0 ) ), used for control points that don't attach to an entity  
_G.PATTACH_WORLDORIGIN = 5

--- Enumerations used by Global.ParticleEffectAttach.  
--- @alias EPATTACH `PATTACH_ABSORIGIN`|`PATTACH_ABSORIGIN_FOLLOW`|`PATTACH_CUSTOMORIGIN`|`PATTACH_POINT`|`PATTACH_POINT_FOLLOW`|`PATTACH_WORLDORIGIN`
