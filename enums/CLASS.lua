--- @meta

--- None - default class for entities.  
_G.CLASS_NONE = 0
--- Players  
_G.CLASS_PLAYER = 1
--- HL2 - **Allies**  
--- - `monster_barney`  
--- - `npc_citizen`  
--- - `npc_manhack` ( Hacked )  
--- - `npc_turret_floor` ( Friendly )  
_G.CLASS_PLAYER_ALLY = 2
--- HL2 - **Vital Allies**  
--- - `npc_magnusson`  
--- - `npc_gman`  
--- - `npc_fisherman`  
--- - `npc_eli`  
--- - `npc_barney`  
--- - `npc_kleiner`  
--- - `npc_mossman`  
--- - `npc_alyx`  
--- - `npc_monk`  
--- - `npc_dog`  
--- - `npc_vortigaunt` at the end of EP2 (controlled by `MakeGameEndAlly` input)  
_G.CLASS_PLAYER_ALLY_VITAL = 3
--- HL2 - **Antlions**  
--- - `npc_antlion`  
--- - `npc_antlionguard`  
--- - `npc_antlionguard`  
_G.CLASS_ANTLION = 4
--- HL2 - **Barnacles**  
--- - `npc_barnacle`  
_G.CLASS_BARNACLE = 5
--- HL2 - **Bullseyes**  
--- - `npc_bullseye`  
_G.CLASS_BULLSEYE = 6
--- HL2 - **Passive / Non-Rebel Citizens**  
--- - `npc_citizen` in the beginning of HL2.  
_G.CLASS_CITIZEN_PASSIVE = 7
--- HL2 - ` Unused `  
_G.CLASS_CITIZEN_REBEL = 8
--- HL2 - **Combine Troops**  
--- - `npc_combine`  
--- - `npc_advisor`  
--- - `apc_missile`  
--- - `npc_apcdriver`  
--- - `npc_turret_floor` ( Hostile )  
--- - `npc_rollermine` ( Hostile )  
--- - `npc_turret_ground` ( Active )  
--- - `npc_turret_ceiling` ( Active )  
--- - `npc_strider` ( Active - Not being carried by the gunship )  
_G.CLASS_COMBINE = 9
--- HL2 - **Combine Aircrafts**  
--- - `npc_combinegunship`  
--- - `npc_combinedropship`  
--- - `npc_helicopter`  
_G.CLASS_COMBINE_GUNSHIP = 10
--- HL2 - ` Unused `  
_G.CLASS_CONSCRIPT = 11
--- HL2 - **Headcrabs**  
--- - `npc_headcrab` ( Visible )  
_G.CLASS_HEADCRAB = 12
--- HL2 - **Manhacks**  
--- - `npc_manhack` ( Hostile - Not held by the gravity gun )  
_G.CLASS_MANHACK = 13
--- HL2 - **Metro Police**  
--- - `npc_metropolice`  
--- - `npc_vehicledriver`  
_G.CLASS_METROPOLICE = 14
--- HL2 - **Combine Military Objects**  
--- - `func_guntarget`  
--- - `npc_spotlight`  
--- - `npc_combine_camera` ( Active )  
_G.CLASS_MILITARY = 15
--- HL2 - **Combine Scanners**  
--- - `npc_cscanner`  
--- - `npc_clawscanner`  
_G.CLASS_SCANNER = 16
--- HL2 - **Stalkers**  
--- - `npc_stalker`  
_G.CLASS_STALKER = 17
--- HL2 - **Vortigaunts**  
--- - `npc_vortigaunt` before the end of EP2 ( Controlled by `MakeGameEndAlly` input )  
_G.CLASS_VORTIGAUNT = 18
--- HL2 - **Zombies**  
--- - `npc_zombie` ( Unslumped )  
--- - `npc_poisonzombie`  
--- - `npc_fastzombie`  
--- - `npc_fastzombie_torso`  
--- - `npc_zombine`  
_G.CLASS_ZOMBIE = 19
--- HL2 - **Snipers**  
--- - `npc_sniper`  
--- - `proto_sniper`  
_G.CLASS_PROTOSNIPER = 20
--- HL2 - **Missiles**  
--- - `rpg_missile`  
--- - `apc_missile`  
--- - `grenade_pathfollower`  
_G.CLASS_MISSILE = 21
--- HL2 - **Flares**  
--- - `env_flare`  
_G.CLASS_FLARE = 22
--- HL2 - **Animals**  
--- - `npc_crow`  
--- - `npc_seagull`  
--- - `npc_pigeon`  
_G.CLASS_EARTH_FAUNA = 23
--- HL2 - **Friendly Rollermines**  
--- - `npc_rollermine` ( Hacked )  
_G.CLASS_HACKED_ROLLERMINE = 24
--- HL2 - **Hunters**  
--- - `npc_hunter`  
_G.CLASS_COMBINE_HUNTER = 25
--- HL:S - **Turrets**  
--- - `monster_turret`  
--- - `monster_miniturret`  
--- - `monster_sentry`  
_G.CLASS_MACHINE = 26
--- HL:S - **Friendly Humans**  
--- - `monster_scientist`  
_G.CLASS_HUMAN_PASSIVE = 27
--- HL:S - **Human Military**  
--- - `monster_human_grunt`  
--- - `monster_apache`  
_G.CLASS_HUMAN_MILITARY = 28
--- HL:S - **Alien Military**  
--- - `monster_alien_controller`  
--- - `monster_vortigaunt`  
--- - `monster_alien_grunt`  
--- - `monster_nihilanth`  
--- - `monster_snark` if it has an enemy of class   
---  `CLASS_PLAYER` , `CLASS_HUMAN_PASSIVE` or `CLASS_HUMAN_MILITARY`  
_G.CLASS_ALIEN_MILITARY = 29
--- HL:S - **Monsters**  
--- - `monster_tentacle`  
--- - `monster_barnacle`  
--- - `monster_zombie`  
--- - `monster_gargantua`  
--- - `monster_houndeye`  
--- - `monster_ichthyosaur`  
--- - `monster_bigmomma`  
_G.CLASS_ALIEN_MONSTER = 30
--- HL:S - **Headcrabs**  
--- - `monster_headcrab`  
_G.CLASS_ALIEN_PREY = 31
--- HL:S - **Alien Predators**  
--- - `monster_bullsquid`  
--- - `xen_tree`  
--- - `xen_hull`  
_G.CLASS_ALIEN_PREDATOR = 32
--- HL:S - **Insects**  
--- - `montser_roach`  
--- - `monster_leech`  
_G.CLASS_INSECT = 33
--- HL:S - **Player Bioweapons**  
--- - `hornet` fired by a player  
_G.CLASS_PLAYER_BIOWEAPON = 34
--- HL:S - **Enemy Bioweapons**  
--- - `hornet` fired by anyone but a player  
--- - `monster_snark` with no enemy or an enemy without the class   
---  `CLASS_PLAYER` , `CLASS_HUMAN_PASSIVE` or `CLASS_HUMAN_MILITARY`  
_G.CLASS_ALIEN_BIOWEAPON = 35
--- Portal - **Portal rocket and normal turrets, and the camera**  
--- * `npc_portal_turret_floor`  
--- * `npc_rocket_turret`  
--- * `npc_security_camera`  
_G.CLASS_PORTAL_TURRET = 36

--- Enumerations used by NPC:Classify.  
--- @alias ECLASS `CLASS_NONE`|`CLASS_PLAYER`|`CLASS_PLAYER_ALLY`|`CLASS_PLAYER_ALLY_VITAL`|`CLASS_ANTLION`|`CLASS_BARNACLE`|`CLASS_BULLSEYE`|`CLASS_CITIZEN_PASSIVE`|`CLASS_CITIZEN_REBEL`|`CLASS_COMBINE`|`CLASS_COMBINE_GUNSHIP`|`CLASS_CONSCRIPT`|`CLASS_HEADCRAB`|`CLASS_MANHACK`|`CLASS_METROPOLICE`|`CLASS_MILITARY`|`CLASS_SCANNER`|`CLASS_STALKER`|`CLASS_VORTIGAUNT`|`CLASS_ZOMBIE`|`CLASS_PROTOSNIPER`|`CLASS_MISSILE`|`CLASS_FLARE`|`CLASS_EARTH_FAUNA`|`CLASS_HACKED_ROLLERMINE`|`CLASS_COMBINE_HUNTER`|`CLASS_MACHINE`|`CLASS_HUMAN_PASSIVE`|`CLASS_HUMAN_MILITARY`|`CLASS_ALIEN_MILITARY`|`CLASS_ALIEN_MONSTER`|`CLASS_ALIEN_PREY`|`CLASS_ALIEN_PREDATOR`|`CLASS_INSECT`|`CLASS_PLAYER_BIOWEAPON`|`CLASS_ALIEN_BIOWEAPON`|`CLASS_PORTAL_TURRET`
