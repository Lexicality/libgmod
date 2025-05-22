--- @meta

--- Information about the ENT structure, which represents a Scripted Entity class definition.  
--- To learn more about scripted entities, see this page.  
--- See also ENTITY Hooks for a list of events scripted entities can have. See Custom Entity Fields for a list of events and fields all entities can have.  
--- While some of the fields may be serverside or clientside only, it is recommended to provide them on both so addons could use their values.  
--- ℹ **NOTE**: Values defined in ENT table can't be changed per instance. Initialize default values in ENTITY:Initialize or other hook.  
--- @class SENT : GEntity
--- @field Base string @The base entity to derive from
--- @field Type string @Type of the entity
--- @field ClassName string @The class name of the entity (File or folder name of your entity)
--- @field ClassNameOverride string @If set, overrides the classname of the SWEP.
--- @field Folder string @The folder from where the entity was loaded
--- @field AutomaticFrameAdvance? boolean @Set this to true if your entity has animations
--- @field Category? string @Spawnmenu category to put the entity into
--- @field Spawnable? boolean @Whether this entity should be displayed and is spawnable in the spawn menu
--- @field Editable? boolean @Whether the entity supports Editing
--- @field AdminOnly? boolean @Whether or not only admins can spawn the entity from their spawn menu
--- @field PrintName string @Nice name of the entity to appear in the spawn menu
--- @field Author string @The author of the entity
--- @field Contact string @The contacts of the entity creator
--- @field Purpose string @The purpose of the entity creation
--- @field Instructions string @How to use your entity
--- @field RenderGroup number @The entity's render group, see Enums/RENDERGROUP
--- @field WantsTranslucency? boolean @If set and RenderGroup is not, will switch the render group to RENDERGROUP_BOTH when appropriate.
--- @field DisableDuplicator? boolean @Disable the ability for players to duplicate this entity.
--- @field ScriptedEntityType string @Sets the spawnmenu content icon type for the entity, used by spawnmenu in the Sandbox-derived gamemodes
--- @field IconOverride? string @If set, overrides the icon path to be displayed in the Spawnmenu for this entity
--- @field PhysicsSolidMask? number @If set, a bitflag for the physics solidity of the entity
--- @field PhysicsSounds? boolean @For `anim` type entities, if set, enables physics collision sounds.
_G.ENT = {}

--- Called when another entity fires an event to this entity.  
--- @param inputName string @The name of the input that was triggered.
--- @param activator GEntity @The initial cause for the input getting triggered
--- @param caller GEntity @The entity that directly triggered the input
--- @param param string @The input parameter.
--- @return boolean @Should we suppress the default action for this input?
function ENT:AcceptInput(inputName, activator, caller, param)
end

--- A helper function for creating Scripted Entities.  
--- Similar to ENTITY:AddOutputFromKeyValue, call it from ENTITY:AcceptInput and it'll return true if it successfully added an output from the passed input data.  
--- @param name string @The input name from ENTITY:AcceptInput.
--- @param data string @The input data from ENTITY:AcceptInput.
--- @return boolean @Whether any outputs were added or not.
function ENT:AddOutputFromAcceptInput(name, data)
end

--- A helper function for creating Scripted Entities.  
--- Call it from ENTITY:KeyValue and it'll return true if it successfully added an output from the passed KV pair.  
--- @param key string @The key-value key.
--- @param value string @The key-value value.
--- @return boolean @Whether any outputs were added or not.
function ENT:AddOutputFromKeyValue(key, value)
end

--- Called whenever the entity's position changes. A callback for when an entity's angle changes is available via Entity:AddCallback.  
--- Like ENTITY:RenderOverride, this hook works on any entity (scripted or not) it is applied on.  
--- ℹ **NOTE**: If EFL_DIRTY_ABSTRANSFORM is set on the entity, this will be called serverside only; otherwise, this will be called clientside only. This means serverside calls of Entity:SetPos without the EFL_DIRTY_ABSTRANSFORM flag enabled (most cases) will be called clientside only.  
--- ℹ **NOTE**: The give concommand will call this hook serverside only upon entity spawn.  
--- @param pos GVector @The entity's actual position
--- @param ang GAngle @The entity's actual angles
--- @return GVector @New position
--- @return GAngle @New angles
function ENT:CalcAbsolutePosition(pos, ang)
end

--- Controls if a property can be used on this entity or not.  
--- This hook will only work in Sandbox derived gamemodes that do not have GM:CanProperty overridden.  
--- ℹ **NOTE**: This hook will work on ALL entities, not just the scripted ones (SENTs)  
--- @param ply GPlayer @Player, that tried to use the property
--- @param property string @Class of the property that is tried to use, for example - bonemanipulate
--- @return boolean @Return false to disallow using that property, return true to allow
function ENT:CanProperty(ply, property)
end

--- Controls if a tool can be used on this entity or not.  
--- This hook will only work in Sandbox derived gamemodes that do not have SANDBOX:CanTool overridden.  
--- ℹ **NOTE**: This hook will work on ALL entities, not just the scripted ones (SENTs)  
--- @param ply GPlayer @Player, that tried to use the tool
--- @param tr table @The trace of the tool
--- @param toolname string @Class of the tool that is tried to use, for example - `weld`
--- @param tool table @The tool mode table the player currently has selected.
--- @param button number @The tool button pressed
--- @return boolean @Return `false` to disallow using that tool on this entity, return `true` to allow.
function ENT:CanTool(ply, tr, toolname, tool, button)
end

--- Called so the entity can override the bullet impact effects it makes. This is called when the entity itself fires bullets via Entity:FireBullets, not when it gets hit.  
--- ℹ **NOTE**: This hook only works for the `anim` type entities.  
--- @param tr table @A Structures/TraceResult from the bullet's start point to the impact point
--- @param damageType number @The damage type of bullet
--- @return boolean @Return true to not do the default thing - which is to call `UTIL_ImpactTrace` in C++
function ENT:DoImpactEffect(tr, damageType)
end

--- Runs a Lua schedule. Runs tasks inside the schedule.  
--- @param sched table @The schedule to run.
function ENT:DoSchedule(sched)
end

--- Called by the default `base_ai` SNPC, checking whether `ENT.bDoingEngineSchedule` is set by ENTITY:StartEngineSchedule..  
--- ℹ **NOTE**: This is a helper function only available if your SENT is based on `base_ai`  
function ENT:DoingEngineSchedule()
end

--- Called if and when the entity should be drawn opaquely, based on the Entity:GetRenderGroup of the entity.  
--- See Structures/ENT and Enums/RENDERGROUP for more information.  
--- See also ENTITY:DrawTranslucent.  
--- ℹ **NOTE**: This function will not called if the entity's render bounds are not in player's view. See Entity:SetRenderBounds.  
--- @param flags number @The bit flags from Enums/STUDIO
function ENT:Draw(flags)
end

--- Called when the entity should be drawn translucently. If your scripted entity has a translucent model, it will be invisible unless it is drawn here.  
--- See ENTITY:Draw for the opaque rendering alternative to this hook.  
--- @param flags number @The bit flags from Enums/STUDIO
function ENT:DrawTranslucent(flags)
end

--- Called when the entity stops touching another entity.  
--- ⚠ **WARNING**: This only works for **brush** entities and for entities that have Entity:SetTrigger set to true.  
--- @param entity GEntity @The entity which was touched.
function ENT:EndTouch(entity)
end

--- Called whenever an engine schedule is finished; either the last task within the engine schedule has been finished or the schedule has been interrupted by an interrupt condition.  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
--- ℹ **NOTE**: This hook isn't called when the engine schedule is failed, the schedule is cleared with NPC:ClearSchedule or NPC:SetSchedule has been called.  
function ENT:EngineScheduleFinish()
end

--- Called when an NPC's expression has finished.  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
--- @param strExp string @The path of the expression.
function ENT:ExpressionFinished(strExp)
end

--- Called before firing clientside animation events, such as muzzle flashes or shell ejections.  
--- See ENTITY:HandleAnimEvent for the serverside version.  
--- ℹ **NOTE**: This hook only works on "anim", "nextbot" and "ai" type entities.  
--- @param pos GVector @Position of the effect
--- @param ang GAngle @Angle of the effect
--- @param event number @The event ID of happened even
--- @param name string @Name of the event
--- @return boolean @Return true to disable the effect
function ENT:FireAnimationEvent(pos, ang, event, name)
end

--- Called to determine how good an NPC is at using a particular weapon.  
--- ℹ **NOTE**: "ai" base only  
--- @param wep GWeapon @The weapon being used by the NPC.
--- @param target GNPC @The target the NPC is attacking
--- @return number @The number of degrees of inaccuracy in the NPC's attack.
function ENT:GetAttackSpread(wep, target)
end

--- Called when scripted NPC needs to check how he "feels" against another entity, such as when NPC:Disposition is called.  
--- @param ent GEntity @The entity in question
--- @return ED @How our scripter NPC "feels" towards the entity in question
function ENT:GetRelationship(ent)
end

--- Specify a mesh that should be rendered instead of this SENT's model.  
--- @return table @A table containing the following keys:
function ENT:GetRenderMesh()
end

--- Called when the shadow needs to be recomputed. Allows shadow angles to be customized. This only works for `anim` type entities.  
--- @param type number @Type of the shadow this entity uses
--- @return GVector @The new shadow direction to use.
function ENT:GetShadowCastDirection(type)
end

--- Called every second to poll the sound hint interests of this SNPC. This is used in conjunction with other sound hint functions, such as sound.EmitHint and NPC:GetBestSoundHint.  
--- ℹ **NOTE**: This hook only exists for `ai` type SENTs  
--- @return number @A bitflag representing which sound types this NPC wants to react to
function ENT:GetSoundInterests()
end

--- Called by GM:GravGunPickupAllowed on ALL entites in Sandbox-derived  gamemodes and acts as an override.  
--- @param ply GPlayer @The player aiming at us
--- @return boolean @Return true to allow the entity to be picked up
function ENT:GravGunPickupAllowed(ply)
end

--- Called when this entity is about to be punted with the gravity gun (primary fire).  
--- Only works in Sandbox derived gamemodes and only if GM:GravGunPunt is not overridden.  
--- @param ply GPlayer @The player pressing left-click with the gravity gun at an entity
--- @return boolean @Return true or false to enable or disable punting respectively.
function ENT:GravGunPunt(ply)
end

--- Called before firing serverside animation events, such as weapon reload, drawing and holstering for NPCs, scripted sequences, etc.  
--- See ENTITY:FireAnimationEvent for the clientside version.  
--- ℹ **NOTE**: This hook only works on "anim", "ai" and "nextbot" type entities.  
--- @param event number @The event ID of happened even
--- @param eventTime number @The absolute time this event occurred using Global.CurTime.
--- @param cycle number @The frame this event occurred as a number between 0 and 1.
--- @param type number @Event type
--- @param options string @Name or options of this event.
--- @return boolean @Return true to mark the event as handled
function ENT:HandleAnimEvent(event, eventTime, cycle, type, options)
end

--- Called when a bullet trace hits this entity and allows you to override the default behavior by returning true.  
--- @param traceResult table @The trace that hit this entity as a Structures/TraceResult.
--- @param damageType number @The damage bits associated with the trace, see Enums/DMG
--- @param customImpactName? string @The effect name to override the impact effect with
--- @return boolean @Return true to override the default impact effects.
function ENT:ImpactTrace(traceResult, damageType, customImpactName)
end

--- Called when the entity is created. This is called when you Entity:Spawn the custom entity.  
--- This is called **after** ENTITY:SetupDataTables and GM:OnEntityCreated.  
function ENT:Initialize()
end

--- Called when deciding if the Scripted NPC should be able to perform a certain jump or not.  
--- ℹ **NOTE**: This is only called for "ai" type entities  
--- @param startPos GVector @Start of the jump
--- @param apex GVector @Apex point of the jump
--- @param endPos GVector @The landing position
--- @return boolean @Return true if this jump should be allowed to be performed, false otherwise
function ENT:IsJumpLegal(startPos, apex, endPos)
end

--- Called when the engine sets a value for this scripted entity.  
--- This hook is called **before** ENTITY:Initialize when the key-values are set by the map.  
--- Otherwise this hook will be called whenever Entity:SetKeyValue is called on the entity.  
--- See GM:EntityKeyValue for a hook that works for all entities.  
--- See WEAPON:KeyValue for a hook that works for scripted weapons.  
--- @param key string @The key that was affected.
--- @param value string @The new value.
--- @return boolean @Return true to suppress this KeyValue or return false or nothing to apply this key value.
function ENT:KeyValue(key, value)
end

--- Start the next task in specific schedule.  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
--- @param sched table @The schedule to start next task in.
function ENT:NextTask(sched)
end

--- Called when the currently active weapon of the SNPC changes.  
--- ℹ **NOTE**: This hook only works on `ai` type entities.  
--- @param old GWeapon @The previous active weapon.
--- @param new GWeapon @The new active weapon.
function ENT:OnChangeActiveWeapon(old, new)
end

--- Called when the NPC has changed its activity.  
--- ℹ **NOTE**: This hook only works for `ai` type entities.  
--- @param act number @The new activity
function ENT:OnChangeActivity(act)
end

--- Called each time the NPC updates its condition.  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
--- @param conditionID number @The ID of condition
function ENT:OnCondition(conditionID)
end

--- Called on any entity after it has been created by the duplicator and before any bone/entity modifiers have been applied.  
--- This hook is called after ENTITY:Initialize and before ENTITY:PostEntityPaste.  
--- @param entTable table @The stored data about the original entity that was duplicated
function ENT:OnDuplicated(entTable)
end

--- Called after duplicator finishes saving the entity, allowing you to modify the save data.  
--- This is called after ENTITY:PostEntityCopy.  
--- @param data table @The save Structures/EntityCopyData that you can modify.
function ENT:OnEntityCopyTableFinish(data)
end

--- Called when the SNPC completes its movement to its destination.  
--- ℹ **NOTE**: This hook only works on `ai` type entities.  
function ENT:OnMovementComplete()
end

--- Called when the SNPC failed to move to its destination.  
--- ℹ **NOTE**: This hook only works on `ai` type entities.  
function ENT:OnMovementFailed()
end

--- Called when the entity is reloaded by the lua auto-refresh system, i.e. when the developer edits the lua file for the entity while the game is running.  
function ENT:OnReloaded()
end

--- Called when the entity is about to be removed.  
--- See also Entity:CallOnRemove, which can even be used on engine (non-Lua) entities.  
--- <example>  
--- <description>Create an explosion when the entity will be removed. To create an entity, you can read ents.Create.</description>  
--- <code>  
--- function ENT:OnRemove()  
--- local explosion = ents.Create( "env_explosion" ) -- The explosion entity  
--- explosion:SetPos( self:GetPos() ) -- Put the position of the explosion at the position of the entity  
--- explosion:Spawn() -- Spawn the explosion  
--- explosion:SetKeyValue( "iMagnitude", "50" ) -- the magnitude of the explosion  
--- explosion:Fire( "Explode", 0, 0 ) -- explode  
--- end  
--- </code>  
--- </example>  
--- @param fullUpdate boolean @Whether the removal is happening due to a full update clientside
function ENT:OnRemove(fullUpdate)
end

--- Called when the entity is reloaded from a Source Engine save (not the Sandbox saves or dupes) or on a changelevel (for example Half-Life 2 campaign level transitions).  
--- For the duplicator callbacks, see ENTITY:OnDuplicated.  
function ENT:OnRestore()
end

--- Called by the engine when NPC's state changes.  
--- ℹ **NOTE**: This hook only exists for `ai` type SENTs.  
--- @param oldState number @The old state
--- @param newState number @The new state
function ENT:OnStateChange(oldState, newState)
end

--- Called when the entity is taking damage.  
--- ⚠ **WARNING**: Calling Entity:TakeDamage, Entity:TakeDamageInfo, Entity:DispatchTraceAttack, or Player:TraceHullAttack (if the entity is hit) in this hook on the victim entity can cause infinite loops since the hook will be called again. Make sure to setup recursion safeguards like the example below.  
--- ℹ **NOTE**: This hook is only called for `ai`, `nextbot` and `anim` type entities.  
--- @param damage GCTakeDamageInfo @The damage to be applied to the entity.
--- @return number @How much damage the entity took
function ENT:OnTakeDamage(damage)
end

--- Called from the engine when TaskComplete is called.  
--- This allows us to move onto the next task - even when TaskComplete was called from an engine side task.  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
function ENT:OnTaskComplete()
end

--- Called when a task this NPC was running has failed for whatever reason.  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
--- @param failCode number @The fail code for the task
--- @param failReason string @If set, a custom reason for the failure.
function ENT:OnTaskFailed(failCode, failReason)
end

--- Called to completely override NPC movement. This can be used for example for flying NPCs.  
--- ℹ **NOTE**: This hook only exists for `ai` type SENTs.  
--- @param interval number @Time interval for the movement, in seconds
--- @return boolean @Return `true` to disable the default movement code.
function ENT:OverrideMove(interval)
end

--- Called to completely override the direction NPC will be facing during navigation.  
--- ℹ **NOTE**: This hook only exists for `ai` type SENTs.  
--- ℹ **NOTE**: This hook is called by the default movement hook. Returning `true` inside ENTITY:OverrideMove will prevent engine from calling this hook.  
--- @param interval number @Time interval for the movement, in seconds
--- @param data table @Extra data for the movement
--- @return boolean @Return `true` to disable the default movement facing code.
function ENT:OverrideMoveFacing(interval, data)
end

--- Polls whenever the entity should trigger the brush.  
--- ⚠ **WARNING**: This hook is broken and will not work without code below  
--- @param ent GEntity @The entity that is about to trigger.
--- @return boolean @Should trigger or not.
function ENT:PassesTriggerFilters(ent)
end

--- Called when the entity collides with anything. The move type and solid type must be VPHYSICS for the hook to be called.  
--- ℹ **NOTE**: If you want to use this hook on default/engine/non-Lua entites ( like prop_physics ), use Entity:AddCallback instead! This page describes a hook for Lua entities  
--- @param colData table @Information regarding the collision
--- @param collider GPhysObj @The physics object that collided.
function ENT:PhysicsCollide(colData, collider)
end

--- Called from the Entity's motion controller to simulate physics.  
--- This will only be called after using Entity:StartMotionController on a scripted entity of `anim` type.  
--- ℹ **NOTE**: This hook can work on the CLIENT if you call Entity:StartMotionController and use Entity:AddToMotionController on the physics objects you want to control  
--- ⚠ **WARNING**: Do not use functions such as PhysObj:EnableCollisions or PhysObj:EnableGravity in this hook as they're very likely to crash your game. You may want to use ENTITY:PhysicsUpdate instead.  
--- @param phys GPhysObj @The physics object of the entity.
--- @param deltaTime number @Time since the last call.
--- @return GVector @Angular force
--- @return GVector @Linear force
--- @return number @One of the Enums/SIM.
function ENT:PhysicsSimulate(phys, deltaTime)
end

--- Called whenever the physics of the entity are updated.  
--- ⚠ **WARNING**: This hook won't be called if the Entity's PhysObj goes asleep  
--- @param phys GPhysObj @The physics object of the entity.
function ENT:PhysicsUpdate(phys)
end

--- Called after the duplicator finished copying the entity.  
--- See also ENTITY:PreEntityCopy, ENTITY:PostEntityPaste and ENTITY:OnEntityCopyTableFinish.  
function ENT:PostEntityCopy()
end

--- Called after the duplicator pastes the entity, after the bone/entity modifiers have been applied to the entity.  
--- This hook is called after ENTITY:OnDuplicated. See also ENTITY:PreEntityCopy.  
--- @param ply GPlayer @The player who pasted the entity
--- @param ent GEntity @The entity itself
--- @param createdEntities table @All entities that are within the placed dupe
function ENT:PostEntityPaste(ply, ent, createdEntities)
end

--- Called before the duplicator copies the entity.  
--- If you are looking for a way to make the duplicator spawn another entity when duplicated. (For example, you duplicate a `prop_physics`, but you want the duplicator to spawn `prop_physics_my`), you should add `prop_physics.ClassOverride = "prop_physics_my"`. The duplication table should be also stored on that `prop_physics`, not on `prop_physics_my`.  
--- See also ENTITY:PostEntityCopy.  
function ENT:PreEntityCopy()
end

--- Called instead of the engine drawing function of the entity. This hook works on any entity (scripted or not) it is applied on.  
--- This does not work on "physgun_beam", use GM:DrawPhysgunBeam instead.  
--- ℹ **NOTE**: As a downside of this implementation, only one RenderOverride may be applied at a time.  
--- 🦟 **BUG**: [Drawing a viewmodel in this function will cause GM:PreDrawViewModel, WEAPON:PreDrawViewModel, WEAPON:ViewModelDrawn, GM:PostDrawViewModel, and WEAPON:PostDrawViewModel to be called twice.](https://github.com/Facepunch/garrysmod-issues/issues/3292)  
--- 🦟 **BUG**: [This is called before PrePlayerDraw for players. If this function exists at all on a player, their worldmodel will always be rendered regardless of PrePlayerDraw's return.](https://github.com/Facepunch/garrysmod-issues/issues/3299)  
--- @param flags number @The STUDIO_ flags for this render operation.
function ENT:RenderOverride(flags)
end

--- Called from the engine every 0.1 seconds. Returning `true` inside this hook will allow `CAI_BaseNPC::MaintainSchedule` to also be called.  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
function ENT:RunAI()
end

--- Called when an engine task is ran on the entity.  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
--- @param taskID number @The task ID, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/serv
--- @param taskData number @The task data.
--- @return boolean @true to prevent default action
function ENT:RunEngineTask(taskID, taskData)
end

--- Called every think on running task.  
--- The actual task function should tell us when the task is finished.  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
--- @param task table @The task to run
function ENT:RunTask(task)
end

--- Called whenever a Lua schedule is finished or ENTITY:StartEngineSchedule is called. Clears out schedule and task data stored within NPC's table.  
--- ℹ **NOTE**: This is a helper function only available if your SENT is based on `base_ai`  
function ENT:ScheduleFinished()
end

--- Set the schedule we should be playing right now. Allows the NPC to start either a Lua schedule or an engine schedule. Despite sharing the same name as `CAI_BaseNPC::SelectSchedule()`, this isn't hooked to that function; this is called by Lua's ENTITY:RunAI, doesn't return an engine function, returning an engine function doesn't help and doesn't make the NPC start an engine schedule. To alter initial engine schedule, it is recommended to use ENTITY:TranslateSchedule.  
--- ℹ **NOTE**: This is a helper function only available if your SENT is based on `base_ai`  
function ENT:SelectSchedule()
end

--- Toggles automatic frame advancing for animated sequences on an entity.  
--- This has the same effect as setting the ``ENT.AutomaticFrameAdvance`` property. (See Structures/ENT)  
--- @param enable boolean @Whether or not to set automatic frame advancing.
function ENT:SetAutomaticFrameAdvance(enable)
end

--- Sets the current task.  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
--- @param task table @The task to set.
function ENT:SetTask(task)
end

--- Called when the entity should set up its  Data Tables.  
--- This is a much better option than using Set/Get Networked Values.  
--- This hook is called after GM:OnEntityCreated and GM:NetworkEntityCreated.  
function ENT:SetupDataTables()
end

--- This is the spawn function. It's called when a player spawns the entity from the spawnmenu.  
--- If you want to make your SENT spawnable you need this function to properly create the entity.  
--- ⚠ **WARNING**: Unlike other ENTITY functions, the "self" parameter of this function is not an entity but rather the table used to generate the SENT. This table is equivalent to scripted_ents.GetStored("ent_name").  
--- @param ply GPlayer @The player that is spawning this SENT
--- @param tr table @A Structures/TraceResult from player eyes to their aim position
--- @param ClassName string @The classname of your entity
function ENT:SpawnFunction(ply, tr, ClassName)
end

--- Called by the engine only whenever NPC:SetSchedule is called.  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
--- @param scheduleID number @Schedule ID to start
function ENT:StartEngineSchedule(scheduleID)
end

--- Called when an engine task has been started on the entity.  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
--- @param taskID number @Task ID to start, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game
--- @param TaskData number @Task data
--- @return boolean @true to stop default action
function ENT:StartEngineTask(taskID, TaskData)
end

--- Starts a schedule previously created by ai_schedule.New.  
--- Not to be confused with ENTITY:StartEngineSchedule or NPC:SetSchedule which start an Engine-based schedule.  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
--- @param sched GSchedule @Schedule to start.
function ENT:StartSchedule(sched)
end

--- Called once on starting task.  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
--- @param task GTask @The task to start, created by ai_task.New.
function ENT:StartTask(task)
end

--- Called when the entity starts touching another entity.  
--- ⚠ **WARNING**: This only works for **brush** entities and for entities that have Entity:SetTrigger set to true.  
--- @param entity GEntity @The entity which is being touched.
function ENT:StartTouch(entity)
end

--- Used to store an output so it can be triggered with ENTITY:TriggerOutput.  
--- Outputs compiled into a map are passed to entities as key/value pairs through ENTITY:KeyValue.  
--- TriggerOutput will do nothing if this function has not been called first.  
--- @param name string @Name of output to store
--- @param info string @Output info
function ENT:StoreOutput(name, info)
end

--- Returns true if the current running Task is finished.  
--- Tasks finish whenever NPC:TaskComplete is called, which sets `TASKSTATUS_COMPLETE` for all NPCs, also sets `self.bTaskComplete` for `ai` type [SENTs](Scripted_Entities).  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
--- @return boolean @Is the current running Task is finished or not.
function ENT:TaskFinished()
end

--- Returns how many seconds we've been doing this current task  
--- ℹ **NOTE**: This hook only exists for `ai` type [SENTs](Scripted_Entities).  
--- @return number @How many seconds we've been doing this current task
function ENT:TaskTime()
end

--- Allows you to override trace result when a trace hits the entity.  
--- Your entity **must** have Entity:EnableCustomCollisions enabled for this hook to work.  
--- Your entity must also be otherwise "hit-able" with a trace, so it should have SOLID_OBB or SOLID_VPHYSICS be set (as an example), and it must have its collision bounds be set accordingly.  
--- ℹ **NOTE**: This hook is called for `anim` type only.  
--- @param startpos GVector @Start position of the trace.
--- @param delta GVector @Offset from startpos to the endpos of the trace.
--- @param isbox boolean @Is the trace a hull trace?
--- @param extents GVector @Size of the hull trace, with the center of the Bounding Box being `0, 0, 0`, so mins are `-extents`, and maxs are `extents`.
--- @param mask number @The Enums/CONTENTS mask.
--- @return table @Returning a `table` will allow you to override trace results
function ENT:TestCollision(startpos, delta, isbox, extents, mask)
end

--- Called every frame on the client.  
--- Called about 5-6 times per second on the server.  
--- ℹ **NOTE**: You may need to call Entity:Spawn to get this hook to run server side.  
--- You can force it to run at servers tickrate using the example below.  
--- @return boolean @Return `true` if you used Entity:NextThink to override the next execution time.
function ENT:Think()
end

--- Called every tick for every entity being "touched".  
--- See also ENTITY:StartTouch and ENTITY:EndTouch.  
--- ℹ **NOTE**: For physics enabled entities, this hook will **not** be ran while the entity's physics is asleep. See PhysObj:Wake.  
--- @param entity GEntity @The entity that touched it.
function ENT:Touch(entity)
end

--- Called by the engine to alter NPC activities, if desired by the NPC.  
--- ℹ **NOTE**: This hook only exists for `ai` type SENTs.  
--- @param oldAct EACT @The activity to translate.
--- @return EACT @The activity that should override the incoming activity
function ENT:TranslateActivity(oldAct)
end

--- Called by the engine to alter NPC's final position to reach its enemy or target. This is called twice for `GOALTYPE_PATHCORNER`; first is for the first path_corner and second for the next connected path_corner.  
--- ℹ **NOTE**: This hook only exists for `ai` type SENTs.  
--- @param target? GNPC|GEntity @The enemy being chased or the path_corner in query.
--- @param currentGoal? GVector @The target's origin.
--- @return GVector @The actual point that NPC will move to reach its enemy or target
function ENT:TranslateNavGoal(target, currentGoal)
end

--- Called by the engine to alter NPC schedules, if desired by the NPC.  
--- ℹ **NOTE**: This hook only exists for `ai` type SENTs.  
--- @param schedule ESCHED @The schedule to translate
--- @return ESCHED @The schedule that should override the incoming schedule
function ENT:TranslateSchedule(schedule)
end

--- Triggers all outputs stored using ENTITY:StoreOutput.  
--- @param output string @Name of output to fire
--- @param activator GEntity @Activator entity
--- @param data? string @The data to give to the output.
function ENT:TriggerOutput(output, activator, data)
end

--- Called whenever the transmit state should be updated.  
--- @return number @Transmit state to set, see Enums/TRANSMIT.
function ENT:UpdateTransmitState()
end

--- Called when an entity "uses" this entity, for example a player pressing their `+use` key (default `E`) on this entity.  
--- To change how often the hook is called, see Entity:SetUseType.  
--- ℹ **NOTE**: This hook only works for `nextbot`, `ai` and `anim` scripted entity types.  
--- @param activator GEntity @The entity that caused this input
--- @param caller GEntity @The entity responsible for the input
--- @param useType EUSE @Use type, see Enums/USE.
--- @param value number @Any passed value.
function ENT:Use(activator, caller, useType, value)
end
