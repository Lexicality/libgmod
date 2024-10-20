--- @meta

--- @class GCNewParticleEffect
--- This object represents a .pcf ( Orange Box ) particle system. Created by Entity:CreateParticleEffect and Global.CreateParticleSystem.  
local GCNewParticleEffect = {}
--- Adds a control point to the particle system.  
--- ℹ **NOTE**: This function will not work if the CNewParticleEffect:GetOwner entity is not valid  
--- @param cpID number @The control point ID, 0 to 63.
--- @param ent GEntity @The entity to attach the control point to.
--- @param partAttachment number @See Enums/PATTACH.
--- @param entAttachment? number @The attachment ID on the entity to attach the particle system to
--- @param offset? GVector @The offset from the Entity:GetPos of the entity we are attaching this CP to.
function GCNewParticleEffect:AddControlPoint(cpID, ent, partAttachment, entAttachment, offset)
end

--- @return boolean 
function GCNewParticleEffect:GetAutoUpdateBBox()
end

--- Returns the name of the particle effect this system is set to emit.  
--- @return string @The name of the particle effect.
function GCNewParticleEffect:GetEffectName()
end

--- Returns the highest control point number for given particle system.  
--- @return boolean @The highest control point number for given particle system, 0 to 63.
function GCNewParticleEffect:GetHighestControlPoint()
end

--- Returns the owner of the particle system, the entity the particle system is attached to.  
--- @return GEntity @The owner of the particle system.
function GCNewParticleEffect:GetOwner()
end

--- Returns the bounding box of the particle effect, including all the particles it emitted.  
--- @return GVector @Mins of the bounding box.
--- @return GVector @Maxs of the bounding box.
function GCNewParticleEffect:GetRenderBounds()
end

--- Returns whether the particle system has finished emitting particles or not.  
--- @return boolean @Whether the particle system has finished emitting particles or not.
function GCNewParticleEffect:IsFinished()
end

--- Returns whether the particle system is valid or not.  
--- @return boolean @Whether the particle system is valid or not.
function GCNewParticleEffect:IsValid()
end

--- Returns whether the particle system is intended to be used on a view model?  
--- @return boolean 
function GCNewParticleEffect:IsViewModelEffect()
end

--- Forces the particle system to render using current rendering context.  
--- Can be used to render the particle system in vgui panels, etc.  
--- Used in conjunction with CNewParticleEffect:SetShouldDraw.  
function GCNewParticleEffect:Render()
end

--- Forces the particle system to restart emitting particles.  
function GCNewParticleEffect:Restart()
end

--- Sets a value for given control point.  
--- @param cpID number @The control point ID, 0 to 63.
--- @param value GVector @The value to set for given control point.
function GCNewParticleEffect:SetControlPoint(cpID, value)
end

--- Sets an entity to given control point for particle to use.  
--- @param cpID number @The control point ID, 0 to 63.
--- @param parent GEntity @The entity to set.
function GCNewParticleEffect:SetControlPointEntity(cpID, parent)
end

--- Sets the forward direction for given control point.  
--- @param cpID number @The control point ID, 0 to 63.
--- @param forward GVector @The forward direction for given control point
function GCNewParticleEffect:SetControlPointForwardVector(cpID, forward)
end

--- Sets the orientation for given control point.  
--- @param cpID number @The control point ID, 0 to 63.
--- @param forward GVector @The forward direction for given control point
--- @param right GVector @The right direction for given control point
--- @param up GVector @The up direction for given control point
function GCNewParticleEffect:SetControlPointOrientation(cpID, forward, right, up)
end

--- Essentially makes child control point follow the parent control point.  
--- @param childID number @The child control point ID, 0 to 63.
--- @param parentID number @The parent control point ID, 0 to 63.
function GCNewParticleEffect:SetControlPointParent(childID, parentID)
end

--- Sets the right direction for given control point.  
--- @param cpID number @The control point ID, 0 to 63.
--- @param right GVector @The right direction for given control point.
function GCNewParticleEffect:SetControlPointRightVector(cpID, right)
end

--- Sets the upward direction for given control point.  
--- @param cpID number @The control point ID, 0 to 63.
--- @param upward GVector @The upward direction for given control point
function GCNewParticleEffect:SetControlPointUpVector(cpID, upward)
end

--- Set whether this particle effect is a view model effect or not. This will have an effect on attachment positioning and other things.  
--- @param isViewModel boolean @Whether this particle effect is a view model effect or not.
function GCNewParticleEffect:SetIsViewModelEffect(isViewModel)
end

--- Forces the particle system to stop automatically rendering.  
--- Used in conjunction with CNewParticleEffect:Render.  
--- @param should boolean @Whether to automatically draw the particle effect or not.
function GCNewParticleEffect:SetShouldDraw(should)
end

--- Sets the sort origin for given particle system. This is used as a helper to determine which particles are in front of which.  
--- @param origin GVector @The new sort origin.
function GCNewParticleEffect:SetSortOrigin(origin)
end

--- Starts the particle emission.  
--- @param infiniteOnly? boolean 
function GCNewParticleEffect:StartEmission(infiniteOnly)
end

--- Stops the particle emission.  
--- @param infiniteOnly? boolean 
--- @param removeAllParticles? boolean 
--- @param wakeOnStop? boolean 
function GCNewParticleEffect:StopEmission(infiniteOnly, removeAllParticles, wakeOnStop)
end

--- Stops particle emission and destroys all particles instantly. Also detaches the particle effect from the entity it was attached to.  
--- ℹ **NOTE**: This function will work identically to CNewParticleEffect:StopEmission( false, true ) if  CNewParticleEffect:GetOwner entity is not valid.  
--- Consider using CNewParticleEffect:StopEmission( false, true ) instead, which has same effect, but doesn't require owner entity, and does't detach the particle system from its entity.  
function GCNewParticleEffect:StopEmissionAndDestroyImmediately()
end

