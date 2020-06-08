--- Generic damage (used by weapon_fists)
DMG_GENERIC = 0
--- Caused by physics interaction and ignored by airboat drivers. This is used by the Rollermine and an unused animation attack called 'Fireattack' by the Antlion Guard ACT_RANGE_ATTACK1 4202501 is the same DMG type as 1 but has a different value and its only used by the Barnacle when it kills an NPC 8197 is the same DMG type as 1 but has a different value and its only used by the Barnacle when its hurting a player
DMG_CRUSH = 1
--- Bullet damage from Ceiling Turrets, the Strider, Turrets and most guns 4098 is the same DMG type as 2 but has a different value and its only used by the Helicopter & Gunship
DMG_BULLET = 2
--- Used by the Stunstick, Manhacks, Antlions, Antlion Guards, Headcrabs, Fast Headcrabs, all Zombies types, Hunter, and potentially other NPCs attacks
DMG_SLASH = 4
--- Damage from fire
DMG_BURN = 8
--- Hit by a vehicle (This will need to be set for passengers of some vehicle to receive damage)
DMG_VEHICLE = 16
--- Fall damage
DMG_FALL = 32
--- Explosion damage like grenades, helicopter bombs, combine mines, Will be ignored by most vehicle passengers 134217792 is the same as 64 but has a different value and its used by the Explosive Oil Drum
DMG_BLAST = 64
--- Blunt attacks such as from the Crowbar, Antlion Guard & Hunter
DMG_CLUB = 128
--- Electrical damage, shows smoke at the damage position and its used by Stalkers & Vortigaunts
DMG_SHOCK = 256
--- Sonic damage, used by the Gargantua and Houndeye NPCs
DMG_SONIC = 512
--- Laser damage
DMG_ENERGYBEAM = 1024
--- Prevent a physics force 4196352 is the same as 2048 but has a different value and its only used by the Hunter when it kills a player via the flechettes
DMG_PREVENT_PHYSICS_FORCE = 2048
--- Crossbow damage, never creates gibs 67112960 is the same as 4096 but has a different value and its used by the Hunter's flechettes when initial contact is made to the entity
DMG_NEVERGIB = 4096
--- Always create gibs
DMG_ALWAYSGIB = 8192
--- Drown damage
DMG_DROWN = 16384
--- Same as DMG_POISON
DMG_PARALYZE = 32768
--- Neurotoxin damage
DMG_NERVEGAS = 65536
--- Poison damage used by Antlion Workers & Poison Headcrabs 134348800 is the same as 131072 but has a different value and its only used by the Antlion Worker's death damage
DMG_POISON = 131072
--- Radiation damage & it will be ignored by most vehicle passengers
DMG_RADIATION = 262144
--- Damage applied to the player to restore health after drowning
DMG_DROWNRECOVER = 524288
--- Toxic chemical or acid burn damage used by the Antlion Workers
DMG_ACID = 1048576
--- In an oven
DMG_SLOWBURN = 2097152
--- Don't create a ragdoll on death
DMG_REMOVENORAGDOLL = 4194304
--- Damage done by the gravity gun 8388609 is the same as 8388608 but has a different value and its damage done by the gravity gun to NPCs
DMG_PHYSGUN = 8388608
--- Plasma damage
DMG_PLASMA = 16777216
--- Airboat gun damage
DMG_AIRBOAT = 33554432
--- Forces the entity to dissolve on death. This is what the combine ball uses when it hits a target 67108865 is the same as 67108864 but has a different value and its when an npc dies to a combine ball 67110912 is the same as 67108864 but has a different value and its used by the Hunter's flechettes when they explode
DMG_DISSOLVE = 67108864
--- This won't hurt the player underwater
DMG_BLAST_SURFACE = 134217728
--- Direct damage to the entity that does not go through any damage value modifications
DMG_DIRECT = 268435456
--- The pellets fired from a shotgun
DMG_BUCKSHOT = 536870912
--- Damage from SniperRound/SniperPenetratedRound ammo types
DMG_SNIPER = 1073741824
--- Damage from npc_missiledefense, npc_combinegunship, or monster_mortar
DMG_MISSILEDEFENSE = 2147483648

--- 1:1 damage. Melee weapons and fall damage typically hit this hitgroup. This hitgroup is not present on default player models. It is unknown how this is generated in GM:ScalePlayerDamage, but it occurs when shot by NPCs ( npc_combine_s ) for example.
HITGROUP_GENERIC = 0
--- Head
HITGROUP_HEAD = 1
--- Chest
HITGROUP_CHEST = 2
--- Stomach
HITGROUP_STOMACH = 3
--- Left arm
HITGROUP_LEFTARM = 4
--- Right arm
HITGROUP_RIGHTARM = 5
--- Left leg
HITGROUP_LEFTLEG = 6
--- Right leg
HITGROUP_RIGHTLEG = 7
--- Gear. Supposed to be belt area. This hitgroup is not present on default player models.
HITGROUP_GEAR = 10

--- Generates no tracer effects
TRACER_NONE = 0
--- Generates tracer effects
TRACER_LINE = 1
--- Unused.
TRACER_RAIL = 2
--- Unused.
TRACER_BEAM = 3
--- Generates tracer and makes whizzing noises if the bullet flies past the player being shot at
TRACER_LINE_AND_WHIZ = 4
