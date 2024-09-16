--- @class GCLuaEmitter
--- List of all possible functions available for LuaEmitters. This is the object returned by the Global.ParticleEmitter function.  
local GCLuaEmitter = {}
--- Creates a new CLuaParticle with the given material and position.  
--- @param material string @The particles material
--- @param position GVector @The position to spawn the particle on.
--- @return GCLuaParticle @The created particle, if any.
function GCLuaEmitter:Add(material, position)
end

--- Manually renders all particles the emitter has created.  
function GCLuaEmitter:Draw()
end

--- Removes the emitter, making it no longer usable from Lua. If particles remain, the emitter will be removed when all particles die.  
function GCLuaEmitter:Finish()
end

--- Returns the amount of active particles of this emitter.  
--- @return number @The amount of active particles of this emitter
function GCLuaEmitter:GetNumActiveParticles()
end

--- Returns the position of this emitter. This is set when creating the emitter with Global.ParticleEmitter.  
--- @return GVector @Position of this particle emitter.
function GCLuaEmitter:GetPos()
end

--- Returns whether this emitter is 3D or not. This is set when creating the emitter with Global.ParticleEmitter.  
--- @return boolean @Whether this emitter is 3D or not.
function GCLuaEmitter:Is3D()
end

--- Returns whether this CLuaEmitter is valid or not.  
--- @return boolean @Whether this CLuaEmitter is valid or not.
function GCLuaEmitter:IsValid()
end

--- Sets the bounding box for this emitter.  
--- Usually the bounding box is automatically determined by the particles, but this function overrides it.  
--- @param mins GVector @The minimum position of the box
--- @param maxs GVector @The maximum position of the box
function GCLuaEmitter:SetBBox(mins, maxs)
end

--- This function sets the the distance between the render camera and the emitter at which the particles should start fading and at which distance fade ends ( alpha becomes 0 ).  
--- @param distanceMin number @Min distance where the alpha becomes 0.
--- @param distanceMax number @Max distance where the alpha starts fading.
function GCLuaEmitter:SetNearClip(distanceMin, distanceMax)
end

--- Prevents all particles of the emitter from automatically drawing.  
--- @param noDraw boolean @Whether we should draw the particles ( false ) or not ( true )
function GCLuaEmitter:SetNoDraw(noDraw)
end

--- The function name has not much in common with its actual function, it applies a radius to every particles that affects the building of the bounding box, as it, usually is constructed by the particle that has the lowest x, y and z and the highest x, y and z, this function just adds/subtracts the radius and inflates the bounding box.  
--- @param radius number @Particle radius.
function GCLuaEmitter:SetParticleCullRadius(radius)
end

--- Sets the position of the particle emitter.  
--- @param position GVector @New position.
function GCLuaEmitter:SetPos(position)
end

