--- @meta

--- Generic damage (used by weapon_fists)  
_G.DMG_GENERIC = 0
--- Caused by physics interaction and ignored by airboat drivers. This is used by the Rollermine and an unused animation attack called 'Fireattack' by the Antlion Guard [ACT_RANGE_ATTACK1](https://wiki.facepunch.com/gmod/Enums/ACT)  
_G.DMG_CRUSH = 1
--- Bullet damage from Ceiling Turrets, the Strider, Turrets and most guns.  
_G.DMG_BULLET = 2
--- Used by the Stunstick, Manhacks, Antlions, Antlion Guards, Headcrabs, Fast Headcrabs, all Zombies types, Hunter, and potentially other NPCs attacks  
_G.DMG_SLASH = 4
--- Damage from fire  
_G.DMG_BURN = 8
--- Hit by a vehicle (This will need to be set for passengers of some vehicle to receive damage)  
_G.DMG_VEHICLE = 16
--- Fall damage  
_G.DMG_FALL = 32
--- Explosion damage like grenades, helicopter bombs, combine mines, Will be ignored by most vehicle passengers.  
_G.DMG_BLAST = 64
--- Blunt attacks such as from the Crowbar, Antlion Guard & Hunter  
_G.DMG_CLUB = 128
--- Electrical damage, shows smoke at the damage position and its used by Stalkers & Vortigaunts  
_G.DMG_SHOCK = 256
--- Sonic damage, used by the Gargantua and Houndeye NPCs  
_G.DMG_SONIC = 512
--- Laser damage  
_G.DMG_ENERGYBEAM = 1024
--- Prevent a physics force.  
_G.DMG_PREVENT_PHYSICS_FORCE = 2048
--- Crossbow damage, never creates gibs.  
_G.DMG_NEVERGIB = 4096
--- Always create gibs  
_G.DMG_ALWAYSGIB = 8192
--- Drown damage  
_G.DMG_DROWN = 16384
--- Same as DMG_POISON  
_G.DMG_PARALYZE = 32768
--- Neurotoxin damage  
_G.DMG_NERVEGAS = 65536
--- Poison damage used by Antlion Workers & Poison Headcrabs.  
_G.DMG_POISON = 131072
--- Radiation damage & it will be ignored by most vehicle passengers  
_G.DMG_RADIATION = 262144
--- Damage applied to the player to restore health after drowning  
_G.DMG_DROWNRECOVER = 524288
--- Toxic chemical or acid burn damage used by the Antlion Workers  
_G.DMG_ACID = 1048576
--- In an oven  
_G.DMG_SLOWBURN = 2097152
--- Don't create a ragdoll on death  
_G.DMG_REMOVENORAGDOLL = 4194304
--- Damage done by the gravity gun.  
_G.DMG_PHYSGUN = 8388608
--- Plasma damage  
_G.DMG_PLASMA = 16777216
--- Airboat gun damage  
_G.DMG_AIRBOAT = 33554432
--- Forces the entity to dissolve on death. This is what the combine ball uses when it hits a target.  
_G.DMG_DISSOLVE = 67108864
--- This won't hurt the player underwater  
_G.DMG_BLAST_SURFACE = 134217728
--- Direct damage to the entity that does not go through any damage value modifications  
_G.DMG_DIRECT = 268435456
--- The pellets fired from a shotgun  
_G.DMG_BUCKSHOT = 536870912
--- Damage from SniperRound/SniperPenetratedRound ammo types  
_G.DMG_SNIPER = 1073741824
--- Damage from npc_missiledefense, npc_combinegunship, or monster_mortar  
_G.DMG_MISSILEDEFENSE = 2147483648

--- Enumerations used by CTakeDamageInfo:GetDamageType, CTakeDamageInfo:SetDamageType and CTakeDamageInfo:IsDamageType.  
--- This enumeration is a bit field/bitflag, which means that you can combine multiple damage types using the bit library. You can use bit.band to test if a specific damage type is set.  
--- @alias EDMG `DMG_GENERIC`|`DMG_CRUSH`|`DMG_BULLET`|`DMG_SLASH`|`DMG_BURN`|`DMG_VEHICLE`|`DMG_FALL`|`DMG_BLAST`|`DMG_CLUB`|`DMG_SHOCK`|`DMG_SONIC`|`DMG_ENERGYBEAM`|`DMG_PREVENT_PHYSICS_FORCE`|`DMG_NEVERGIB`|`DMG_ALWAYSGIB`|`DMG_DROWN`|`DMG_PARALYZE`|`DMG_NERVEGAS`|`DMG_POISON`|`DMG_RADIATION`|`DMG_DROWNRECOVER`|`DMG_ACID`|`DMG_SLOWBURN`|`DMG_REMOVENORAGDOLL`|`DMG_PHYSGUN`|`DMG_PLASMA`|`DMG_AIRBOAT`|`DMG_DISSOLVE`|`DMG_BLAST_SURFACE`|`DMG_DIRECT`|`DMG_BUCKSHOT`|`DMG_SNIPER`|`DMG_MISSILEDEFENSE`
