--- @meta

--- @class GNPC : GEntity
--- This is a list of all methods only available for NPCs. It is also possible to call Entity functions on NPCs.  
local GNPC = {}
--- Makes the NPC like, hate, feel neutral towards, or fear the entity in question. If you want to setup relationship towards a certain entity `class`, use NPC:AddRelationship.  
--- ℹ **NOTE**: NPCs do not see NextBots by default. This can be fixed by adding the FL_OBJECT flag to the NextBot.  
--- @param target GEntity @The entity for the relationship to be applied to.
--- @param disposition number @A Enums/D representing the relationship type.
--- @param priority? number @How strong the relationship is
function GNPC:AddEntityRelationship(target, disposition, priority)
end

--- Changes how an NPC feels towards another NPC.  If you want to setup relationship towards a certain `entity`, use NPC:AddEntityRelationship.  
--- ⚠ **WARNING**: Avoid using this in GM:OnEntityCreated to prevent crashing due to infinite loops. This function may create an entity with given class and delete it immediately after.  
--- @param relationstring string @A string representing how the relationship should be set up
function GNPC:AddRelationship(relationstring)
end

--- Advances the NPC on its path to the next waypoint.  
function GNPC:AdvancePath()
end

--- Force an NPC to play their Alert sound.  
function GNPC:AlertSound()
end

--- Executes any movement the current sequence may have.  
--- @param interval number @This is a good place to use Entity:GetAnimTimeInterval.
--- @param target? GEntity 
--- @return boolean @`true` if any movement was performed.
function GNPC:AutoMovement(interval, target)
end

--- Adds a capability to the NPC.  
--- @param capabilities ECAP @Capabilities to add, see Enums/CAP.
function GNPC:CapabilitiesAdd(capabilities)
end

--- Removes all of Capabilities the NPC has.  
function GNPC:CapabilitiesClear()
end

--- Returns the NPC's capabilities along the ones defined on its weapon.  
--- @return ECAP @The capabilities as a bitflag
function GNPC:CapabilitiesGet()
end

--- Remove a certain capability.  
--- @param capabilities number @Capabilities to remove, see Enums/CAP
function GNPC:CapabilitiesRemove(capabilities)
end

--- Returns the NPC class. Do not confuse with Entity:GetClass!  
--- @return ECLASS @See Enums/CLASS
function GNPC:Classify()
end

--- Resets the NPC:GetBlockingEntity.  
function GNPC:ClearBlockingEntity()
end

--- Clears out the specified Enums/COND on this NPC.  
--- @param condition number @The Enums/COND to clear out.
function GNPC:ClearCondition(condition)
end

--- Clears the Enemy from the NPC's memory, effectively forgetting it until met again with either the NPC vision or with NPC:UpdateEnemyMemory.  
--- @param enemy? GEntity @The enemy to mark
function GNPC:ClearEnemyMemory(enemy)
end

--- Clears the NPC's current expression which can be set with NPC:SetExpression.  
function GNPC:ClearExpression()
end

--- Clears the current NPC goal or target.  
function GNPC:ClearGoal()
end

--- Stops the current schedule that the NPC is doing.  
function GNPC:ClearSchedule()
end

--- Translates condition ID to a string.  
--- @param cond number @The NPCs condition ID, see Enums/COND
--- @return string @A human understandable string equivalent of that condition.
function GNPC:ConditionName(cond)
end

--- Returns the way the NPC "feels" about a given entity. See NPC:AddEntityRelationship.  
--- ℹ **NOTE**: For `ai` type entities, this will return ENTITY:GetRelationship. If it returns `nil` or for engine NPCs, this will return whatever was last set by NPC:AddEntityRelationship. As a last resort, engine will decide on the disposition based on this NPC's NPC:Classify.  
--- @param ent GEntity @The entity to test our disposition towards.
--- @return ED @The NPCs disposition, see Enums/D.
--- @return number @The NPCs disposition priority.
function GNPC:Disposition(ent)
end

--- Forces the NPC to drop the specified weapon.  
--- @param weapon? GWeapon @Weapon to be dropped
--- @param target? GVector @If set, launches the weapon at given position
--- @param velocity? GVector @If set and previous argument is unset, launches the weapon with given velocity
function GNPC:DropWeapon(weapon, target, velocity)
end

--- Makes an NPC exit a scripted sequence, if one is playing.  
function GNPC:ExitScriptedSequence()
end

--- Force an NPC to play its Fear sound.  
function GNPC:FearSound()
end

--- Force an NPC to play its FoundEnemy sound.  
function GNPC:FoundEnemySound()
end

--- Returns the weapon the NPC is currently carrying, or NULL.  
--- @return GEntity @The NPCs current weapon
function GNPC:GetActiveWeapon()
end

--- Returns the NPC's current activity.  
--- @return number @Current activity, see Enums/ACT.
function GNPC:GetActivity()
end

--- Returns the aim vector of the NPC. NPC alternative of Player:GetAimVector.  
--- @return GVector @The aim direction of the NPC.
function GNPC:GetAimVector()
end

--- Returns the activity to be played when the NPC arrives at its goal  
--- @return number @The arrival activity
function GNPC:GetArrivalActivity()
end

--- Returns the direction from the NPC origin to its current navigational destination.  
--- @return GVector @The arrival direction.
function GNPC:GetArrivalDirection()
end

--- Returns NPC arrival distance, set by NPC:SetArrivalDistance.  
--- @return number @The current arrival distance.
function GNPC:GetArrivalDistance()
end

--- Returns the sequence to be played when the NPC arrives at its goal.  
--- @return number @Sequence ID to be played, or -1 if there's no sequence.
function GNPC:GetArrivalSequence()
end

--- Returns NPC arrival speed, set by NPC:SetArrivalSpeed.  
--- @return number @The current arrival peed.
function GNPC:GetArrivalSpeed()
end

--- Returns the most dangerous/closest sound hint based on the NPCs location and the types of sounds it can sense.  
--- @param types number @The types of sounds to choose from
--- @return table @A table with SoundHintData structure or `nil` if no sound hints are nearby.
function GNPC:GetBestSoundHint(types)
end

--- Returns the entity blocking the NPC along its path.  
--- @return GEntity @Blocking entity
function GNPC:GetBlockingEntity()
end

--- Returns the goal type for current navigation path.  
--- @return number @The goal type
function GNPC:GetCurGoalType()
end

--- Gets the NPC's current waypoint position (where NPC is currently moving towards), if any is available.  
--- @return GVector @The position of the current NPC waypoint.
function GNPC:GetCurWaypointPos()
end

--- Returns the NPC's current schedule.  
--- @return number @The NPCs schedule, see Enums/SCHED or -1 if we failed for some reason
function GNPC:GetCurrentSchedule()
end

--- Returns how proficient (skilled) an NPC is with its current weapon.  
--- @return number @NPC's proficiency for current weapon
function GNPC:GetCurrentWeaponProficiency()
end

--- Returns the entity that this NPC is trying to fight.  
--- 🦟 **BUG**: [This returns nil if the NPC has no enemy. You should use Global.IsValid (which accounts for nil and NULL) on the return to verify validity of the enemy.](https://github.com/Facepunch/garrysmod-issues/issues/3132)  
--- @return GNPC @Enemy NPC.
function GNPC:GetEnemy()
end

--- Returns the first time an NPC's enemy was seen by the NPC.  
--- @param enemy? GEntity @The enemy to check.
--- @return number @First time the given enemy was seen.
function GNPC:GetEnemyFirstTimeSeen(enemy)
end

--- Returns the last known position of an NPC's enemy.  
--- Similar to NPC:GetEnemyLastSeenPos, but the known position will be a few seconds ahead of the last seen position.  
--- @param enemy? GEntity @The enemy to check.
--- @return GVector @The last known position.
function GNPC:GetEnemyLastKnownPos(enemy)
end

--- Returns the last seen position of an NPC's enemy.  
--- Similar to NPC:GetEnemyLastKnownPos, but the known position will be a few seconds ahead of the last seen position.  
--- @param enemy? GEntity @The enemy to check.
--- @return GVector @The last seen position.
function GNPC:GetEnemyLastSeenPos(enemy)
end

--- Returns the last time an NPC's enemy was seen by the NPC.  
--- @param enemy? GEntity @The enemy to check.
--- @return number @Last time the given enemy was seen.
function GNPC:GetEnemyLastTimeSeen(enemy)
end

--- Returns the expression file the NPC is currently playing.  
--- @return string @The file path of the expression.
function GNPC:GetExpression()
end

--- Returns the eye direction of the NPC.  
--- @return GVector @The eye direction.
function GNPC:GetEyeDirection()
end

--- Returns the Field Of View of the NPC. See NPC:SetFOV.  
--- @return number @The FOV for the NPC in degrees.
function GNPC:GetFOV()
end

--- Returns the position we are trying to reach, if any.  
--- @return GVector @The position we are trying to reach.
function GNPC:GetGoalPos()
end

--- Returns the entity we are trying to reach, if any.  
--- @return GEntity @The entity we are trying to reach, or `NULL`.
function GNPC:GetGoalTarget()
end

--- Returns the 2D head direction of the NPC.  
--- @return GVector @The head direction.
function GNPC:GetHeadDirection()
end

--- Returns NPCs hull type set by NPC:SetHullType.  
--- @return number @Hull type, see Enums/HULL
function GNPC:GetHullType()
end

--- Returns the ideal activity the NPC currently wants to achieve.  
--- @return number @The ideal activity
function GNPC:GetIdealActivity()
end

--- Returns the ideal move acceleration of the NPC.  
--- @return number @The ideal move acceleration.
function GNPC:GetIdealMoveAcceleration()
end

--- Returns the ideal move speed of the NPC.  
--- @return number @The ideal move speed.
function GNPC:GetIdealMoveSpeed()
end

--- Returns the ideal sequence the NPC currently wants to achieve.  
--- @return number @The ideal sequence, specific to the NPCs model.
function GNPC:GetIdealSequence()
end

--- Returns the ideal yaw (left right rotation) for this NPC at this moment.  
--- @return number @The ideal yaw.
function GNPC:GetIdealYaw()
end

--- Returns all known enemies this NPC has.  
--- See also NPC:GetKnownEnemyCount  
--- @return table @Table of entities that this NPC knows as enemies.
function GNPC:GetKnownEnemies()
end

--- Returns known enemy count of this NPC.  
--- See also NPC:GetKnownEnemies  
--- @return number @Amount of entities that this NPC knows as enemies.
function GNPC:GetKnownEnemyCount()
end

--- Returns the last registered or memorized position of the NPC. When using scheduling, the NPC will focus on navigating to the last position via nodes.  
--- See NPC:SetLastPosition.  
--- @return GVector @Where the NPC's last position was set to.
function GNPC:GetLastPosition()
end

--- Returns Global.CurTime based time since this NPC last received damage from given enemy. The last damage time is set when NPC:MarkTookDamageFromEnemy is called.  
--- @param enemy? GEntity @The enemy to test
--- @return number @Time since this NPC last received damage from given enemy.
function GNPC:GetLastTimeTookDamageFromEnemy(enemy)
end

--- Returns NPCs max view distance. An NPC will not be able to see enemies outside of this distance.  
--- @return number @The maximum distance the NPC can see at.
function GNPC:GetMaxLookDistance()
end

--- Returns how far should the NPC look ahead in its route.  
--- @return number @How far the NPC checks ahead of its route.
function GNPC:GetMinMoveCheckDist()
end

--- Returns how far before the NPC can come to a complete stop.  
--- @param minResult_? number @The minimum value that will be returned by this function.
--- @return number @The minimum stop distance.
function GNPC:GetMinMoveStopDist(minResult_)
end

--- Returns the movement delay for given NPC.  
--- See NPC:SetMoveDelay.  
--- @return number @The movement delay.
function GNPC:GetMoveDelay()
end

--- Returns the current timestep the internal NPC motor is working on.  
--- @return number @The current timestep.
function GNPC:GetMoveInterval()
end

--- Returns the current move velocity of the NPC.  
--- @return GVector @The current move velocity of the NPC.
function GNPC:GetMoveVelocity()
end

--- Returns the NPC's current movement activity.  
--- @return number @Current NPC movement activity, see Enums/ACT.
function GNPC:GetMovementActivity()
end

--- Returns the index of the sequence the NPC uses to move.  
--- @return number @The movement sequence index
function GNPC:GetMovementSequence()
end

--- Returns the NPC's state.  
--- @return number @The NPC's current state, see Enums/NPC_STATE.
function GNPC:GetNPCState()
end

--- Returns the NPC's navigation type.  
--- @return number @The nav type
function GNPC:GetNavType()
end

--- Returns the nearest member of the squad the NPC is in.  
--- @return GNPC @The nearest member of the squad the NPC is in.
function GNPC:GetNearestSquadMember()
end

--- Gets the NPC's next waypoint position, where NPC will be moving after reaching current waypoint, if any is available.  
--- @return GVector @The position of the next NPC waypoint.
function GNPC:GetNextWaypointPos()
end

--- Returns the distance the NPC is from Target Goal.  
--- @return number @The number of hammer units the NPC is away from the Goal.
function GNPC:GetPathDistanceToGoal()
end

--- Returns the amount of time it will take for the NPC to get to its Target Goal.  
--- @return number @The amount of time to get to the target goal.
function GNPC:GetPathTimeToGoal()
end

--- Returns the shooting position of the NPC, i.e. where their bullets would come from, etc.  
--- If the NPC does not overwrite this, it will return Entity:GetPos.  
--- @return GVector @The NPC's shooting position.
function GNPC:GetShootPos()
end

--- Returns the current squad name of the NPC, as set via NPC:SetSquad.  
--- @return string @The new squad name to set.
function GNPC:GetSquad()
end

--- Returns NPC step height.  
--- @return number @The current step height.
function GNPC:GetStepHeight()
end

--- Returns the NPC's current target set by NPC:SetTarget.  
--- 🦟 **BUG**: [This returns nil if the NPC has no target. You should use Global.IsValid (which accounts for nil and NULL) on the return to verify validity of the target.](https://github.com/Facepunch/garrysmod-issues/issues/3132)  
--- @return GEntity @Target entity
function GNPC:GetTarget()
end

--- Returns the status of the current task.  
--- @return number @The status
function GNPC:GetTaskStatus()
end

--- Returns Global.CurTime based time since the enemy was reacquired, meaning it is currently in Line of Sight of the NPC.  
--- @param enemy? GEntity @The enemy to test
--- @return number @Time enemy was last reacquired.
function GNPC:GetTimeEnemyLastReacquired(enemy)
end

--- Returns the view offset of the NPC. Set by NPC:SetViewOffset.  
--- @return GVector @The view offset of the NPC.
function GNPC:GetViewOffset()
end

--- Returns a specific weapon the NPC owns.  
--- @param class string @A classname of the weapon to try to get.
--- @return GWeapon @The weapon for the specified class, or NULL of the NPC doesn't have given weapon.
function GNPC:GetWeapon(class)
end

--- Returns a table of the NPC's weapons.  
--- @return GWeapon[] @A list of the weapons the NPC currently has.
function GNPC:GetWeapons()
end

--- Used to give a weapon to an already spawned NPC.  
--- @param weapon string @Class name of the weapon to equip to the NPC.
--- @return GWeapon @The weapon entity given to the NPC.
function GNPC:Give(weapon)
end

--- Returns whether or not the NPC has the given condition.  
--- @param condition number @The condition index, see Enums/COND.
--- @return boolean @True if the NPC has the given condition, false otherwise.
function GNPC:HasCondition(condition)
end

--- Polls the enemy memory to check if the given entity has eluded us or not.  
--- @param enemy? GEntity @The enemy to test.
--- @return boolean @If the enemy has eluded us.
function GNPC:HasEnemyEluded(enemy)
end

--- Polls the enemy memory to check if the NPC has any memory of given enemy.  
--- @param enemy? GEntity @The entity to test.
--- @return boolean @If we have any memory on given enemy.
function GNPC:HasEnemyMemory(enemy)
end

--- Returns true if the current navigation has an obstacle, this is different from NPC:GetBlockingEntity, this is for virtual navigation obstacles put by AI's local navigation system to prevent movement to the marked area, forcing NPC to steer around, [for example](https://github.com/ValveSoftware/source-sdk-2013/blob/master/src/game/server/hl2/npc_playercompanion.cpp#L2897).  
--- @return boolean @`true` if the current navigation has an obstacle.
function GNPC:HasObstacles()
end

--- Force an NPC to play their Idle sound.  
function GNPC:IdleSound()
end

--- Makes the NPC ignore given entity/enemy until given time.  
--- @param enemy GEntity @The enemy to ignore.
--- @param until_ number @How long to ignore the enemy for
function GNPC:IgnoreEnemyUntil(enemy, until_)
end

--- Returns whether the current navigational waypoint is the final one.  
--- @return boolean @Whether the current navigational waypoint is the final one.
function GNPC:IsCurWaypointGoal()
end

--- Returns whether or not the NPC is performing the given schedule.  
--- @param schedule number @The schedule number, see Enums/SCHED.
--- @return boolean @True if the NPC is performing the given schedule, false otherwise.
function GNPC:IsCurrentSchedule(schedule)
end

--- Returns whether the NPC is facing their ideal yaw. See NPC:SetIdealYaw, NPC:GetIdealYaw and NPC:SetIdealYawAndUpdate.  
--- @return boolean @Whether the NPC is facing their ideal yaw.
function GNPC:IsFacingIdealYaw()
end

--- Returns whether the NPC has an active goal.  
--- @return boolean @Whether the NPC has an active goal or not.
function GNPC:IsGoalActive()
end

--- Tests whether a position or an NPC is in the view cone of the NPC.  
--- @param position GVector @The position to test.
--- @return boolean @If the given position is in the view cone.
function GNPC:IsInViewCone(position)
end
--- Tests whether a position or an NPC is in the view cone of the NPC.  
--- @param ent GEntity @The entity to test
--- @return boolean @If the given position is in the view cone.
function GNPC:IsInViewCone(ent)
end

--- Returns if the current movement is locked on the Yaw axis.  
--- @return boolean @Whether the movement is yaw locked or not.
function GNPC:IsMoveYawLocked()
end

--- Returns whether the NPC is moving or not.  
--- @return boolean @Whether the NPC is moving or not.
function GNPC:IsMoving()
end

--- Checks if the NPC is running an **ai_goal**. ( e.g. An npc_citizen NPC following the Player. )  
--- @return boolean @Returns true if running an ai_goal, otherwise returns false.
function GNPC:IsRunningBehavior()
end

--- Returns whether the current NPC is the leader of the squad it is in.  
--- @return boolean @Whether the NPC is the leader of the squad or not.
function GNPC:IsSquadLeader()
end

--- Returns true if the entity was remembered as unreachable. The memory is updated automatically from following engine tasks if they failed:  
--- * TASK_GET_CHASE_PATH_TO_ENEMY  
--- * TASK_GET_PATH_TO_ENEMY_LKP  
--- * TASK_GET_PATH_TO_INTERACTION_PARTNER  
--- * TASK_ANTLIONGUARD_GET_CHASE_PATH_ENEMY_TOLERANCE  
--- * SCHED_FAIL_ESTABLISH_LINE_OF_FIRE - Combine NPCs, also when failing to change their enemy  
--- @param testEntity GEntity @The entity to test.
--- @return boolean @If the entity is reachable or not.
function GNPC:IsUnreachable(testEntity)
end

--- Force an NPC to play their LostEnemy sound.  
function GNPC:LostEnemySound()
end

--- Tries to achieve our ideal animation state, playing any transition sequences that we need to play to get there.  
function GNPC:MaintainActivity()
end

--- Causes the NPC to temporarily forget the current enemy and switch on to a better one.  
--- @param enemy? GEntity @The enemy to mark
function GNPC:MarkEnemyAsEluded(enemy)
end

--- Marks the NPC as took damage from given entity.  
--- See also NPC:GetLastTimeTookDamageFromEnemy.  
--- @param enemy? GEntity @The enemy to mark
function GNPC:MarkTookDamageFromEnemy(enemy)
end

--- Executes a climb move.  
--- Related functions are NPC:MoveClimbStart and NPC:MoveClimbStop.  
--- @param destination GVector @The destination of the climb.
--- @param dir GVector @The direction of the climb.
--- @param distance number @The distance.
--- @param yaw number @The yaw angle.
--- @param left number @Amount of climb nodes left?
--- @return EAIMR @The result
function GNPC:MoveClimbExec(destination, dir, distance, yaw, left)
end

--- Starts a climb move.  
--- Related functions are NPC:MoveClimbExec and NPC:MoveClimbStop.  
--- @param destination GVector @The destination of the climb.
--- @param dir GVector @The direction of the climb.
--- @param distance number @The distance.
--- @param yaw number @The yaw angle.
function GNPC:MoveClimbStart(destination, dir, distance, yaw)
end

--- Stops a climb move.  
--- Related functions are NPC:MoveClimbExec and NPC:MoveClimbStart.  
function GNPC:MoveClimbStop()
end

--- Executes a jump move.  
--- Related functions are NPC:MoveJumpStart and NPC:MoveJumpStop.  
--- @return EAIMR @The result
function GNPC:MoveJumpExec()
end

--- Starts a jump move.  
--- Related functions are NPC:MoveJumpExec and NPC:MoveJumpStop.  
--- @param vel GVector @The jump velocity.
function GNPC:MoveJumpStart(vel)
end

--- Stops a jump move.  
--- Related functions are NPC:MoveJumpExec and NPC:MoveJumpStart.  
--- @return EAIMR @The result
function GNPC:MoveJumpStop()
end

--- Makes the NPC walk toward the given position. The NPC will return to the player after amount of time set by **player_squad_autosummon_time** ConVar.  
--- Only works on Citizens (npc_citizen) and is a part of the Half-Life 2 squad system.  
--- The NPC **must** be in the player's squad for this to work.  
--- @param position GVector @The target position for the NPC to walk to.
function GNPC:MoveOrder(position)
end

--- Pauses the NPC movement?  
--- Related functions are NPC:MoveStart, NPC:MoveStop and NPC:ResetMoveCalc.  
function GNPC:MovePause()
end

--- Starts NPC movement?  
--- Related functions are NPC:MoveStop, NPC:MovePause and NPC:ResetMoveCalc.  
function GNPC:MoveStart()
end

--- Stops the NPC movement?  
--- Related functions are NPC:MoveStart, NPC:MovePause and NPC:ResetMoveCalc.  
function GNPC:MoveStop()
end

--- Works similarly to NPC:NavSetRandomGoal.  
--- @param pos GVector @The origin to calculate a path from.
--- @param length number @The target length of the path to calculate.
--- @param dir GVector @The direction in which to look for a new path end goal.
--- @return boolean @Whether path generation was successful or not.
function GNPC:NavSetGoal(pos, length, dir)
end

--- Creates a path to closest node at given position. This won't actually force the NPC to move.  
--- ℹ **NOTE**: This will call either NPC:TaskComplete or NPC:TaskFail for the current schedule and task, forcing the current task to progress to next task or fail.  
--- See also NPC:NavSetRandomGoal.  
--- @param pos GVector @The position to calculate a path to.
--- @return boolean @Whether path generation was successful or not.
function GNPC:NavSetGoalPos(pos)
end

--- Set the goal target for an NPC.  
--- This will call either NPC:TaskComplete or NPC:TaskFail for the current schedule and task, forcing the current task to progress to next task or fail.  
--- @param target GEntity @The targeted entity to set the goal to.
--- @param offset? GVector @The offset to apply to the targeted entity's position.
--- @return boolean @Whether path generation was successful or not
function GNPC:NavSetGoalTarget(target, offset)
end

--- Creates a random path of specified minimum length between a closest start node and random node in the specified direction. This won't actually force the NPC to move.  
--- @param minPathLength number @Minimum length of path in units
--- @param dir GVector @Unit vector pointing in the direction of the target random node
--- @return boolean @Whether path generation was successful or not
function GNPC:NavSetRandomGoal(minPathLength, dir)
end

--- Sets a goal in x, y offsets for the NPC to wander to  
--- @param xOffset number @X offset
--- @param yOffset number @Y offset
--- @return boolean @Whether path generation was successful or not
function GNPC:NavSetWanderGoal(xOffset, yOffset)
end

--- Forces the NPC to pickup an existing weapon entity. The NPC will not pick up the weapon if they already own a weapon of given type, or if the NPC could not normally have this weapon in their inventory.  
--- @param wep GWeapon @The weapon to try to pick up.
--- @return boolean @Whether the NPC succeeded in picking up the weapon or not.
function GNPC:PickupWeapon(wep)
end

--- Forces the NPC to play a sentence from scripts/sentences.txt  
--- @param sentence string @The sentence string to speak.
--- @param delay number @Delay in seconds until the sentence starts playing.
--- @param volume number @The volume of the sentence, from 0 to 1.
--- @return number @Returns the sentence index, -1 if the sentence couldn't be played.
function GNPC:PlaySentence(sentence, delay, volume)
end

--- Makes the NPC remember an entity or an enemy as unreachable, for a specified amount of time. Use NPC:IsUnreachable to check if an entity is still unreachable.  
--- @param ent GEntity @The entity to mark as unreachable.
--- @param time? number @For how long to remember the entity as unreachable
function GNPC:RememberUnreachable(ent, time)
end

--- Removes conditions to ignore for the this NPC.  
--- @param conditions? table @Ignore conditions to remove, see Enums/COND
function GNPC:RemoveIgnoreConditions(conditions)
end

--- Resets the ideal activity of the NPC. See also NPC:SetIdealActivity.  
--- @param act number @The new activity
function GNPC:ResetIdealActivity(act)
end

--- Resets all the movement calculations.  
--- Related functions are NPC:MoveStart, NPC:MovePause and NPC:MoveStop.  
function GNPC:ResetMoveCalc()
end

--- Starts an engine task.  
--- Used internally by the ai_task.  
--- @param taskID number @The task ID, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/serv
--- @param taskData number @The task data.
function GNPC:RunEngineTask(taskID, taskData)
end

--- Forces the NPC to switch to a specific weapon the NPC owns. See NPC:GetWeapons.  
--- @param class string @A classname of the weapon or a Weapon entity to switch to.
function GNPC:SelectWeapon(class)
end

--- Stops any sounds (speech) the NPC is currently palying.  
--- Equivalent to `Entity:EmitSound( "AI_BaseNPC.SentenceStop" )`  
function GNPC:SentenceStop()
end

--- Sets the NPC's current activity.  
--- @param act number @The new activity to set, see Enums/ACT.
function GNPC:SetActivity(act)
end

--- @param act number @See Enums/ACT.
function GNPC:SetArrivalActivity(act)
end

--- Sets the direction from the NPC origin to its current navigational destination.  
--- @param dir GVector @The new arrival direction.
function GNPC:SetArrivalDirection(dir)
end

--- Sets the distance to goal at which the NPC should stop moving and continue to other business such as doing the rest of their tasks in a schedule.  
--- @param dist number @The distance to goal that is close enough for the NPC
function GNPC:SetArrivalDistance(dist)
end

--- Sets the sequence to be played when the NPC arrives at its goal.  
--- @param seq number @See Entity:LookupSequence.
function GNPC:SetArrivalSequence(seq)
end

--- Sets the arrival speed? of the NPC  
--- @param speed number @The new arrival speed
function GNPC:SetArrivalSpeed(speed)
end

--- Sets an NPC condition.  
--- @param condition ECOND @The condition index, see Enums/COND.
function GNPC:SetCondition(condition)
end

--- Sets the weapon proficiency of an NPC (how skilled an NPC is with its current weapon).  
--- @param proficiency number @The proficiency for the NPC's current weapon
function GNPC:SetCurrentWeaponProficiency(proficiency)
end

--- Sets the target for an NPC.  
--- @param enemy GEntity @The enemy that the NPC should target
--- @param newenemy? boolean @Calls NPC:SetCondition(COND.NEW_ENEMY) if the new enemy is valid and not equal to the last enemy.
function GNPC:SetEnemy(enemy, newenemy)
end

--- Sets the NPC's .vcd expression. Similar to Entity:PlayScene except the scene is looped until it's interrupted by default NPC behavior or NPC:ClearExpression.  
--- @param expression string @The expression filepath.
--- @return number 
function GNPC:SetExpression(expression)
end

--- Sets the Field Of View of the NPC, for use with such functions as NPC:IsInViewCone. it is also used internally by the NPC for enemy detection, etc.  
--- @param fov number @The new FOV for the NPC in degrees.
function GNPC:SetFOV(fov)
end

--- Updates the NPC's hull and physics hull in order to match its model scale. Entity:SetModelScale seems to take care of this regardless.  
function GNPC:SetHullSizeNormal()
end

--- Sets the hull type for the NPC.  
--- @param hullType number @Hull type
function GNPC:SetHullType(hullType)
end

--- Sets the ideal activity the NPC currently wants to achieve. This is most useful for custom SNPCs.  
--- @param arg number @The ideal activity to set
function GNPC:SetIdealActivity(arg)
end

--- Sets the ideal sequence the NPC currently wants to achieve. This is most useful for custom SNPCs.  
--- @param sequenceId number @The ideal sequence to set
function GNPC:SetIdealSequence(sequenceId)
end

--- Sets the ideal yaw angle (left-right rotation) for the NPC. Does not actually force the NPC to start turning in that direction. See NPC:UpdateYaw, NPC:GetIdealYaw and NPC:SetIdealYawAndUpdate.  
--- @param angle number @The aim direction to set, the `yaw` component.
function GNPC:SetIdealYaw(angle)
end

--- Sets the ideal yaw angle (left-right rotation) for the NPC and forces them to turn to that angle.  
--- @param angle number @The aim direction to set, the `yaw` component.
--- @param speed? number @The turn speed
function GNPC:SetIdealYawAndUpdate(angle, speed)
end

--- Sets conditions to ignore, which would normally interrupt an Engine-based schedule. Specified conditions will still be set, will call ENTITY:OnCondition and can be returned by NPC:HasCondition, but they will no longer interrupt the Engine schedule.  
--- @param conditions table @Conditions to ignore, see Enums/COND
--- @param size number @Number of conditions to include in the ignored conditions table
function GNPC:SetIgnoreConditions(conditions, size)
end

--- Sets the last registered or memorized position for this NPC. When using scheduling, the NPC will focus on navigating to the last position via nodes.  
--- ℹ **NOTE**: The navigation requires ground nodes to function properly, otherwise the NPC could only navigate in a small area. (https://developer.valvesoftware.com/wiki/Info_node)  
--- @param position GVector @Where the NPC's last position will be set.
function GNPC:SetLastPosition(position)
end

--- Sets NPC's max view distance. An NPC will not be able to see enemies outside of this distance.  
--- @param dist number @New maximum distance the NPC can see at
function GNPC:SetMaxLookDistance(dist)
end

--- Sets how long to try rebuilding path before failing task.  
--- @param time number @How long to try rebuilding path before failing task
function GNPC:SetMaxRouteRebuildTime(time)
end

--- Sets the movement delay for given NPC.  
--- See NPC:GetMoveDelay.  
--- @param delay number @The amount of time in seconds to delay movement by.
function GNPC:SetMoveDelay(delay)
end

--- Sets the timestep the internal NPC motor is working on.  
--- @param time number @The new timestep.
function GNPC:SetMoveInterval(time)
end

--- Sets the move velocity of the NPC  
--- @param vel GVector @The new movement velocity.
function GNPC:SetMoveVelocity(vel)
end

--- Sets whether the current movement should locked on the Yaw axis or not.  
--- @param lock boolean @Whether the movement should yaw locked or not.
function GNPC:SetMoveYawLocked(lock)
end

--- Sets the activity the NPC uses when it moves.  
--- @param activity number @The movement activity, see Enums/ACT.
function GNPC:SetMovementActivity(activity)
end

--- Sets the sequence the NPC navigation path uses for speed calculation. Doesn't seem to have any visible effect on NPC movement.  
--- @param sequenceId number @The movement sequence index
function GNPC:SetMovementSequence(sequenceId)
end

--- Sets the state the NPC is in to help it decide on a ideal schedule.  
--- @param state number @New NPC state, see Enums/NPC_STATE
function GNPC:SetNPCState(state)
end

--- Sets the navigation type of the NPC.  
--- @param navtype number @The new nav type
function GNPC:SetNavType(navtype)
end

--- Sets the NPC's current schedule.  
--- @param schedule number @The NPC schedule, see Enums/SCHED.
function GNPC:SetSchedule(schedule)
end

--- Assigns the NPC to a new squad. A squad can have up to 16 NPCs. NPCs in a single squad should be friendly to each other.  
--- See also ai.GetSquadMembers and NPC:GetSquad.  
--- NPCs within the same squad are meant to function more effectively, tactics wise.  
--- @param name? string @The new squad name to set
function GNPC:SetSquad(name)
end

--- Sets the SNPC step height.  
--- ℹ **NOTE**: This only works for scripted NPCs.  
--- @param height number @The new step height
function GNPC:SetStepHeight(height)
end

--- Sets the NPC's target. This is used in some engine schedules.  
--- @param entity GEntity @The target of the NPC.
function GNPC:SetTarget(entity)
end

--- Sets the status of the current task.  
--- @param status number @The status
function GNPC:SetTaskStatus(status)
end

--- Sets given entity as an unforgettable enemy.  
--- @param enemy GEntity @The enemy entity to set.
--- @param set? boolean @The entity to set.
function GNPC:SetUnforgettable(enemy, set)
end

--- Sets the view offset of the NPC. Player alternative of Player:SetViewOffset.  
--- This affects NPC's NPC:GetShootPos.  
--- @param arg GVector @The view offset to set.
function GNPC:SetViewOffset(arg)
end

--- Forces the NPC to start an engine task, this has different results for every NPC.  
--- @param task number @The id of the task to start, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/
--- @param taskData number @The task data as a float, not all tasks make use of it.
function GNPC:StartEngineTask(task, taskData)
end

--- Resets the NPC's movement animation and velocity. Does not actually stop the NPC from moving.  
--- @param immediate? boolean @Whether to stop moving even when currently active goal doesn't want us to.
function GNPC:StopMoving(immediate)
end

--- Cancels NPC:MoveOrder basically.  
--- Only works on Citizens (npc_citizen) and is a part of the Half-Life 2 squad system.  
--- The NPC **must** be in the player's squad for this to work.  
--- @param target GEntity @Must be a player, does nothing otherwise.
function GNPC:TargetOrder(target)
end

--- Marks the current NPC task as completed.  
--- This is meant to be used alongside NPC:TaskFail to complete or fail custom Lua defined tasks. (Schedule:AddTask)  
function GNPC:TaskComplete()
end

--- Marks the current NPC task as failed.  
--- This is meant to be used alongside NPC:TaskComplete to complete or fail custom Lua defined tasks. (Schedule:AddTask)  
--- @param task string @A string most likely defined as a Source Task, for more information on Tasks go to https://developer.valvesoftware.com/wiki/Task
function GNPC:TaskFail(task)
end

--- Force the NPC to update information on the supplied enemy, as if it had line of sight to it.  
--- @param enemy GEntity @The enemy to update.
--- @param pos GVector @The last known position of the enemy.
function GNPC:UpdateEnemyMemory(enemy, pos)
end

--- Updates the turn activity. Basically applies the turn animations depending on the current turn yaw.  
function GNPC:UpdateTurnActivity()
end

--- Forces the NPC to turn to their ideal yaw angle. See NPC:SetIdealYaw and NPC:SetIdealYawAndUpdate.  
--- @param speed? number @The turn speed
function GNPC:UpdateYaw(speed)
end

--- ℹ **NOTE**: This function only works on `ai` type [SENTs](Scripted_Entities).  
--- @return boolean @If we succeeded setting the behavior.
function GNPC:UseActBusyBehavior()
end

--- ℹ **NOTE**: This function only works on `ai` type [SENTs](Scripted_Entities).  
--- @return boolean @Whether the action succeeded.
function GNPC:UseAssaultBehavior()
end

--- ℹ **NOTE**: This function only works on `ai` type [SENTs](Scripted_Entities).  
--- @return boolean @If we succeeded setting the behavior.
function GNPC:UseFollowBehavior()
end

--- ℹ **NOTE**: This function only works on `ai` type [SENTs](Scripted_Entities).  
--- @return boolean @Whether the action succeeded.
function GNPC:UseFuncTankBehavior()
end

--- ℹ **NOTE**: This function only works on `ai` type [SENTs](Scripted_Entities).  
--- @return boolean @Whether the action succeeded.
function GNPC:UseLeadBehavior()
end

--- Undoes the other `Use*Behavior` functions.  
--- ℹ **NOTE**: This function only works on `ai` type [SENTs](Scripted_Entities).  
function GNPC:UseNoBehavior()
end
