--- @class GWeapon : GEntity
--- This is a list of all methods only available for weapons. It is also possible to call Entity functions on weapons.  
local GWeapon = {}
--- Returns whether the weapon allows to being switched from when a better ( Weapon:GetWeight ) weapon is being picked up.  
--- @return boolean @Whether the weapon allows to being switched from.
function GWeapon:AllowsAutoSwitchFrom()
end

--- Returns whether the weapon allows to being switched to when a better ( Weapon:GetWeight ) weapon is being picked up.  
--- @return boolean @Whether the weapon allows to being switched to.
function GWeapon:AllowsAutoSwitchTo()
end

--- Calls a SWEP function on client.  
--- @param functionName string @Name of function to call
--- @param arguments string @Arguments for the function, separated by spaces
function GWeapon:CallOnClient(functionName, arguments)
end

--- Returns how much primary ammo is in the magazine.  
--- @return number @The amount of primary ammo in the magazine.
function GWeapon:Clip1()
end

--- Returns how much secondary ammo is in magazine.  
--- @return number @The amount of secondary ammo in the magazine.
function GWeapon:Clip2()
end

--- Forces the weapon to reload while playing given animation.  
--- <note>  
--- This will stop the Weapon:Think function from getting called while the weapon is reloading!  
--- </note>  
--- @param act number @Sequence to use as reload animation
--- @return boolean @Did reloading actually take place
function GWeapon:DefaultReload(act)
end

--- Returns the sequence enumeration number that the weapon is playing.  
--- * **BUG**: [This can return inconsistent results between the server and client.](https://github.com/Facepunch/garrysmod-issues/issues/2543)  
--- @return number @Current activity, see Enums/ACT
function GWeapon:GetActivity()
end

--- Returns the hold type of the weapon.  
--- @return string @The hold type of the weapon
function GWeapon:GetHoldType()
end

--- Returns maximum primary clip size  
--- @return number @Maximum primary clip size
function GWeapon:GetMaxClip1()
end

--- Returns maximum secondary clip size  
--- @return number @Maximum secondary clip size
function GWeapon:GetMaxClip2()
end

--- Gets the next time the weapon can primary fire. ( Can call WEAPON:PrimaryAttack )  
--- @return number @The time, relative to Global.CurTime
function GWeapon:GetNextPrimaryFire()
end

--- Gets the next time the weapon can secondary fire. ( Can call WEAPON:SecondaryAttack )  
--- @return number @The time, relative to Global.CurTime
function GWeapon:GetNextSecondaryFire()
end

--- Gets the primary ammo type of the given weapon.  
--- @return number @The ammo type ID, or -1 if not found.
function GWeapon:GetPrimaryAmmoType()
end

--- Returns the non-internal name of the weapon, that should be for displaying.  
--- @return string @The "nice" name of the weapon.
function GWeapon:GetPrintName()
end

--- Gets the ammo type of the given weapons secondary fire.  
--- @return number @The secondary ammo type ID, or -1 if not found.
function GWeapon:GetSecondaryAmmoType()
end

--- Returns the slot of the weapon (slot numbers start from 0)  
--- @return number @The slot of the weapon
function GWeapon:GetSlot()
end

--- Returns slot position of the weapon  
--- @return number @The slot position of the weapon
function GWeapon:GetSlotPos()
end

--- Returns the view model of the weapon.  
--- @return string @The view model of the weapon.
function GWeapon:GetWeaponViewModel()
end

--- Returns the world model of the weapon.  
--- @return string @The world model of the weapon.
function GWeapon:GetWeaponWorldModel()
end

--- Returns the "weight" of the weapon, which is used when deciding which Weapon is better by the engine.  
--- @return number @The weapon "weight".
function GWeapon:GetWeight()
end

--- Returns whether the weapon has ammo left or not. It will return false when there's no ammo left in the magazine **and** when there's no reserve ammo left.  
--- @return boolean @Whether the weapon has ammo or not.
function GWeapon:HasAmmo()
end

--- Returns whenever the weapon is carried by the local player.  
--- @return boolean @Is the weapon is carried by the local player or not
function GWeapon:IsCarriedByLocalPlayer()
end

--- Checks if the weapon is a SWEP or a built-in weapon.  
--- @return boolean @Returns true if weapon is scripted ( SWEP ), false if not ( A built-in HL2 weapon )
function GWeapon:IsScripted()
end

--- Returns whether the weapon is visible. The term visibility is not exactly what gets checked here, first it checks if the owner is a player, then checks if the active view model has EF_NODRAW flag NOT set.  
--- @return boolean @Is visible or not
function GWeapon:IsWeaponVisible()
end

--- Returns the time since this weapon last fired a bullet with Entity:FireBullets in seconds. It is not networked.  
--- @return number @The time in seconds when the last bullet was fired.
function GWeapon:LastShootTime()
end

--- Forces weapon to play activity/animation.  
--- @param act number @Activity to play
function GWeapon:SendWeaponAnim(act)
end

--- Lets you change the number of bullets in the given weapons primary clip.  
--- @param ammo number @The amount of bullets the clip should contain
function GWeapon:SetClip1(ammo)
end

--- Lets you change the number of bullets in the given weapons secondary clip.  
--- @param ammo number @The amount of bullets the clip should contain
function GWeapon:SetClip2(ammo)
end

--- Sets the hold type of the weapon. This function also calls WEAPON:SetWeaponHoldType and properly networks it to all clients.  
--- <bug>Using this function on weapons held by bots will not network holdtype changes to clients if the world model is set to an empty string (SWEP.WorldModel = "").</bug>  
--- @param name string @Name of the hold type
function GWeapon:SetHoldType(name)
end

--- Sets the time since this weapon last fired in seconds. Used in conjunction with Weapon:LastShootTime  
--- @param time number @The time in seconds when the last time the weapon was fired.
function GWeapon:SetLastShootTime(time)
end

--- Sets when the weapon can fire again. Time should be based on Global.CurTime.  
--- * **BUG**: [This will fire extra bullets if the time is set to less than Global.CurTime.](https://github.com/Facepunch/garrysmod-issues/issues/3786)  
--- @param time number @Time when player should be able to use primary fire again
function GWeapon:SetNextPrimaryFire(time)
end

--- Sets when the weapon can alt-fire again. Time should be based on Global.CurTime.  
--- @param time number @Time when player should be able to use secondary fire again
function GWeapon:SetNextSecondaryFire(time)
end

