--- @meta

--- 1:1 damage. Melee weapons and fall damage typically hit this hitgroup.  
--- This hitgroup is not present on default player models.  
--- It is unknown how this is generated in GM:ScalePlayerDamage, but it occurs when shot by NPCs ( npc_combine_s ) for example.  
_G.HITGROUP_GENERIC = 0
--- Head  
_G.HITGROUP_HEAD = 1
--- Chest  
_G.HITGROUP_CHEST = 2
--- Stomach  
_G.HITGROUP_STOMACH = 3
--- Left arm  
_G.HITGROUP_LEFTARM = 4
--- Right arm  
_G.HITGROUP_RIGHTARM = 5
--- Left leg  
_G.HITGROUP_LEFTLEG = 6
--- Right leg  
_G.HITGROUP_RIGHTLEG = 7
--- Gear. Supposed to be belt area.  
--- This hitgroup is not present on default player models.  
--- Alerts NPC, but doesn't do damage or bleed (1/100th damage)  
_G.HITGROUP_GEAR = 10

--- Enumerations used by GM:ScalePlayerDamage and GM:ScaleNPCDamage and returned by Player:LastHitGroup.  
--- @alias EHITGROUP `HITGROUP_GENERIC`|`HITGROUP_HEAD`|`HITGROUP_CHEST`|`HITGROUP_STOMACH`|`HITGROUP_LEFTARM`|`HITGROUP_RIGHTARM`|`HITGROUP_LEFTLEG`|`HITGROUP_RIGHTLEG`|`HITGROUP_GEAR`
