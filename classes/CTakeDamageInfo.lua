--- @meta

--- @class GCTakeDamageInfo
--- A class used to store and modify all the data concerning a damage event.  
--- An empty CTakeDamageInfo object can be created with Global.DamageInfo  
--- List of hooks that this object is passed to:  
--- * ENTITY:OnTakeDamage  
--- * GM:DoPlayerDeath  
--- * GM:EntityTakeDamage  
--- * GM:PostEntityTakeDamage  
--- * GM:OnDamagedByExplosion  
--- * GM:ScaleNPCDamage  
--- * GM:ScalePlayerDamage  
--- * NEXTBOT:OnInjured  
--- * NEXTBOT:OnKilled  
--- * NEXTBOT:OnOtherKilled  
--- List of functions that use this object:  
--- * util.BlastDamageInfo  
--- * Entity:TakeDamageInfo  
--- * Entity:TakePhysicsDamage  
--- * Entity:DispatchTraceAttack  
local GCTakeDamageInfo = {}
--- Increases the damage by damageIncrease.  
--- @param damageIncrease number @The damage to add.
function GCTakeDamageInfo:AddDamage(damageIncrease)
end

--- Returns the ammo type used by the weapon that inflicted the damage.  
--- @return number @Ammo type ID
function GCTakeDamageInfo:GetAmmoType()
end

--- Returns the attacker ( character who originated the attack ), for example a player or an NPC that shot the weapon.  
--- @return GEntity @The attacker
function GCTakeDamageInfo:GetAttacker()
end

--- Returns the initial unmodified by skill level ( game.GetSkillLevel ) damage.  
--- @return number @baseDamage
function GCTakeDamageInfo:GetBaseDamage()
end

--- Returns the total damage.  
--- @return number @damage
function GCTakeDamageInfo:GetDamage()
end

--- Gets the current bonus damage.  
--- @return number @Bonus damage
function GCTakeDamageInfo:GetDamageBonus()
end

--- Gets the custom damage type. This is used by Day of Defeat: Source and Team Fortress 2 for extended damage info, but isn't used in Garry's Mod by default.  
--- @return number @The custom damage type
function GCTakeDamageInfo:GetDamageCustom()
end

--- Returns a vector representing the damage force.  
--- Can be set with CTakeDamageInfo:SetDamageForce.  
--- @return GVector @The damage force
function GCTakeDamageInfo:GetDamageForce()
end

--- Returns the position where the damage was or is going to be applied to.  
--- Can be set using CTakeDamageInfo:SetDamagePosition.  
--- @return GVector @The damage position
function GCTakeDamageInfo:GetDamagePosition()
end

--- Returns a bitflag which indicates the damage type(s) of the damage.  
--- Consider using CTakeDamageInfo:IsDamageType instead. Value returned by this function can contain multiple damage types.  
--- @return EDMG @Damage type(s), a combination of Enums/DMG
function GCTakeDamageInfo:GetDamageType()
end

--- Returns the inflictor of the damage. This is not necessarily a weapon.  
--- For hitscan weapons this is the weapon.  
--- For projectile weapons this is the projectile.  
--- For a more reliable method of getting the weapon that damaged an entity, use CTakeDamageInfo:GetWeapon or GetAttacker with GetActiveWeapon.  
--- @return GEntity @The inflictor entity.
function GCTakeDamageInfo:GetInflictor()
end

--- Returns the maximum damage. See CTakeDamageInfo:SetMaxDamage  
--- @return number @maxDmg
function GCTakeDamageInfo:GetMaxDamage()
end

--- Returns the initial, unmodified position where the damage occured.  
--- @return GVector @position
function GCTakeDamageInfo:GetReportedPosition()
end

--- Returns the inflicting weapon of the damage event, if there is any.  
--- This is not necessarily a Weapon entity, but it is very likely to be one.  
--- See CTakeDamageInfo:GetInflictor for the actual entity that did the damage.  
--- @return GEntity @The damage-inflicting weapon or NULL.
function GCTakeDamageInfo:GetWeapon()
end

--- Returns true if the damage was caused by a bullet.  
--- @return boolean @isBulletDmg
function GCTakeDamageInfo:IsBulletDamage()
end

--- Returns whenever the damageinfo contains the damage type specified.  
--- @param dmgType EDMG @Damage type to test
--- @return boolean @Whether this damage contains specified damage type or not
function GCTakeDamageInfo:IsDamageType(dmgType)
end

--- Returns whenever the damageinfo contains explosion damage.  
--- @return boolean @isExplDamage
function GCTakeDamageInfo:IsExplosionDamage()
end

--- Returns whenever the damageinfo contains fall damage.  
--- @return boolean @isFallDmg
function GCTakeDamageInfo:IsFallDamage()
end

--- Scales the damage by the given value.  
--- @param scale number @Value to scale the damage with.
function GCTakeDamageInfo:ScaleDamage(scale)
end

--- Changes the ammo type used by the weapon that inflicted the damage.  
--- @param ammoType number @Ammo type ID
function GCTakeDamageInfo:SetAmmoType(ammoType)
end

--- Sets the attacker ( character who originated the attack ) of the damage, for example a player or an NPC.  
--- @param ent GEntity @The entity to be set as the attacker.
function GCTakeDamageInfo:SetAttacker(ent)
end

--- Sets the initial unmodified by skill level ( game.GetSkillLevel ) damage. This function will not update or touch CTakeDamageInfo:GetDamage.  
--- @param arg number @baseDamage
function GCTakeDamageInfo:SetBaseDamage(arg)
end

--- Sets the amount of damage.  
--- @param damage number @The value to set the absolute damage to.
function GCTakeDamageInfo:SetDamage(damage)
end

--- Sets the bonus damage. Bonus damage isn't automatically applied, so this will have no outer effect by default.  
--- @param damage number @The extra damage to be added.
function GCTakeDamageInfo:SetDamageBonus(damage)
end

--- Sets the custom damage type. This is used by Day of Defeat: Source and Team Fortress 2 for extended damage info, but isn't used in Garry's Mod by default.  
--- @param DamageType number @Any integer - can be based on your own custom enums.
function GCTakeDamageInfo:SetDamageCustom(DamageType)
end

--- Sets the directional force of the damage.  
--- ℹ **NOTE**: This function only affects entities using the VPHYSICS movetype. This means players and most NPCs won't receive the force vector you provide as knockback.  
--- If the entity taking damage is using the WALK or STEP movetypes, the damage force is instead automatically calculated. It will push the entity away from the inflictor's Entity:WorldSpaceCenter, scaling the push by a calculated value involving the total amount of damage and the size of the entity. [Source](https://github.com/ValveSoftware/source-sdk-2013/blob/0565403b153dfcde602f6f58d8f4d13483696a13/src/game/server/baseentity.cpp#L1525)  
--- To disable knockback entirely, see [EFL_NO_DAMAGE_FORCES](https://wiki.facepunch.com/gmod/Enums/EFL#EFL_NO_DAMAGE_FORCES) or use the workaround example below.  
--- @param force GVector @The vector to set the force to.
function GCTakeDamageInfo:SetDamageForce(force)
end

--- Sets the position of where the damage gets applied to.  
--- @param pos GVector @The position where the damage will be applied.
function GCTakeDamageInfo:SetDamagePosition(pos)
end

--- Sets the damage type.  
--- @param type EDMG @The damage type, see Enums/DMG.
function GCTakeDamageInfo:SetDamageType(type)
end

--- Sets the inflictor of the damage for example a weapon.  
--- For hitscan/bullet weapons this should the weapon.  
--- For projectile (rocket launchers, grenades, etc) weapons this should be the projectile and CTakeDamageInfo:SetWeapon should be the weapon.  
--- @param inflictor GEntity @The new inflictor.
function GCTakeDamageInfo:SetInflictor(inflictor)
end

--- Sets the maximum damage this damage event can cause.  
--- @param maxDamage number @Maximum damage value.
function GCTakeDamageInfo:SetMaxDamage(maxDamage)
end

--- Sets the origin of the damage.  
--- @param pos GVector @The location of where the damage is originating
function GCTakeDamageInfo:SetReportedPosition(pos)
end

--- Sets the damage-inflicting weapon of the damage event.  
--- This should be a Weapon entity, not a projectile. See also CTakeDamageInfo:SetInflictor.  
--- @param arg GEntity @The damage-inflicting weapon or NULL.
function GCTakeDamageInfo:SetWeapon(arg)
end

--- Subtracts the specified amount from the damage.  
--- @param damage number @Value to subtract.
function GCTakeDamageInfo:SubtractDamage(damage)
end
