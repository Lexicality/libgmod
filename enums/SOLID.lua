--- @meta

--- Does not collide with anything.  
--- ℹ **NOTE**: No physics object will be created when using this with Entity:PhysicsInit.  
_G.SOLID_NONE = 0
--- The entity has a brush model defined by the map. Does not collide with other SOLID_BSP entities.  
_G.SOLID_BSP = 1
--- Uses the entity's axis-aligned bounding box for collisions.  
_G.SOLID_BBOX = 2
--- Uses the entity's object-aligned bounding box for collisions.  
_G.SOLID_OBB = 3
--- Same as SOLID_OBB but restricts orientation to the Z-axis.  
--- ℹ **NOTE**: Seems to be broken.  
_G.SOLID_OBB_YAW = 4
--- Always call the entity's `ICollideable::TestCollision` method for traces regardless of the presence of `FSOLID_CUSTOMRAYTEST` or `FSOLID_CUSTOMBOXTEST`. This will only be called back to Lua as ENTITY:TestCollision for `"anim"` type SENTs.  
_G.SOLID_CUSTOM = 5
--- Uses the PhysObjects of the entity.  
_G.SOLID_VPHYSICS = 6

--- For use with Entity:PhysicsInit, Entity:SetSolid and Entity:GetSolid.  
--- @alias ESOLID `SOLID_NONE`|`SOLID_BSP`|`SOLID_BBOX`|`SOLID_OBB`|`SOLID_OBB_YAW`|`SOLID_CUSTOM`|`SOLID_VPHYSICS`
