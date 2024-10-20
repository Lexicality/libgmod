--- @meta

--- @class GCEffectData
--- List of all possible functions available for effect data. This is the object returned by the EffectData function and is required for util.Effect function.  
local GCEffectData = {}
--- Returns the angles of the effect.  
--- @return GAngle @The angles of the effect
function GCEffectData:GetAngles()
end

--- Returns the attachment ID for the effect.  
--- @return number @The attachment ID of the effect.
function GCEffectData:GetAttachment()
end

--- Returns byte which represents the color of the effect.  
--- @return number @The color of the effect
function GCEffectData:GetColor()
end

--- Returns the damage type of the effect  
--- @return number @Damage type of the effect, see Enums/DMG
function GCEffectData:GetDamageType()
end

--- Returns the entity index of the entity set for the effect.  
--- @return number @The entity index of the entity set for the effect.
function GCEffectData:GetEntIndex()
end

--- Returns the entity assigned to the effect.  
--- @return GEntity @The entity assigned to the effect
function GCEffectData:GetEntity()
end

--- Returns the flags of the effect.  
--- @return number @The flags of the effect.
function GCEffectData:GetFlags()
end

--- Returns the hit box ID of the effect.  
--- @return number @The hit box ID of the effect.
function GCEffectData:GetHitBox()
end

--- Returns the magnitude of the effect.  
--- @return number @The magnitude of the effect.
function GCEffectData:GetMagnitude()
end

--- Returns the material ID of the effect.  
--- @return number @The material ID of the effect.
function GCEffectData:GetMaterialIndex()
end

--- Returns the normalized direction vector of the effect.  
--- @return GVector @The normalized direction vector of the effect.
function GCEffectData:GetNormal()
end

--- Returns the origin position of the effect.  
--- @return GVector @The origin position of the effect.
function GCEffectData:GetOrigin()
end

--- Returns the radius of the effect.  
--- @return number @The radius of the effect.
function GCEffectData:GetRadius()
end

--- Returns the scale of the effect.  
--- @return number @The scale of the effect
function GCEffectData:GetScale()
end

--- Returns the start position of the effect.  
--- @return GVector @The start position of the effect
function GCEffectData:GetStart()
end

--- Returns the surface property index of the effect.  
--- @return number @The surface property index of the effect
function GCEffectData:GetSurfaceProp()
end

--- Sets the angles of the effect.  
--- @param ang GAngle @The new angles to be set.
function GCEffectData:SetAngles(ang)
end

--- Sets the attachment id of the effect to be created with this effect data.  
--- ℹ **NOTE**: This is internally stored as an integer, but only the first 5 bits will be networked, effectively limiting this function to 0-31 range.  
--- @param attachment number @New attachment ID of the effect.
function GCEffectData:SetAttachment(attachment)
end

--- Sets the "color" of the effect.  
--- All this does is provide an addition 8 bits of data for the effect to use. What this will actually do will vary from effect to effect, depending on how a specific effect uses this given data, if at all.  
--- ℹ **NOTE**: Internally stored as an integer, but only first 8 bits are networked, effectively limiting this function to 0-255 range.  
--- @param color number @Color represented by a byte.
function GCEffectData:SetColor(color)
end

--- Sets the damage type of the effect to be created with this effect data.  
--- @param damageType number @Damage type, see Enums/DMG.
function GCEffectData:SetDamageType(damageType)
end

--- Sets the entity of the effect via its index.  
--- @param entIndex number @The entity index to be set.
function GCEffectData:SetEntIndex(entIndex)
end

--- Sets the entity of the effect to be created with this effect data.  
--- @param entity GEntity @Entity of the effect, mostly used for parenting.
function GCEffectData:SetEntity(entity)
end

--- Sets the flags of the effect. Can be used to change the appearance of a MuzzleFlash effect.  
--- ## Example values for MuzzleFlash effect  
--- Flags |  Description |  
--- ------|--------------|  
--- 1 | Regular muzzleflash|  
--- 5 | Combine muzzleflash|  
--- 7 | Regular muzzle but bigger|  
--- ℹ **NOTE**: Internally stored as an integer, but only first 8 bits are networked, effectively limiting this function to `0-255` range.  
--- @param flags number @The flags of the effect
function GCEffectData:SetFlags(flags)
end

--- Sets the hit box index of the effect.  
--- ℹ **NOTE**: Internally stored as an integer, but only first 11 bits are networked, effectively limiting this function to 0-2047 range.  
--- @param hitBoxIndex number @The hit box index of the effect.
function GCEffectData:SetHitBox(hitBoxIndex)
end

--- Sets the magnitude of the effect.  
--- ℹ **NOTE**: Internally stored as a float with 12 bit precision for networking purposes, limited to range of 0-1023.  
--- @param magnitude number @The magnitude of the effect.
function GCEffectData:SetMagnitude(magnitude)
end

--- Sets the material index of the effect.  
--- ℹ **NOTE**: Internally stored as an integer, but only first 12 bits are networked, effectively limiting this function to 0-4095 range.  
--- @param materialIndex number @The material index of the effect.
function GCEffectData:SetMaterialIndex(materialIndex)
end

--- Sets the normalized (length=1) direction vector of the effect to be created with this effect data. This **must** be a normalized vector for networking purposes.  
--- @param normal GVector @The normalized direction vector of the effect.
function GCEffectData:SetNormal(normal)
end

--- Sets the origin of the effect to be created with this effect data.  
--- ℹ **NOTE**: Limited to world bounds (+-16386 on every axis) and has horrible networking precision. (17 bit float per component)  
--- @param origin GVector @Origin of the effect.
function GCEffectData:SetOrigin(origin)
end

--- Sets the radius of the effect to be created with this effect data.  
--- ℹ **NOTE**: Internally stored as a float, but networked as a 10bit float, and is clamped to 0-1023 range.  
--- @param radius number @Radius of the effect.
function GCEffectData:SetRadius(radius)
end

--- Sets the scale of the effect to be created with this effect data.  
--- @param scale number @Scale of the effect.
function GCEffectData:SetScale(scale)
end

--- Sets the start of the effect to be created with this effect data.  
--- ℹ **NOTE**: Limited to world bounds (+-16386 on every axis) and has horrible networking precision. (17 bit float per component)  
--- @param start GVector @Start of the effect.
function GCEffectData:SetStart(start)
end

--- Sets the surface property index of the effect.  
--- ℹ **NOTE**: Internally stored as an integer, but only first 8 bits are networked, effectively limiting this function to `-1`-`254` range.(yes, that's not a mistake)  
--- @param surfaceProperties number @The surface property index of the effect.
function GCEffectData:SetSurfaceProp(surfaceProperties)
end

