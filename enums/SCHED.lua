--- @meta

--- The schedule enum limit  
_G.LAST_SHARED_SCHEDULE = 88
--- Begins AI script based on NPC's `m_hCine` save value.  
_G.SCHED_AISCRIPT = 56
--- Idle stance and face ideal yaw angles.  
_G.SCHED_ALERT_FACE = 5
_G.SCHED_ALERT_FACE_BESTSOUND = 6
_G.SCHED_ALERT_REACT_TO_COMBAT_SOUND = 7
--- Rotate 180 degrees and back to check for enemies.  
_G.SCHED_ALERT_SCAN = 8
--- Remain idle until an enemy is heard or found.  
_G.SCHED_ALERT_STAND = 9
--- Walk until an enemy is heard or found.  
_G.SCHED_ALERT_WALK = 10
--- Remain idle until provoked or an enemy is found.  
_G.SCHED_AMBUSH = 52
--- Performs ACT_ARM.  
_G.SCHED_ARM_WEAPON = 48
--- Back away from enemy. If not possible to back away then go behind enemy.  
_G.SCHED_BACK_AWAY_FROM_ENEMY = 24
--- Requires valid enemy, backs away from SaveValue: m_vSavePosition  
_G.SCHED_BACK_AWAY_FROM_SAVE_POSITION = 26
--- Heavy damage was taken for the first time in a while.  
_G.SCHED_BIG_FLINCH = 23
--- Begin chasing an enemy.  
_G.SCHED_CHASE_ENEMY = 17
--- Failed to chase enemy.  
_G.SCHED_CHASE_ENEMY_FAILED = 18
--- Face current enemy.  
_G.SCHED_COMBAT_FACE = 12
--- Will walk around patrolling an area until an enemy is found.  
_G.SCHED_COMBAT_PATROL = 75
_G.SCHED_COMBAT_STAND = 15
_G.SCHED_COMBAT_SWEEP = 13
_G.SCHED_COMBAT_WALK = 16
--- When not moving, will perform ACT_COWER.  
_G.SCHED_COWER = 40
--- Regular NPC death.  
_G.SCHED_DIE = 53
--- Plays NPC death sound (doesn't kill NPC).  
_G.SCHED_DIE_RAGDOLL = 54
--- Holsters active weapon. (Only works with NPC's that can holster weapons)  
_G.SCHED_DISARM_WEAPON = 49
_G.SCHED_DROPSHIP_DUSTOFF = 79
--- Preform Ducking animation. (Only works with npc_alyx)  
_G.SCHED_DUCK_DODGE = 84
--- Search for a place to shoot current enemy.  
_G.SCHED_ESTABLISH_LINE_OF_FIRE = 35
--- Fallback from an established line of fire.  
_G.SCHED_ESTABLISH_LINE_OF_FIRE_FALLBACK = 36
--- Failed doing current schedule.  
_G.SCHED_FAIL = 81
--- Failed to establish a line of fire.  
_G.SCHED_FAIL_ESTABLISH_LINE_OF_FIRE = 38
_G.SCHED_FAIL_NOSTOP = 82
--- Failed to take cover.  
_G.SCHED_FAIL_TAKE_COVER = 31
--- Fall to ground when in the air.  
_G.SCHED_FALL_TO_GROUND = 78
--- Will express fear face. (Only works on NPCs with expressions)  
_G.SCHED_FEAR_FACE = 14
_G.SCHED_FLEE_FROM_BEST_SOUND = 29
--- Plays ACT_FLINCH_PHYSICS.  
_G.SCHED_FLINCH_PHYSICS = 80
--- Force walk to SaveValue: m_vecLastPosition (debug).  
_G.SCHED_FORCED_GO = 71
--- Force run to SaveValue: m_vecLastPosition (debug).  
_G.SCHED_FORCED_GO_RUN = 72
--- Pick up item if within a radius of 5 units.  
_G.SCHED_GET_HEALTHKIT = 66
--- Take cover and reload weapon.  
_G.SCHED_HIDE_AND_RELOAD = 50
--- Idle stance  
_G.SCHED_IDLE_STAND = 1
--- Walk to position.  
_G.SCHED_IDLE_WALK = 2
--- Walk to random position within a radius of 200 units.  
_G.SCHED_IDLE_WANDER = 3
_G.SCHED_INTERACTION_MOVE_TO_PARTNER = 85
_G.SCHED_INTERACTION_WAIT_FOR_PARTNER = 86
_G.SCHED_INVESTIGATE_SOUND = 11
_G.SCHED_MELEE_ATTACK1 = 41
_G.SCHED_MELEE_ATTACK2 = 42
--- Move away from player.  
_G.SCHED_MOVE_AWAY = 68
--- Stop moving and continue enemy scan.  
_G.SCHED_MOVE_AWAY_END = 70
--- Failed to move away; stop moving.  
_G.SCHED_MOVE_AWAY_FAIL = 69
--- Move away from enemy while facing it and checking for new enemies.  
_G.SCHED_MOVE_AWAY_FROM_ENEMY = 25
--- Move to the range the weapon is preferably used at.  
_G.SCHED_MOVE_TO_WEAPON_RANGE = 34
--- Pick up a new weapon if within a radius of 5 units.  
_G.SCHED_NEW_WEAPON = 63
--- Fail safe: Create the weapon that the NPC went to pick up if it was removed during pick up schedule.  
_G.SCHED_NEW_WEAPON_CHEAT = 64
--- No schedule is being performed.  
_G.SCHED_NONE = 0
--- Prevents movement until COND.NPC_UNFREEZE(68) is set.  
_G.SCHED_NPC_FREEZE = 73
--- Run to random position and stop if enemy is heard or found.  
_G.SCHED_PATROL_RUN = 76
--- Walk to random position and stop if enemy is heard or found.  
_G.SCHED_PATROL_WALK = 74
_G.SCHED_PRE_FAIL_ESTABLISH_LINE_OF_FIRE = 37
_G.SCHED_RANGE_ATTACK1 = 43
_G.SCHED_RANGE_ATTACK2 = 44
--- Stop moving and reload until danger is heard.  
_G.SCHED_RELOAD = 51
--- Retreat from the established enemy.  
_G.SCHED_RUN_FROM_ENEMY = 32
_G.SCHED_RUN_FROM_ENEMY_FALLBACK = 33
_G.SCHED_RUN_FROM_ENEMY_MOB = 83
--- Run to random position within a radius of 500 units.  
_G.SCHED_RUN_RANDOM = 77
_G.SCHED_SCENE_GENERIC = 62
_G.SCHED_SCRIPTED_CUSTOM_MOVE = 59
_G.SCHED_SCRIPTED_FACE = 61
_G.SCHED_SCRIPTED_RUN = 58
_G.SCHED_SCRIPTED_WAIT = 60
_G.SCHED_SCRIPTED_WALK = 57
--- Shoot cover that the enemy is behind.  
_G.SCHED_SHOOT_ENEMY_COVER = 39
--- Sets the NPC to a sleep-like state.  
_G.SCHED_SLEEP = 87
_G.SCHED_SMALL_FLINCH = 22
_G.SCHED_SPECIAL_ATTACK1 = 45
_G.SCHED_SPECIAL_ATTACK2 = 46
_G.SCHED_STANDOFF = 47
_G.SCHED_SWITCH_TO_PENDING_WEAPON = 65
_G.SCHED_TAKE_COVER_FROM_BEST_SOUND = 28
--- Take cover from current enemy.  
_G.SCHED_TAKE_COVER_FROM_ENEMY = 27
--- Flee from SaveValue: vLastKnownLocation  
_G.SCHED_TAKE_COVER_FROM_ORIGIN = 30
--- Chase set NPC target.  
_G.SCHED_TARGET_CHASE = 21
--- Face NPC target.  
_G.SCHED_TARGET_FACE = 20
--- Human victory dance.  
_G.SCHED_VICTORY_DANCE = 19
_G.SCHED_WAIT_FOR_SCRIPT = 55
_G.SCHED_WAIT_FOR_SPEAK_FINISH = 67
--- Spot an enemy and go from an idle state to combat state.  
_G.SCHED_WAKE_ANGRY = 4

--- Enumerations for NPC schedules, used by ENTITY:StartEngineSchedule, ENTITY:TranslateSchedule and NPC:SetSchedule. Serverside only.  
--- @alias ESCHED `LAST_SHARED_SCHEDULE`|`SCHED_AISCRIPT`|`SCHED_ALERT_FACE`|`SCHED_ALERT_FACE_BESTSOUND`|`SCHED_ALERT_REACT_TO_COMBAT_SOUND`|`SCHED_ALERT_SCAN`|`SCHED_ALERT_STAND`|`SCHED_ALERT_WALK`|`SCHED_AMBUSH`|`SCHED_ARM_WEAPON`|`SCHED_BACK_AWAY_FROM_ENEMY`|`SCHED_BACK_AWAY_FROM_SAVE_POSITION`|`SCHED_BIG_FLINCH`|`SCHED_CHASE_ENEMY`|`SCHED_CHASE_ENEMY_FAILED`|`SCHED_COMBAT_FACE`|`SCHED_COMBAT_PATROL`|`SCHED_COMBAT_STAND`|`SCHED_COMBAT_SWEEP`|`SCHED_COMBAT_WALK`|`SCHED_COWER`|`SCHED_DIE`|`SCHED_DIE_RAGDOLL`|`SCHED_DISARM_WEAPON`|`SCHED_DROPSHIP_DUSTOFF`|`SCHED_DUCK_DODGE`|`SCHED_ESTABLISH_LINE_OF_FIRE`|`SCHED_ESTABLISH_LINE_OF_FIRE_FALLBACK`|`SCHED_FAIL`|`SCHED_FAIL_ESTABLISH_LINE_OF_FIRE`|`SCHED_FAIL_NOSTOP`|`SCHED_FAIL_TAKE_COVER`|`SCHED_FALL_TO_GROUND`|`SCHED_FEAR_FACE`|`SCHED_FLEE_FROM_BEST_SOUND`|`SCHED_FLINCH_PHYSICS`|`SCHED_FORCED_GO`|`SCHED_FORCED_GO_RUN`|`SCHED_GET_HEALTHKIT`|`SCHED_HIDE_AND_RELOAD`|`SCHED_IDLE_STAND`|`SCHED_IDLE_WALK`|`SCHED_IDLE_WANDER`|`SCHED_INTERACTION_MOVE_TO_PARTNER`|`SCHED_INTERACTION_WAIT_FOR_PARTNER`|`SCHED_INVESTIGATE_SOUND`|`SCHED_MELEE_ATTACK1`|`SCHED_MELEE_ATTACK2`|`SCHED_MOVE_AWAY`|`SCHED_MOVE_AWAY_END`|`SCHED_MOVE_AWAY_FAIL`|`SCHED_MOVE_AWAY_FROM_ENEMY`|`SCHED_MOVE_TO_WEAPON_RANGE`|`SCHED_NEW_WEAPON`|`SCHED_NEW_WEAPON_CHEAT`|`SCHED_NONE`|`SCHED_NPC_FREEZE`|`SCHED_PATROL_RUN`|`SCHED_PATROL_WALK`|`SCHED_PRE_FAIL_ESTABLISH_LINE_OF_FIRE`|`SCHED_RANGE_ATTACK1`|`SCHED_RANGE_ATTACK2`|`SCHED_RELOAD`|`SCHED_RUN_FROM_ENEMY`|`SCHED_RUN_FROM_ENEMY_FALLBACK`|`SCHED_RUN_FROM_ENEMY_MOB`|`SCHED_RUN_RANDOM`|`SCHED_SCENE_GENERIC`|`SCHED_SCRIPTED_CUSTOM_MOVE`|`SCHED_SCRIPTED_FACE`|`SCHED_SCRIPTED_RUN`|`SCHED_SCRIPTED_WAIT`|`SCHED_SCRIPTED_WALK`|`SCHED_SHOOT_ENEMY_COVER`|`SCHED_SLEEP`|`SCHED_SMALL_FLINCH`|`SCHED_SPECIAL_ATTACK1`|`SCHED_SPECIAL_ATTACK2`|`SCHED_STANDOFF`|`SCHED_SWITCH_TO_PENDING_WEAPON`|`SCHED_TAKE_COVER_FROM_BEST_SOUND`|`SCHED_TAKE_COVER_FROM_ENEMY`|`SCHED_TAKE_COVER_FROM_ORIGIN`|`SCHED_TARGET_CHASE`|`SCHED_TARGET_FACE`|`SCHED_VICTORY_DANCE`|`SCHED_WAIT_FOR_SCRIPT`|`SCHED_WAIT_FOR_SPEAK_FINISH`|`SCHED_WAKE_ANGRY`
