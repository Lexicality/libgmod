--- @meta

--- Forces player to drop the object they are carrying if the object was hit by this ammo type.  
_G.AMMO_FORCE_DROP_IF_CARRIED = 1
--- Uses AmmoData.plydmg of the ammo type as the damage to deal to shot players instead of Bullet.Damage.  
_G.AMMO_INTERPRET_PLRDAMAGE_AS_DAMAGE_TO_PLAYER = 2

--- Used by game.AddAmmoType's input structure - the Structures/AmmoData.  
--- ⚠ **WARNING**: These enumerations do not exist in game and are listed here only for reference  
--- @alias EAMMO `AMMO_FORCE_DROP_IF_CARRIED`|`AMMO_INTERPRET_PLRDAMAGE_AS_DAMAGE_TO_PLAYER`
