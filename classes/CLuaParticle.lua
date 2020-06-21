--- @class GCLuaParticle
--- List of all possible functions available for Lua particles. This is the object returned by the CLuaEmitter:Add function.  
local GCLuaParticle = {}
--- Returns the air resistance of the particle.  
--- @return number @The air resistance of the particle
function GCLuaParticle:GetAirResistance()
end

--- Returns the angular velocity of the particle  
--- @return GAngle @The angular velocity of the particle
function GCLuaParticle:GetAngleVelocity()
end

--- Returns the current orientation of the particle.  
--- @return GAngle @The angles of the particle
function GCLuaParticle:GetAngles()
end

--- Returns the 'bounciness' of the particle.  
--- @return number @The 'bounciness' of the particle
function GCLuaParticle:GetBounce()
end

--- Returns the color of the particle.  
--- @return number, number, number
function GCLuaParticle:GetColor()
end

--- Returns the amount of time in seconds after which the particle will be destroyed.  
--- @return number @The amount of time in seconds after which the particle will be destroyed
function GCLuaParticle:GetDieTime()
end

--- Returns the alpha value that the particle will reach on its death.  
--- @return number @The alpha value the particle will fade to
function GCLuaParticle:GetEndAlpha()
end

--- Returns the length that the particle will reach on its death.  
--- @return number @The length the particle will reach
function GCLuaParticle:GetEndLength()
end

--- Returns the size that the particle will reach on its death.  
--- @return number @The size the particle will reach
function GCLuaParticle:GetEndSize()
end

--- Returns the gravity of the particle.  
--- @return GVector @The gravity of the particle.
function GCLuaParticle:GetGravity()
end

--- Returns the 'life time' of the particle, how long the particle existed since its creation.  
--- This value will always be between 0 and CLuaParticle:GetDieTime.  
--- It changes automatically as time goes.  
--- It can be manipulated using CLuaParticle:SetLifeTime.  
--- If the life time of the particle will be more than CLuaParticle:GetDieTime, it will be removed.  
--- @return number @How long the particle existed, in seconds.
function GCLuaParticle:GetLifeTime()
end

--- Returns the current material of the particle.  
--- @return GIMaterial @The material.
function GCLuaParticle:GetMaterial()
end

--- Returns the absolute position of the particle.  
--- @return GVector @The absolute position of the particle.
function GCLuaParticle:GetPos()
end

--- Returns the current rotation of the particle in radians, this should only be used for 2D particles.  
--- @return number @The current rotation of the particle in radians
function GCLuaParticle:GetRoll()
end

--- Returns the current rotation speed of the particle in radians, this should only be used for 2D particles.  
--- @return number @The current rotation speed of the particle in radians
function GCLuaParticle:GetRollDelta()
end

--- Returns the alpha value which the particle has when it's created.  
--- @return number @The alpha value which the particle has when it's created.
function GCLuaParticle:GetStartAlpha()
end

--- Returns the length which the particle has when it's created.  
--- @return number @The length which the particle has when it's created.
function GCLuaParticle:GetStartLength()
end

--- Returns the size which the particle has when it's created.  
--- @return number @The size which the particle has when it's created.
function GCLuaParticle:GetStartSize()
end

--- Returns the current velocity of the particle.  
--- @return GVector @The current velocity of the particle.
function GCLuaParticle:GetVelocity()
end

--- Sets the air resistance of the the particle.  
--- @param airResistance number @New air resistance.
function GCLuaParticle:SetAirResistance(airResistance)
end

--- Sets the angular velocity of the the particle.  
--- @param angVel GAngle @New angular velocity.
function GCLuaParticle:SetAngleVelocity(angVel)
end

--- Sets the angles of the particle.  
--- @param ang GAngle @New angle.
function GCLuaParticle:SetAngles(ang)
end

--- Sets the 'bounciness' of the the particle.  
--- @param bounce number @New 'bounciness' of the particle
function GCLuaParticle:SetBounce(bounce)
end

--- Sets the whether the particle should collide with the world or not.  
--- @param shouldCollide boolean @Whether the particle should collide with the world or not
function GCLuaParticle:SetCollide(shouldCollide)
end

--- Sets the function that gets called whenever the particle collides with the world.  
--- @param collideFunc function @Collide callback, the arguments are:
function GCLuaParticle:SetCollideCallback(collideFunc)
end

--- Sets the color of the particle.  
--- @param r number @The red component.
--- @param g number @The green component.
--- @param b number @The blue component.
function GCLuaParticle:SetColor(r, g, b)
end

--- Sets the time where the particle will be removed.  
--- @param dieTime number @The new die time.
function GCLuaParticle:SetDieTime(dieTime)
end

--- Sets the alpha value of the particle that it will reach when it dies.  
--- @param endAlpha number @The new alpha value of the particle that it will reach when it dies.
function GCLuaParticle:SetEndAlpha(endAlpha)
end

--- Sets the length of the particle that it will reach when it dies.  
--- @param endLength number @The new length of the particle that it will reach when it dies.
function GCLuaParticle:SetEndLength(endLength)
end

--- Sets the size of the particle that it will reach when it dies.  
--- @param endSize number @The new size of the particle that it will reach when it dies.
function GCLuaParticle:SetEndSize(endSize)
end

--- Sets the directional gravity aka. acceleration of the particle.  
--- @param gravity GVector @The directional gravity.
function GCLuaParticle:SetGravity(gravity)
end

--- Sets the 'life time' of the particle, how long the particle existed since its creation.  
--- This value should always be between 0 and CLuaParticle:GetDieTime.  
--- It changes automatically as time goes.  
--- If the life time of the particle will be more than CLuaParticle:GetDieTime, it will be removed.  
--- @param lifeTime number @The new life time of the particle.
function GCLuaParticle:SetLifeTime(lifeTime)
end

--- Sets whether the particle should be lighted.  
--- @param useLighting boolean @Whether the particle should be lighted.
function GCLuaParticle:SetLighting(useLighting)
end

--- Sets the material of the particle.  
--- @param mat GIMaterial @The new material to set
function GCLuaParticle:SetMaterial(mat)
end

--- Sets when the particles think function should be called next, this uses the synchronized server time returned by Global.CurTime.  
--- @param nextThink number @Next think time.
function GCLuaParticle:SetNextThink(nextThink)
end

--- Sets the absolute position of the particle.  
--- @param pos GVector @The new particle position.
function GCLuaParticle:SetPos(pos)
end

--- Sets the roll of the particle in radians. This should only be used for 2D particles.  
--- @param roll number @The new rotation of the particle in radians.
function GCLuaParticle:SetRoll(roll)
end

--- Sets the rotation speed of the particle in radians. This should only be used for 2D particles.  
--- @param rollDelta number @The new rotation speed of the particle in radians.
function GCLuaParticle:SetRollDelta(rollDelta)
end

--- Sets the initial alpha value of the particle.  
--- @param startAlpha number @Initial alpha.
function GCLuaParticle:SetStartAlpha(startAlpha)
end

--- Sets the initial length value of the particle.  
--- @param startLength number @Initial length.
function GCLuaParticle:SetStartLength(startLength)
end

--- Sets the initial size value of the particle.  
--- @param startSize number @Initial size.
function GCLuaParticle:SetStartSize(startSize)
end

--- Sets the think function of the particle.  
--- @param thinkFunc function @Think function
function GCLuaParticle:SetThinkFunction(thinkFunc)
end

--- Sets the velocity of the particle.  
--- @param vel GVector @The new velocity of the particle.
function GCLuaParticle:SetVelocity(vel)
end

--- Scales the velocity based on the particle speed.  
--- @param doScale boolean @Use velocity scaling.
function GCLuaParticle:SetVelocityScale(doScale)
end

