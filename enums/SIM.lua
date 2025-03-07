--- @meta

--- Don't simulate physics  
_G.SIM_NOTHING = 0
--- Vectors in local coordinate system  
_G.SIM_LOCAL_ACCELERATION = 1
--- Vectors in local coordinate system  
_G.SIM_LOCAL_FORCE = 2
--- Vectors in world coordinate system  
_G.SIM_GLOBAL_ACCELERATION = 3
--- Vectors in world coordinate system  
_G.SIM_GLOBAL_FORCE = 4

--- Enumerations used by ENTITY:PhysicsSimulate.  
--- @alias ESIM `SIM_NOTHING`|`SIM_LOCAL_ACCELERATION`|`SIM_LOCAL_FORCE`|`SIM_GLOBAL_ACCELERATION`|`SIM_GLOBAL_FORCE`
