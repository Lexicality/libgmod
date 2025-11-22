--- @meta

--- @class SEFFECT : GEntity
_G.EFFECT = {}

--- Effect alternative to ENTITY:EndTouch.  
function EFFECT:EndTouch()
end

--- Used to get the "real" start position of a trace, for weapon tracer effects.  
--- "real" meaning in 3rd person, the 3rd person position will be used, in first person the first person position will be used.  
--- @param pos GVector @Default position if we fail
--- @param ent GWeapon @The weapon to use.
--- @param attachment number @Attachment ID of on the weapon "muzzle", to use as the start position
--- @return GVector @The "real" start position.
function EFFECT:GetTracerShootPos(pos, ent, attachment)
end

--- Called when the effect is created.  
--- @param effectData GCEffectData @The effect data used to create the effect.
function EFFECT:Init(effectData)
end

--- Called when the effect collides with anything.  
--- @param colData table @Information regarding the collision
--- @param collider GPhysObj @The physics object of the entity that collided with the effect.
function EFFECT:PhysicsCollide(colData, collider)
end

--- Called when the effect should be rendered.  
--- When not overridden, it will perform default action, which is Entity:DrawModel.  
function EFFECT:Render()
end

--- Effect alternative to ENTITY:StartTouch.  
function EFFECT:StartTouch()
end

--- Called when the effect should think, return false to kill the effect.  
--- @return boolean @Return false to remove this effect.
function EFFECT:Think()
end

--- Effect alternative to ENTITY:Touch.  
function EFFECT:Touch()
end
