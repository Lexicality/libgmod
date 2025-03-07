--- @meta

--- @class GEntity
--- This is a list of all available methods for all entities, which includes Players, Weapons, NPCs and Vehicles.  
--- For a list of possible members of Scripted Entities see ENT Structure  
local GEntity = {}
--- Activates the entity. This needs to be used on some entities (like constraints) after being spawned.  
--- ℹ **NOTE**: For some entity types when this function is used after Entity:SetModelScale, the physics object will be recreated with the new scale. [Source-sdk-2013](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/server/baseanimating.cpp#L321-L327).  
--- Calling this method after Entity:SetModelScale will recreate a new scaled `SOLID_VPHYSICS` PhysObj on scripted entities. This can be a problem if you made a properly scaled PhysObj of another kind (using Entity:PhysicsInitSphere for instance) or if you edited the PhysObj's properties. This is especially the behavior of the Sandbox spawn menu.  
function GEntity:Activate()
end

--- Add a callback function to a specific event. This is used instead of hooks to avoid calling empty functions unnecessarily.  
--- This also allows you to use certain hooks in engine entities (non-scripted entities).  
--- ⚠ **WARNING**: This method does not check if the function has already been added to this object before, so if you add the same callback twice, it will be run twice! Make sure to add your callback only once.  
--- @param hook string @The hook name to hook onto
--- @param func function @The function to call
--- @return number @The callback ID that was just added, which can later be used in Entity:RemoveCallback
function GEntity:AddCallback(hook, func)
end

--- Adds engine flags.  
--- @param flag number @Engine flag to add, see Enums/EFL
function GEntity:AddEFlags(flag)
end

--- Applies an engine effect to an entity.  
--- See also Entity:IsEffectActive and  Entity:RemoveEffects.  
--- @param effect number @The effect to apply, see Enums/EF.
function GEntity:AddEffects(effect)
end

--- Adds flags to the entity.  
--- @param flag number @Flag to add, see Enums/FL
function GEntity:AddFlags(flag)
end

--- Adds a gesture animation to the entity and plays it.  
--- See Entity:AddGestureSequence and Entity:AddLayeredSequence for functions that takes sequences instead of Enums/ACT.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param activity number @The activity to play as the gesture
--- @param autokill? boolean 
--- @return number @Layer ID of the started gesture, used to manipulate the played gesture by other functions.
function GEntity:AddGesture(activity, autokill)
end

--- Adds a gesture animation to the entity and plays it.  
--- See Entity:AddGesture for a function that takes Enums/ACT.  
--- See also Entity:AddLayeredSequence.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param sequence number @The sequence ID to play as the gesture
--- @param autokill? boolean 
--- @return number @Layer ID of the started gesture, used to manipulate the played gesture by other functions.
function GEntity:AddGestureSequence(sequence, autokill)
end

--- Adds a gesture animation to the entity and plays it.  
--- See Entity:AddGestureSequence for a function that doesn't take priority.  
--- See Entity:AddGesture for a function that takes Enums/ACT.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param sequence number @The sequence ID to play as the gesture
--- @param priority number 
--- @return number @Layer ID of created layer
function GEntity:AddLayeredSequence(sequence, priority)
end

--- Adds solid flag(s) to the entity.  
--- @param flags number @The flag(s) to apply, see Enums/FSOLID.
function GEntity:AddSolidFlags(flags)
end

--- Adds onto the current SpawnFlags of an Entity.  
--- SpawnFlags can easily be found on https://developer.valvesoftware.com/wiki/.  
--- ℹ **NOTE**: See also Entity:RemoveSpawnFlags, Entity:SetSpawnFlags  
--- Using SF Enumerations won't work, if this function is ran clientside due to the enumerations being defined only Serverside. Use the actual SpawnFlag number.  
--- @param flag number @The SpawnFlag to add to the Entity
function GEntity:AddSpawnFlags(flag)
end

--- Adds a PhysObject to the entity's motion controller so that ENTITY:PhysicsSimulate will be called for given PhysObject as well.  
--- You must first create a motion controller with Entity:StartMotionController.  
--- You can remove added PhysObjects by using Entity:RemoveFromMotionController.  
--- ℹ **NOTE**: Only works on a scripted Entity of anim type  
--- @param physObj GPhysObj @The PhysObj to add to the motion controller.
function GEntity:AddToMotionController(physObj)
end

--- Returns an angle based on the ones inputted that you can use to align an object.  
--- ℹ **NOTE**: This function doesn't change the angle of the entity on its own (see example).  
--- @param from GAngle @The angle you want to align from
--- @param to GAngle @The angle you want to align to
--- @return GAngle @The resulting aligned angle
function GEntity:AlignAngles(from, to)
end

--- Checks if the entity is considered alive.  
--- Checks entity's internal life state variable. Does not check health, but it is generally expected the health to be 0 or below at the point of an entity being considered dead.  
--- @return boolean @Whether the entity is considered alive.
function GEntity:Alive()
end

--- Spawns a clientside ragdoll for the entity, positioning it in place of the original entity, and makes the entity invisible. It doesn't preserve flex values (face posing) as CSRagdolls don't support flex.  
--- It does not work on players. Use Player:CreateRagdoll instead.  
--- The original entity is not removed, and neither are any ragdolls previously generated with this function.  
--- To make the entity re-appear, run Entity:SetNoDraw( false )  
--- @return GEntity @The created ragdoll
function GEntity:BecomeRagdollOnClient()
end

--- Returns true if the entity is being looked at by the local player and is within 256 units of distance.  
--- ℹ **NOTE**: This function is only available in entities that are based off of sandbox's base_gmodentity.  
--- @return boolean @Is the entity being looked at by the local player and within 256 units.
function GEntity:BeingLookedAtByLocalPlayer()
end

--- Returns a centered vector of this entity, NPCs use this internally to aim at their targets.  
--- ℹ **NOTE**: This only works on players and NPCs.  
--- @param origin GVector @The vector of where the the attack comes from.
--- @param noisy? boolean @Decides if it should return the centered vector with a random offset to it.
--- @return GVector @The centered vector.
function GEntity:BodyTarget(origin, noisy)
end

--- Returns whether the entity's bone has the flag or not.  
--- @param boneID number @Bone ID to test flag of.
--- @param flag number @The flag to test, see Enums/BONE
--- @return boolean @Whether the bone has that flag or not
function GEntity:BoneHasFlag(boneID, flag)
end

--- Returns the length between given bone's position and the position of given bone's parent.  
--- @param boneID number @The ID of the bone you want the length of
--- @return number @The length of the bone
function GEntity:BoneLength(boneID)
end

--- Returns the distance between the center of the bounding box and the furthest bounding box corner.  
--- @return number @The radius of the bounding box.
function GEntity:BoundingRadius()
end

--- Calls all Entity:NetworkVarNotify functions with the given new value, but doesn't change the real value.  
--- @param type string @The NetworkVar Type
--- @param slot number @The NetworkVar slot
--- @param newValue any @The new value.
function GEntity:CallDTVarProxies(type, slot, newValue)
end

--- Causes a specified function to be run if the entity is removed by any means. This can later be undone by Entity:RemoveCallOnRemove if you need it to not run.  
--- ⚠ **WARNING**: This hook is called clientside during full updates. See GM:EntityRemoved for more information.  
--- @param identifier string @Identifier that can be optionally used with Entity:RemoveCallOnRemove to undo this call on remove.
--- @param removeFunc function @Function to be called on remove
--- @vararg any @Optional arguments to pass to removeFunc
function GEntity:CallOnRemove(identifier, removeFunc, ...)
end

--- Clears all registered events for map I/O outputs on this entity. If a string is given, will use the string as a wildcard to limit removed outputs by name matches.  
--- @param outputName? string @An optional string that will be used to limit removed outputs by name matches, supports wildcards.
function GEntity:ClearAllOutputs(outputName)
end

--- Resets all pose parameters such as aim_yaw, aim_pitch and rotation.  
function GEntity:ClearPoseParameters()
end

--- Declares that the collision rules of the entity have changed, and subsequent calls for GM:ShouldCollide with this entity may return a different value than they did previously.  
--- ⚠ **WARNING**: This function must **not** be called inside of GM:ShouldCollide. Instead, it must be called in advance when the condition is known to change.  
--- ⚠ **WARNING**: Failure to use this function correctly will result in a crash of the physics engine.  
function GEntity:CollisionRulesChanged()
end

--- Creates bone followers based on the current entity model.  
--- Bone followers are physics objects that follow the visual mesh. This is what is used by `prop_dynamic` for things like big combine doors for vehicles with multiple physics objects which follow the visual mesh of the door when it animates.  
--- Be mindful that bone followers create a separate entity (`phys_bone_follower`) for each physics object.  
--- You must call Entity:UpdateBoneFollowers every tick for bone followers to update their positions.  
--- ℹ **NOTE**: This function only works on `anim`, `nextbot` and `ai` type entities.  
--- @param bone_whitelist? table @If set, a whitelist of bone names to create bone followers for
function GEntity:CreateBoneFollowers(bone_whitelist)
end

--- Creates a clientside particle system attached to the entity. See also Global.CreateParticleSystem  
--- ℹ **NOTE**: The particle effect must be precached with Global.PrecacheParticleSystem and the file its from must be added via game.AddParticles before it can be used!  
--- @param particle string @The particle name to create
--- @param attachment number @Attachment ID to attach the particle to
--- @param options? table @A table of tables ( IDs 1 to 64 ) having the following structure:
--- @return GCNewParticleEffect @The created particle system.
function GEntity:CreateParticleEffect(particle, attachment, options)
end

--- Draws the shadow of an entity.  
function GEntity:CreateShadow()
end

--- Returns whether the entity was created by map or not.  
--- @return boolean @Is created by map?
function GEntity:CreatedByMap()
end

--- Whenever the entity is removed, entityToRemove will be removed also.  
--- @param entityToRemove GEntity @The entity to be removed
function GEntity:DeleteOnRemove(entityToRemove)
end

--- Destroys bone followers created by Entity:CreateBoneFollowers.  
--- ℹ **NOTE**: This function only works on `anim` type entities.  
function GEntity:DestroyBoneFollowers()
end

--- Removes the shadow for the entity.  
--- The shadow will be recreated as soon as the entity wakes.  
--- ℹ **NOTE**: Doesn't affect shadows from flashlight/lamps/env_projectedtexture.  
function GEntity:DestroyShadow()
end

--- Disables an active matrix.  
--- @param matrixType string @The name of the matrix type to disable
function GEntity:DisableMatrix(matrixType)
end

--- Performs a trace attack towards the entity this function is called on, as if an invisible bullet is shot towards it. Visually identical to Entity:TakeDamageInfo.  
--- ⚠ **WARNING**: Calling this function on the victim entity in ENTITY:OnTakeDamage can cause infinite loops.  
--- ℹ **NOTE**: This function correctly applies damage to [func_breakable_surf](https://developer.valvesoftware.com/wiki/Func_breakable_surf) entities, unlike Entity:TakeDamageInfo.  
--- @param damageInfo GCTakeDamageInfo @The damage to apply.
--- @param traceRes table @Trace result to use to deal damage
--- @param dir? GVector @Direction of the attack.
function GEntity:DispatchTraceAttack(damageInfo, traceRes, dir)
end

--- Dissolves the entity.  
--- This function creates `env_entity_dissolver` entity internally.  
--- @param type? number @Dissolve type
--- @param magnitude? number @Magnitude of the dissolve effect, its effect depends on the dissolve type.
--- @param origin? GVector @The origin for the dissolve effect, its effect depends on the dissolve type
function GEntity:Dissolve(type, magnitude, origin)
end

--- This removes the argument entity from an ent's list of entities to 'delete on remove'  
--- ℹ **NOTE**: Also see Entity:DeleteOnRemove  
--- @param entityToUnremove GEntity @The entity to be removed from the list of entities to delete
function GEntity:DontDeleteOnRemove(entityToUnremove)
end

--- Draws the entity or model.  
--- If called inside ENTITY:Draw or ENTITY:DrawTranslucent, it only draws the entity's model itself.  
--- If called outside of those hooks, it will call both of said hooks depending on Entity:GetRenderGroup, drawing the entire entity again.  
--- When drawing an entity more than once per frame in different positions, you should call Entity:SetupBones before each draw; Otherwise, the entity will retain its first drawn position.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- 🦟 **BUG**: [Calling this on entities with EF_BONEMERGE and EF_NODRAW applied causes a crash.](https://github.com/Facepunch/garrysmod-issues/issues/1558)  
--- 🦟 **BUG**: [Using this with a map model (game.GetWorld():GetModel()) crashes the game.](https://github.com/Facepunch/garrysmod-issues/issues/2688)  
--- @param flags? number @The optional STUDIO_ flags, usually taken from ENTITY:Draw and similar hooks.
function GEntity:DrawModel(flags)
end

--- Sets whether an entity's shadow should be drawn.  
--- @param shouldDraw boolean @True to enable, false to disable shadow drawing.
function GEntity:DrawShadow(shouldDraw)
end

--- Move an entity down until it collides with something.  
--- ⚠ **WARNING**: The entity needs to already have something below it within 256 units.  
function GEntity:DropToFloor()
end

--- Plays a sound on an entity.  
--- If run clientside, the sound will only be heard locally.  
--- If used on a player or NPC character with the mouth rigged, the character will "lip-sync" if the sound file contains lipsync data. See [this page](https://developer.valvesoftware.com/wiki/Choreography_creation/Lip_syncing) for more information.  
--- ℹ **NOTE**: When using this function with weapons, use the Weapon itself as the entity, not its owner!  
--- 🦟 **BUG**: [This does not respond to Global.SuppressHostEvents.](https://github.com/Facepunch/garrysmod-issues/issues/2651)  
--- @param soundName string @The name of the sound to be played
--- @param soundLevel? number @A modifier for the distance this sound will reach, acceptable range is 0 to 511
--- @param pitchPercent? number @The pitch applied to the sound
--- @param volume? number @The volume, from 0 to 1.
--- @param channel? number @The sound channel, see Enums/CHAN
--- @param soundFlags? number @The flags of the sound, see Enums/SND
--- @param dsp? number @The DSP preset for this sound
--- @param filter? GCRecipientFilter @If set serverside, the sound will only be networked to the clients in the filter.
function GEntity:EmitSound(soundName, soundLevel, pitchPercent, volume, channel, soundFlags, dsp, filter)
end

--- Toggles the constraints of this ragdoll entity on and off.  
--- @param toggleConstraints boolean @Set to true to enable the constraints and false to disable them
function GEntity:EnableConstraints(toggleConstraints)
end

--- Flags an entity as using custom lua defined collisions. Fixes entities having spongy player collisions or not hitting traces, such as after Entity:PhysicsFromMesh  
--- Internally identical to `Entity:AddSolidFlags( bit.bor( FSOLID_CUSTOMRAYTEST, FSOLID_CUSTOMBOXTEST ) )`  
--- Do not confuse this function with Entity:SetCustomCollisionCheck, they are not the same.  
function GEntity:EnableCustomCollisions()
end

--- Can be used to apply a custom VMatrix to the entity, mostly used for scaling the model by a Vector.  
--- To disable it, use Entity:DisableMatrix.  
--- If your old scales are wrong due to a recent update, use Entity:SetLegacyTransform as a quick fix.  
--- ℹ **NOTE**: The matrix can also be modified to apply a custom rotation and offset via the VMatrix:SetAngles and VMatrix:SetTranslation functions.  
--- 🦟 **BUG**: [This does not scale procedural bones, and disables inverse kinematics of the entity.](https://github.com/Facepunch/garrysmod-issues/issues/3502)  
--- @param matrixType string @The name of the matrix type
--- @param matrix GVMatrix @The matrix to apply before drawing the entity.
function GEntity:EnableMatrix(matrixType, matrix)
end

--- Gets the unique entity index of an entity.  
--- ℹ **NOTE**: Entity indices are marked as unused after deletion, and can be reused by newly-created entities  
--- @return number @The index of the entity
function GEntity:EntIndex()
end

--- Extinguishes the entity if it is on fire.  
--- Has no effect if called inside GM:EntityTakeDamage (and the attacker is the flame that's hurting the entity)  
--- See also Entity:Ignite.  
function GEntity:Extinguish()
end

--- Returns the direction a player, npc or ragdoll is looking as a world-oriented angle.  
--- 🦟 **BUG**: [This can return an incorrect value in vehicles (like pods, buggy, ...). **This bug has been fixed in the past but was causing many addons being broken, so the fix has been removed but applied to Player:GetAimVector only**.](https://github.com/Facepunch/garrysmod-issues/issues/1150)  
--- 🦟 **BUG**: [This may return local angles in jeeps when used with Player:EnterVehicle. **A workaround is available in the second example.**](https://github.com/Facepunch/garrysmod-issues/issues/2620)  
--- @return GAngle @Player's eye angle.
function GEntity:EyeAngles()
end

--- Returns the position of an Player/NPC's view.  
--- @return GVector @View position of the entity.
function GEntity:EyePos()
end

--- Searches the Entity's model for a Body Group with a given name.  
--- ℹ **NOTE**: Weapons will return results from their viewmodels.  
--- @param name string @The name to search for.
--- @return number @The Body Group's ID or `-1` if no Body Group has the provided name.
function GEntity:FindBodygroupByName(name)
end

--- Returns a transition from the given start and end sequence.  
--- This function was only used by HL1 entities and NPCs, before the advent of sequence blending and gestures.  
--- @param currentSequence number @The currently playing sequence
--- @param goalSequence number @The goal sequence.
--- @return number @The transition sequence, -1 if not available.
function GEntity:FindTransitionSequence(currentSequence, goalSequence)
end

--- Fires an entity's input, conforming to the map IO event queue system. You can find inputs for most entities on the [Valve Developer Wiki](https://developer.valvesoftware.com/wiki/Output)  
--- See also Entity:Input for a function that bypasses the event queue and GM:AcceptInput.  
--- @param input string @The name of the input to fire
--- @param param? string @The value to give to the input, can also be a number or a boolean.
--- @param delay? number @Delay in seconds before firing
--- @param activator? GEntity @The entity that caused this input (i.e
--- @param caller? GEntity @The entity that is triggering this input (i.e
function GEntity:Fire(input, param, delay, activator, caller)
end

--- Fires a bullet.  
--- When used in a  hook such as WEAPON:Think or WEAPON:PrimaryAttack, it will use Player:LagCompensation internally.  
--- ℹ **NOTE**: Lag compensation will not work if this function is called in a timer, regardless if the timer was made in a  hook.  
--- ℹ **NOTE**: Due to how FireBullets is set up internally, bullet tracers will always originate from attachment 1.  
--- @param bulletInfo table @The bullet data to be used
--- @param suppressHostEvents? boolean @Has the effect of encasing the FireBullets call in Global.SuppressHostEvents, only works in multiplayer.
function GEntity:FireBullets(bulletInfo, suppressHostEvents)
end

--- Makes an entity follow another entity's bone.  
--- Internally this function calls Entity:SetParent( parent, boneid ), Entity:AddEffects( EF_FOLLOWBONE  
--- ) and sets an internal flag to always rebuild all bones.  
--- ℹ **NOTE**: If the entity vibrates or stops following the parent, you probably need to run Entity:SetPredictable( true ) clientside.  
--- ⚠ **WARNING**: This function will not work if the target bone's parent bone is invalid or if the bone is not used by VERTEX LOD0  
--- @param parent? GEntity @The entity to follow the bone of
--- @param boneid? number @The bone to follow
function GEntity:FollowBone(parent, boneid)
end

--- Forces the entity to be dropped, if it is being held by a player's Gravity Gun, Physics Gun or `+use` pickup.  
--- See also Player:DropObject.  
function GEntity:ForcePlayerDrop()
end

--- Advances the cycle of an animated entity.  
--- Animations that loop will automatically reset the cycle so you don't have to - ones that do not will stop animating once you reach the end of their sequence.  
--- ⚠ **WARNING**: Do not call this function multiple times a frame, as it can cause unexpected results, such as animations playing at increased rate, etc.  
--- NextBot:BodyMoveXY calls this internally, so do not call this function before or after NextBot:BodyMoveXY.  
function GEntity:FrameAdvance()
end

--- Returns the entity's velocity.  
--- ℹ **NOTE**: Actually binds to CBaseEntity::GetLocalVelocity() which retrieves the velocity of the entity due to its movement in the world from forces such as gravity. Does not include velocity from entity-on-entity collision.  
--- @return GVector @The velocity of the entity.
function GEntity:GetAbsVelocity()
end

--- Gets the angles of given entity.  
--- 🦟 **BUG**: [This returns incorrect results for the local player clientside.](https://github.com/Facepunch/garrysmod-issues/issues/2764)  
--- 🦟 **BUG**: [This will return the local player's Global.EyeAngles in rendering hooks.](https://github.com/Facepunch/garrysmod-issues/issues/3106)  
--- 🦟 **BUG**: [This will return Global.Angle(0,0,0) in rendering hooks while paused in single-player.](https://github.com/Facepunch/garrysmod-issues/issues/3107)  
--- @return GAngle @The angles of the entity.
function GEntity:GetAngles()
end

--- Returns the amount of animations (not to be confused with sequences) the entity's model has. A sequence can consist of multiple animations.  
--- See also Entity:GetAnimInfo  
--- @return number @The amount of animations the entity's model has.
function GEntity:GetAnimCount()
end

--- Returns a table containing the number of frames, flags, name, and FPS of an entity's animation ID.  
--- ℹ **NOTE**: Animation ID is not the same as sequence ID. See Entity:GetAnimCount  
--- @param animIndex number @The animation ID to look up, starting at 0.
--- @return table|nil @Information about the animation, or `nil` if the index is out of bounds
function GEntity:GetAnimInfo(animIndex)
end

--- Returns the last time the entity had an animation update. Returns 0 if the entity doesn't animate.  
--- @return number @The last time the entity had an animation update.
function GEntity:GetAnimTime()
end

--- Returns the amount of time since last animation.  
--- Works only on `CBaseAnimating` entities.  
--- @return number @The amount of time since last animation.
function GEntity:GetAnimTimeInterval()
end

--- Gets the orientation and position of the attachment by its ID, returns nothing if the attachment does not exist.  
--- ℹ **NOTE**: The update rate of this function is limited by the setting of ENT.AutomaticFrameAdvance for Scripted Entities!  
--- 🦟 **BUG**: [This will return improper values for viewmodels if used in GM:CalcView.](https://github.com/Facepunch/garrysmod-issues/issues/1255)  
--- @param attachmentId number @The internal ID of the attachment.
--- @return table @The angle and position of the attachment
function GEntity:GetAttachment(attachmentId)
end

--- Returns a table containing all attachments of the given entity's model.  
--- Returns an empty table or **nil** in case its model has no attachments.  
--- 🦟 **BUG**: [This can have inconsistent results in single-player.](https://github.com/Facepunch/garrysmod-issues/issues/3167)  
--- @return table @Attachment data
function GEntity:GetAttachments()
end

--- Returns the entity's base velocity which is their velocity due to forces applied by other entities. This includes entity-on-entity collision or riding a treadmill.  
--- @return GVector @The base velocity of the entity.
function GEntity:GetBaseVelocity()
end

--- Returns the blood color of this entity. This can be set with Entity:SetBloodColor.  
--- @return number @Color from Enums/BLOOD_COLOR
function GEntity:GetBloodColor()
end

--- Returns a list of information about each Body Group present on the Entity's model.  
--- ℹ **NOTE**: Weapons will return results from their viewmodels.  
--- @return table @A table of Body Group information where each value is a Structures/BodyGroupData.
function GEntity:GetBodyGroups()
end

--- Returns the Sub Model ID for the currently active Sub Model of the Body Group corresponding to the given Body Group ID.  
--- ℹ **NOTE**: Weapons will return results from their viewmodels.  
--- @param bodyGroupId number @The Body Group ID to retrieve the active Sub Model ID for
--- @return number @The currently active Sub Model ID
function GEntity:GetBodygroup(bodyGroupId)
end

--- Returns the number of Sub Models in the Body Group corresponding to a given Body Group ID of the Entity's model.  
--- ℹ **NOTE**: Weapons will return results from their viewmodels.  
--- @param bodyGroupId number @The Body Group ID to retrieve the Sub Model count of
--- @return number @The number of Sub Models in the Body Group.
function GEntity:GetBodygroupCount(bodyGroupId)
end

--- Retrieves the name of the Body Group corresponding to a given Body Group ID on the Entity's model.  
--- ℹ **NOTE**: Weapons will return results from their viewmodels.  
--- @param bodyGroupId number @The Body Group ID to get the name of.
--- @return string @The name of the Body Group.
function GEntity:GetBodygroupName(bodyGroupId)
end

--- Returns the contents of the specified bone.  
--- @param bone number @The bone id, starting at index 0
--- @return number @The contents as a Enums/CONTENTS or 0 on failure.
function GEntity:GetBoneContents(bone)
end

--- Returns the value of the bone controller with the specified ID.  
--- ℹ **NOTE**: This is the precursor of pose parameters, and only works for Half Life 1: Source models supporting it.  
--- @param boneID number @ID of the bone controller
--- @return number @The value set on the bone controller.
function GEntity:GetBoneController(boneID)
end

--- Returns the amount of bones in the entity.  
--- ℹ **NOTE**: Will return `0` for Global.ClientsideModel or undrawn entities until Entity:SetupBones is called on the entity.  
--- @return number @The amount of bones in given entity.
function GEntity:GetBoneCount()
end

--- Returns the transformation matrix of a given bone on the entity's model. The matrix contains the transformation used to position the bone in the world. It is not relative to the parent bone.  
--- This is equivalent to constructing a VMatrix using Entity:GetBonePosition.  
--- 🦟 **BUG**: [This can return the server's matrix during server lag.](https://github.com/Facepunch/garrysmod-issues/issues/884)  
--- 🦟 **BUG**: [This can return garbage serverside or a 0,0,0 fourth column (represents position) for v49 models.](https://github.com/Facepunch/garrysmod-issues/issues/3285)  
--- @param boneID number @The bone ID to retrieve matrix of, starting at index 0
--- @return GVMatrix @The matrix
function GEntity:GetBoneMatrix(boneID)
end

--- Returns name of given bone id.  
--- See Entity:LookupBone for the inverse of this function.  
--- @param index number @ID of bone to lookup name of, starting at index 0.
--- @return string @The name of given bone
function GEntity:GetBoneName(index)
end

--- Returns parent bone of given bone.  
--- ℹ **NOTE**: Will return -1 for Global.ClientsideModel until Entity:SetupBones is called on the entity.  
--- @param bone number @The bone ID of the bone to get parent of, starting at index 0.
--- @return number @Parent bone ID or -1 if we failed for some reason.
function GEntity:GetBoneParent(bone)
end

--- Returns the position and angle of the given attachment, relative to the world.  
--- ⚠ **WARNING**: This function can return entity's `GetPos()` instead if the entity doesn't have it's bone cache set up.  
--- To ensure the bone position is correct use this:  
--- ```lua  
--- local pos = ent:GetBonePosition(0)  
--- if pos == ent:GetPos() then  
--- pos = ent:GetBoneMatrix(0):GetTranslation()  
--- end  
--- ```  
--- ℹ **NOTE**: This function returns the bone position from the last tick, so if your framerate is higher than the server's tickrate it may appear to lag behind if used on a fast moving entity. You can fix this by using the bone's matrix instead:  
--- ```lua  
--- local matrix = entity:GetBoneMatrix(0)  
--- local pos = matrix:GetTranslation()  
--- local ang = matrix:GetAngles()  
--- ```  
--- 🦟 **BUG**: [This can return the server's position during server lag.](https://github.com/Facepunch/garrysmod-issues/issues/884)  
--- 🦟 **BUG**: [This can return garbage serverside or Global.Vector(0,0,0) for v49 models.](https://github.com/Facepunch/garrysmod-issues/issues/3285)  
--- 🦟 **BUG**: [This can return garbage if a trace passed through the target bone during bone matrix access.](https://github.com/Facepunch/garrysmod-issues/issues/3739)  
--- @param boneIndex number @The bone index of the bone to get the position of, starting at index 0
--- @return GVector @The bone's position relative to the world
--- @return GAngle @The bone's angle relative to the world.
function GEntity:GetBonePosition(boneIndex)
end

--- Returns the surface property of the specified bone.  
--- @param bone number @The bone id, starting at index 0
--- @return string @The surface property of the bone to be used with util.GetSurfaceIndex or an empty string on failure.
function GEntity:GetBoneSurfaceProp(bone)
end

--- Returns info about given plane of non-nodraw brush model surfaces of the entity's model. Works on worldspawn as well.  
--- ⚠ **WARNING**: This only works on entities with brush models.  
--- @param id number @The index of the plane to get info of
--- @return GVector @The origin of the plane
--- @return GVector @The normal of the plane.
--- @return number @The "distance" of the plane
function GEntity:GetBrushPlane(id)
end

--- Returns the amount of planes of non-nodraw brush model surfaces of the entity's model.  
--- @return number @The amount of brush model planes of the entity's model
function GEntity:GetBrushPlaneCount()
end

--- Returns a table of brushes surfaces for brush model entities.  
--- @return table @Table of SurfaceInfos if the entity has a brush model, or no value otherwise.
function GEntity:GetBrushSurfaces()
end

--- Returns the specified hook callbacks for this entity added with Entity:AddCallback  
--- The callbacks can then be removed with Entity:RemoveCallback.  
--- @param hook string @The hook to retrieve the callbacks from, see Entity Callbacks for the possible hooks.
--- @return table @A table containing the callbackid and function of all the callbacks for the specified hook
function GEntity:GetCallbacks(hook)
end

--- Returns ids of child bones of given bone.  
--- @param boneid number @Bone id to lookup children of
--- @return table @A table of bone ids
function GEntity:GetChildBones(boneid)
end

--- Gets the children of the entity - that is, every entity whose move parent is this entity.  
--- ℹ **NOTE**: This function returns Entity:SetMoveParent children, **NOT** Entity:SetParent!  
--- Entity:SetParent however also calls Entity:SetMoveParent.  
--- This means that some entities in the returned list might have a NULL Entity:GetParent.  
--- This also means that using this function on players will return their weapons on the client but not the server.  
--- @return GEntity[] @A list of movement children entities
function GEntity:GetChildren()
end

--- Returns the classname of a entity. This is often the name of the Lua file or folder containing the files for the entity  
--- @return string @The entity's classname
function GEntity:GetClass()
end

--- Returns an entity's collision bounding box. In most cases, this will return the same bounding box as Entity:GetModelBounds unless the entity does not have a physics mesh or it has a PhysObj different from the default.  
--- 🦟 **BUG**: [This can be out-of-sync between the client and server for weapons.](https://github.com/Facepunch/garrysmod-issues/issues/223)  
--- @return GVector @The minimum vector of the collision bounds
--- @return GVector @The maximum vector of the collision bounds
function GEntity:GetCollisionBounds()
end

--- Returns the entity's collision group  
--- @return number @The collision group
function GEntity:GetCollisionGroup()
end

--- Returns the color the entity is set to.  
--- @return GColor @The color of the entity as a Color.
function GEntity:GetColor()
end

--- Returns the two entities involved in a constraint ent, or nil if the entity is not a constraint.  
--- @return GEntity @ent1
--- @return GEntity @ent2
function GEntity:GetConstrainedEntities()
end

--- Returns the two entities physobjects involved in a constraint ent, or no value if the entity is not a constraint.  
--- @return GPhysObj @phys1
--- @return GPhysObj @phys2
function GEntity:GetConstrainedPhysObjects()
end

--- Returns entity's creation ID. Unlike Entity:EntIndex or Entity:MapCreationID.  
--- It will increase up until value of `10 000 000`, at which point it will reset back to `0`.  
--- @return number @The creation ID
function GEntity:GetCreationID()
end

--- Returns the time the entity was created on, relative to Global.CurTime.  
--- @return number @The time the entity was created on.
function GEntity:GetCreationTime()
end

--- Gets the creator of the SENT.  
--- @return GPlayer @The creator, NULL for no creator.
function GEntity:GetCreator()
end

--- Returns whether this entity uses custom collision check set by Entity:SetCustomCollisionCheck.  
--- @return boolean @Whether this entity uses custom collision check or not
function GEntity:GetCustomCollisionCheck()
end

--- Returns the frame of the currently played sequence. This will be a number between 0 and 1 as a representation of sequence progress.  
--- @return number @The frame of the currently played sequence
function GEntity:GetCycle()
end

--- Returns a bit flag of all engine flags of the entity.  
--- @return number @Engine flags, see Enums/EFL
function GEntity:GetEFlags()
end

--- Returns internal data about editable Entity:NetworkVars.  
--- This is used internally by DEntityProperties and Editable Entities system.  
--- ℹ **NOTE**: This function will only work on entities which had Entity:InstallDataTable called on them, which is done automatically for players and all Scripted Entities  
--- @return table @The internal data
function GEntity:GetEditingData()
end

--- Returns a bit flag of all engine effect flags of the entity.  
--- @return number @Engine effect flags, see Enums/EF
function GEntity:GetEffects()
end

--- Returns the elasticity of this entity, used by some flying entities such as the Helicopter NPC to determine how much it should bounce around when colliding.  
--- @return number @elasticity
function GEntity:GetElasticity()
end

--- Returns all flags of given entity.  
--- @return number @Flags of given entity as a bitflag, see Enums/FL
function GEntity:GetFlags()
end

--- Returns acceptable value range for the flex controller, as defined by the model.  
--- Used with Entity:SetFlexWeight.  
--- @param flex number @The ID of the flex to look up bounds of
--- @return number @The minimum value for this flex
--- @return number @The maximum value for this flex
function GEntity:GetFlexBounds(flex)
end

--- Returns the ID of the flex based on the beginning or the entire name.  
--- @param name string @The name of the flex to get the ID of
--- @return number @The ID of flex
function GEntity:GetFlexIDByName(name)
end

--- Returns the flex controller name at given index.  
--- @param id number @The flex index to look up name of
--- @return string @The flex name, or no value if the requested ID is out of bounds.
function GEntity:GetFlexName(id)
end

--- Returns the number of flex controllers this entity's model has.  
--- ℹ **NOTE**: Please note that while this function can return the real number of flex controllers, the game supports only a certain amount due to networking limitations. See Entity:SetFlexWeight.  
--- @return number @The number of flexes.
function GEntity:GetFlexNum()
end

--- Returns the flex scale of the entity.  
--- @return number @The flex scale
function GEntity:GetFlexScale()
end

--- Returns flex controller type or "category". Used internally by Faceposer to categorize flex controllers.  
--- @param id number @The flex index to look up type of
--- @return string @The flex type, or no value if the requested ID is out of bounds.
function GEntity:GetFlexType(id)
end

--- Returns current weight ( value ) of given flex controller. Please see Entity:SetFlexWeight regarding limitations.  
--- @param flex number @The ID of the flex to get weight of
--- @return number @The current weight of the flex, or 0 if out of bounds.
function GEntity:GetFlexWeight(flex)
end

--- Returns the forward vector of the entity, as a normalized direction vector  
--- @return GVector @forwardDir
function GEntity:GetForward()
end

--- Returns the friction modifier for this entity. Entities default to `1` (100%) and can be higher.  
--- @return number @friction
function GEntity:GetFriction()
end

--- Gets the gravity multiplier of the entity.  
--- @return number @gravityMultiplier
function GEntity:GetGravity()
end

--- Returns the object the entity is standing on.  
--- @return GEntity @The ground entity.
function GEntity:GetGroundEntity()
end

--- Returns the entity's ground speed velocity, which is based on the entity's walk/run speed and/or the ground speed of their sequence ( Entity:GetSequenceGroundSpeed ). Will return an empty Vector if the entity isn't moving on the ground.  
--- @return GVector @The ground speed velocity.
function GEntity:GetGroundSpeedVelocity()
end

--- Gets the bone the hit box is attached to.  
--- @param hitbox number @The number of the hit box.
--- @param hboxset number @The number of the hit box set
--- @return number @The number of the bone
function GEntity:GetHitBoxBone(hitbox, hboxset)
end

--- Gets the bounds (min and max corners) of a hit box.  
--- @param hitbox number @The number of the hit box.
--- @param set number @The hitbox set of the hit box
--- @return GVector @Hit box mins
--- @return GVector @Hit box maxs
function GEntity:GetHitBoxBounds(hitbox, set)
end

--- Gets how many hit boxes are in a given hit box set.  
--- @param set number @The number of the hit box set.
--- @return number @The number of hit boxes.
function GEntity:GetHitBoxCount(set)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:GetHitboxSetCount instead.  
--- Returns the number of hit box sets that an entity has. Functionally identical to Entity:GetHitboxSetCount  
--- @return number @number of hit box sets
function GEntity:GetHitBoxGroupCount()
end

--- Gets the hit group of a given hitbox in a given hitbox set.  
--- @param hitbox number @The number of the hit box.
--- @param hitboxset number @The number of the hit box set
--- @return number @The hitbox group of given hitbox
function GEntity:GetHitBoxHitGroup(hitbox, hitboxset)
end

--- Returns entity's current hit box set  
--- @return number @The current hit box set id, or no value if the entity doesn't have hit boxes
--- @return string @The current hit box set name, or no value if the entity doesn't have hit boxes
function GEntity:GetHitboxSet()
end

--- Returns the amount of hitbox sets in the entity.  
--- @return number @The amount of hitbox sets in the entity.
function GEntity:GetHitboxSetCount()
end

--- An interface for accessing internal key values on entities.  
--- See Entity:GetSaveTable for a more detailed explanation. See Entity:SetSaveValue for the opposite of this function.  
--- @param variableName string @Name of variable corresponding to an entity save value.
--- @return any @The internal variable value.
function GEntity:GetInternalVariable(variableName)
end

--- Returns a table containing Hammer key values the entity has stored. **Not all key values will be accessible this way.** Use GM:EntityKeyValue or ENTITY:KeyValue to capture and store every key value.  
--- Single key values can usually be retrieved with Entity:GetInternalVariable.  
--- Here's a list of keyvalues that will not appear in this list, as they are not stored/defined as actual keyvalues internally:  
--- * rendercolor - Entity:GetColor (Only RGB)  
--- * rendercolor32 - Entity:GetColor (RGBA)  
--- * renderamt - Entity:GetColor (Alpha)  
--- * disableshadows - EF_NOSHADOW  
--- * mins - Entity:GetCollisionBounds  
--- * maxs - Entity:GetCollisionBounds  
--- * disablereceiveshadows - EF_NORECEIVESHADOW  
--- * nodamageforces - EFL_NO_DAMAGE_FORCES  
--- * angle - Entity:GetAngles  
--- * angles - Entity:GetAngles  
--- * origin - Entity:GetPos  
--- * targetname - Entity:GetName  
--- @return table @A table of key values.
function GEntity:GetKeyValues()
end

--- Returns the animation cycle/frame for given layer.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @return number @The animation cycle/frame for given layer.
function GEntity:GetLayerCycle(layerID)
end

--- Returns the duration of given layer.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @return number @The duration of the layer
function GEntity:GetLayerDuration(layerID)
end

--- Returns the layer playback rate. See also Entity:GetLayerDuration.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @return number @The current playback rate.
function GEntity:GetLayerPlaybackRate(layerID)
end

--- Returns the sequence id of given layer.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID.
--- @return number @The sequenceID of the layer.
function GEntity:GetLayerSequence(layerID)
end

--- Returns the current weight of the layer. See Entity:SetLayerWeight for more information.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @return number @The current weight of the layer
function GEntity:GetLayerWeight(layerID)
end

--- Returns the entity that is being used as the light origin position for this entity.  
--- @return GEntity @The lighting entity
function GEntity:GetLightingOriginEntity()
end

--- Returns the rotation of the entity relative to its parent entity.  
--- @return GAngle @Relative angle
function GEntity:GetLocalAngles()
end

--- Returns the non-VPhysics angular velocity of the entity relative to its parent entity.  
--- @return GAngle @The velocity
function GEntity:GetLocalAngularVelocity()
end

--- Returns entity's position relative to it's Entity:GetParent.  
--- See Entity:GetPos for the absolute position.  
--- @return GVector @Relative position
function GEntity:GetLocalPos()
end

--- Gets the entity's angle manipulation of the given bone. This is relative to the default angle, so the angle is zero when unmodified.  
--- @param boneID number @The bone's ID
--- @return GAngle @The entity's angle manipulation of the given bone.
function GEntity:GetManipulateBoneAngles(boneID)
end

--- Returns the jiggle amount of the entity's bone.  
--- See Entity:ManipulateBoneJiggle for more info.  
--- @param boneID number @The bone ID
--- @return number @The jiggle bone type, as set by Entity:ManipulateBoneJiggle.
function GEntity:GetManipulateBoneJiggle(boneID)
end

--- Gets the entity's position manipulation of the given bone. This is relative to the default position, so it is zero when unmodified.  
--- @param boneId number @The bone's ID
--- @return GVector @The entity's position manipulation of the given bone.
function GEntity:GetManipulateBonePosition(boneId)
end

--- Gets the entity's scale manipulation of the given bone. Normal scale is Vector( 1, 1, 1 )  
--- @param boneID number @The bone's ID
--- @return GVector @The entity's scale manipulation of the given bone
function GEntity:GetManipulateBoneScale(boneID)
end

--- Returns the material override for this entity.  
--- Returns an empty string if no material override exists. Use Entity:GetMaterials to list its default materials.  
--- 🦟 **BUG**: [The server's value takes priority on the client.](https://github.com/Facepunch/garrysmod-issues/issues/3362)  
--- @return string @material
function GEntity:GetMaterial()
end

--- Returns the surface material of this entity.  
--- @return number @Surface material
function GEntity:GetMaterialType()
end

--- Returns all materials of the entity's model.  
--- This function is unaffected by Entity:SetSubMaterial as it returns the original materials.  
--- 🦟 **BUG**: The table returned by this function will not contain materials if they are missing from the disk/repository. This means that if you are attempting to find the ID of a material to replace with Entity:SetSubMaterial and there are missing materials on the model, all subsequent materials will be offset in the table, meaning that the ID you are trying to get will be incorrect.  
--- @return table @A table containing full paths to the materials of the model
function GEntity:GetMaterials()
end

--- Returns the max health that the entity was given. It can be set via Entity:SetMaxHealth.  
--- @return number @Max health.
function GEntity:GetMaxHealth()
end

--- Gets the model of given entity.  
--- 🦟 **BUG**: This does not necessarily return the model's path, as is the case for brush and virtual models. This is intentional behaviour, however, there is currently no way to retrieve the actual file path.  
--- This also affects certain models that are edited by 3rd party programs after being compiled.  
--- @return string|nil @The entity's model
function GEntity:GetModel()
end

--- Returns the entity's model bounds, not scaled by Entity:SetModelScale.  
--- These bounds are affected by all the animations the model has at compile time, if they go outside of the models' render bounds at any point.  
--- See Entity:GetModelRenderBounds for just the render bounds of the model.  
--- This is different than the collision bounds/hull, which are set via Entity:SetCollisionBounds.  
--- @return GVector @The minimum vector of the bounds
--- @return GVector @The maximum vector of the bounds
function GEntity:GetModelBounds()
end

--- Returns the contents of the entity's current model.  
--- @return number @The contents of the entity's model
function GEntity:GetModelContents()
end

--- Gets the physics bone count of the entity's model. This is only applicable to `anim` type Scripted Entities with ragdoll models.  
--- @return number @How many physics bones exist on the model.
function GEntity:GetModelPhysBoneCount()
end

--- Gets the models radius.  
--- @return number @The radius of the model
function GEntity:GetModelRadius()
end

--- Returns the entity's model render bounds. Unlike Entity:GetModelBounds, bounds returning by this function will not be affected by animations (at compile time).  
--- @return GVector @The minimum vector of the bounds
--- @return GVector @The maximum vector of the bounds
function GEntity:GetModelRenderBounds()
end

--- Gets the selected entity's model scale.  
--- @return number @Scale of that entity's model.
function GEntity:GetModelScale()
end

--- Returns the amount a momentary_rot_button entity is turned based on the given angle. 0 meaning completely turned closed, 1 meaning completely turned open.  
--- ⚠ **WARNING**: This only works on momentary_rot_button entities.  
--- @param turnAngle GAngle @The angle of rotation to compare - usually should be Entity:GetAngles.
--- @return number @The amount the momentary_rot_button is turned, ranging from 0 to 1, or nil if the entity is not a momentary_rot_button.
function GEntity:GetMomentaryRotButtonPos(turnAngle)
end

--- Returns the move collide type of the entity. The move collide is the way a physics object reacts to hitting an object - will it bounce, slide?  
--- @return number @The move collide type, see Enums/MOVECOLLIDE
function GEntity:GetMoveCollide()
end

--- Returns the movement parent of this entity.  
--- See Entity:SetMoveParent for more info.  
--- @return GEntity @The movement parent of this entity.
function GEntity:GetMoveParent()
end

--- Returns the entity's movetype  
--- @return number @Move type
function GEntity:GetMoveType()
end

--- Gets the NPC classification. Internally gets the `m_iClass` variable which is polled by the engine. This will be equivalent to NPC:Classify.  
--- ℹ **NOTE**: This is a helper function only available if your SENT is based on `base_ai`  
--- @return number @See Enums/CLASS
function GEntity:GetNPCClass()
end

--- Retrieves a networked angle value at specified index on the entity that is set by Entity:SetNW2Angle.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNW2Angle(key, fallback)
end

--- Retrieves a networked boolean value at specified index on the entity that is set by Entity:SetNW2Bool.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNW2Bool(key, fallback)
end

--- Retrieves a networked entity value at specified index on the entity that is set by Entity:SetNW2Entity.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNW2Entity(key, fallback)
end

--- Retrieves a networked float value at specified index on the entity that is set by Entity:SetNW2Float.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNW2Float(key, fallback)
end

--- Retrieves a networked integer (whole number) value that was previously set by Entity:SetNW2Int.  
--- ⚠ **WARNING**: The integer has a 32 bit limit. Use Entity:SetNWInt and Entity:GetNWInt instead  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value (If it isn't set).
--- @return any @The value associated with the key
function GEntity:GetNW2Int(key, fallback)
end

--- Retrieves a networked string value at specified index on the entity that is set by Entity:SetNW2String.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNW2String(key, fallback)
end

--- Retrieves a networked value at specified index on the entity that is set by Entity:SetNW2Var.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNW2Var(key, fallback)
end

--- Returns callback function for given NWVar of this entity.  
--- @param key any @The key of the NWVar to get callback of.
--- @return function @The callback of given NWVar, or nil if not found
function GEntity:GetNW2VarProxy(key)
end

--- Returns all the NW2 variables in an entity.  
--- 🦟 **BUG**: [This function will return keys with empty tables if the NW2Var is nil.](https://github.com/Facepunch/garrysmod-issues/issues/5396)  
--- @return table @Key-Value table of all NW2 variables.
function GEntity:GetNW2VarTable()
end

--- Retrieves a networked vector value at specified index on the entity that is set by Entity:SetNW2Vector.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNW2Vector(key, fallback)
end

--- Retrieves a networked angle value at specified index on the entity that is set by Entity:SetNWAngle.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNWAngle(key, fallback)
end

--- Retrieves a networked boolean value at specified index on the entity that is set by Entity:SetNWBool.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNWBool(key, fallback)
end

--- Retrieves a networked entity value at specified index on the entity that is set by Entity:SetNWEntity.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNWEntity(key, fallback)
end

--- Retrieves a networked float value at specified index on the entity that is set by Entity:SetNWFloat.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNWFloat(key, fallback)
end

--- Retrieves a networked integer (whole number) value that was previously set by Entity:SetNWInt.  
--- 🦟 **BUG**: [This function will not round decimal values as it actually networks a float internally.](https://github.com/Facepunch/garrysmod-issues/issues/3374)  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value (If it isn't set).
--- @return any @The value associated with the key
function GEntity:GetNWInt(key, fallback)
end

--- Retrieves a networked string value at specified index on the entity that is set by Entity:SetNWString.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNWString(key, fallback)
end

--- Returns callback function for given NWVar of this entity, previously set by Entity:SetNWVarProxy.  
--- <removed>This function was superseded by Entity:GetNW2VarProxy. This page still exists an archive in case anybody ever stumbles across old code and needs to know what it is</removed>  
--- @param key string @The key of the NWVar to get callback of.
--- @return function @The callback of given NWVar, or nil if not found
function GEntity:GetNWVarProxy(key)
end

--- Returns all the networked variables in an entity.  
--- @return {[string]: any} @Key-Value table of all networked variables.
function GEntity:GetNWVarTable()
end

--- Retrieves a networked vector value at specified index on the entity that is set by Entity:SetNWVector.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNWVector(key, fallback)
end

--- Returns the map/hammer targetname of this entity.  
--- @return string @The name of the Entity
function GEntity:GetName()
end

--- Gets networked angles for entity.  
--- @return GAngle @angle
function GEntity:GetNetworkAngles()
end

--- Gets networked origin for entity.  
--- ℹ **NOTE**: On the Client, this seems to return the position relative to the parent (if it has one). On the server-side this will return what you expect even if it has a parent.  
--- @return GVector @The last received origin of the entity.
function GEntity:GetNetworkOrigin()
end

--- Returns all network vars created by Entity:NetworkVar and Entity:NetworkVarElement and their current values.  
--- This is used internally by the duplicator. `Entity` type Network vars will not be returned!  
--- For NWVars see Entity:GetNWVarTable.  
--- ℹ **NOTE**: This function will only work on entities which had Entity:InstallDataTable called on them, which is done automatically for players and all Scripted Entities  
--- @return table @The Key-Value formatted table of network var names and their current values
function GEntity:GetNetworkVars()
end

--- Retrieves a networked angle value at specified index on the entity that is set by Entity:SetNetworked2Angle.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2Angle instead.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNetworked2Angle(key, fallback)
end

--- Retrieves a networked boolean value at specified index on the entity that is set by Entity:SetNetworked2Bool.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2Bool instead.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNetworked2Bool(key, fallback)
end

--- Retrieves a networked entity value at specified index on the entity that is set by Entity:SetNetworked2Entity.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2Entity instead.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNetworked2Entity(key, fallback)
end

--- Retrieves a networked float value at specified index on the entity that is set by Entity:SetNetworked2Float.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2Float instead.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNetworked2Float(key, fallback)
end

--- Retrieves a networked integer (whole number) value that was previously set by Entity:SetNetworked2Int.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2Int instead.  
--- ⚠ **WARNING**: The integer has a 32 bit limit. Use Entity:SetNWInt and Entity:GetNWInt instead  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value (If it isn't set).
--- @return any @The value associated with the key
function GEntity:GetNetworked2Int(key, fallback)
end

--- Retrieves a networked string value at specified index on the entity that is set by Entity:SetNetworked2String.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2String instead.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNetworked2String(key, fallback)
end

--- Retrieves a networked value at specified index on the entity that is set by Entity:SetNetworked2Var.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2Var instead.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNetworked2Var(key, fallback)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2VarProxy instead.  
--- Returns callback function for given NWVar of this entity. Alias of Entity:GetNW2VarProxy  
--- @param key any @The key of the NWVar to get callback of.
--- @return function @The callback of given NWVar, or nil if not found.
function GEntity:GetNetworked2VarProxy(key)
end

--- Returns all the networked2 variables in an entity.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2VarTable instead.  
--- @return table @Key-Value table of all networked2 variables.
function GEntity:GetNetworked2VarTable()
end

--- Retrieves a networked vector value at specified index on the entity that is set by Entity:SetNetworked2Vector.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2Vector instead.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNetworked2Vector(key, fallback)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:GetNWAngle instead.  
--- Retrieves a networked angle value at specified index on the entity that is set by Entity:SetNetworkedAngle.  
--- @param key string @The key that is associated with the value
--- @param fallback? GAngle @The value to return if we failed to retrieve the value
--- @return GAngle @The retrieved value
function GEntity:GetNetworkedAngle(key, fallback)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:GetNWBool instead.  
--- Retrieves a networked boolean value at specified index on the entity that is set by Entity:SetNetworkedBool.  
--- @param key string @The key that is associated with the value
--- @param fallback? boolean @The value to return if we failed to retrieve the value
--- @return boolean @The retrieved value
function GEntity:GetNetworkedBool(key, fallback)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:GetNWEntity instead.  
--- Retrieves a networked float value at specified index on the entity that is set by Entity:SetNetworkedEntity.  
--- @param key string @The key that is associated with the value
--- @param fallback? GEntity @The value to return if we failed to retrieve the value
--- @return GEntity @The retrieved value
function GEntity:GetNetworkedEntity(key, fallback)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:GetNWFloat instead.  
--- Retrieves a networked float value at specified index on the entity that is set by Entity:SetNetworkedFloat.  
--- Seems to be the same as Entity:GetNetworkedInt.  
--- @param key string @The key that is associated with the value
--- @param fallback? number @The value to return if we failed to retrieve the value
--- @return number @The retrieved value
function GEntity:GetNetworkedFloat(key, fallback)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:GetNWInt instead.  
--- Retrieves a networked integer value at specified index on the entity that is set by Entity:SetNetworkedInt.  
--- @param key string @The key that is associated with the value
--- @param fallback? number @The value to return if we failed to retrieve the value
--- @return number @The retrieved value
function GEntity:GetNetworkedInt(key, fallback)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:GetNWString instead.  
--- Retrieves a networked string value at specified index on the entity that is set by Entity:SetNetworkedString.  
--- @param key string @The key that is associated with the value
--- @param fallback? string @The value to return if we failed to retrieve the value
--- @return string @The retrieved value
function GEntity:GetNetworkedString(key, fallback)
end

--- Retrieves a networked value at specified index on the entity that is set by Entity:SetNetworkedVar.  
--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function GEntity:GetNetworkedVar(key, fallback)
end

--- <removed>This function was superseded by Entity:GetNetworked2VarProxy. This page still exists an archive in case anybody ever stumbles across old code and needs to know what it is</removed>  
--- Returns callback function for given NWVar of this entity, previously set by Entity:SetNWVarProxy.  
--- @param name string @The name of the NWVar to get callback of.
--- @return function @The callback of given NWVar, if any
function GEntity:GetNetworkedVarProxy(name)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNWVarTable instead.  
--- Returns all the networked variables in an entity.  
--- @return {[string]: any} @Key-Value table of all networked variables.
function GEntity:GetNetworkedVarTable()
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:GetNWVector instead.  
--- Retrieves a networked vector value at specified index on the entity that is set by Entity:SetNetworkedVector.  
--- @param key string @The key that is associated with the value
--- @param fallback? GVector @The value to return if we failed to retrieve the value
--- @return GVector @The retrieved value
function GEntity:GetNetworkedVector(key, fallback)
end

--- Returns if the entity's rendering and transmitting has been disabled.  
--- ℹ **NOTE**: This is equivalent to calling Entity:IsEffectActive( EF_NODRAW )  
--- @return boolean @Whether the entity's rendering and transmitting has been disabled.
function GEntity:GetNoDraw()
end

--- Returns the number of Body Groups that the Entity's model contains.  
--- ℹ **NOTE**: Weapons will return results from their viewmodels.  
--- @return number @The amount of Body Groups on the Entity's model.
function GEntity:GetNumBodyGroups()
end

--- Returns the number of pose parameters this entity has.  
--- @return number @Amount of pose parameters the entity has
function GEntity:GetNumPoseParameters()
end

--- Returns the owner entity of this entity. See Entity:SetOwner for more info.  
--- ℹ **NOTE**: This function is generally used to disable physics interactions on projectiles being fired by their owner, but can also be used for normal ownership in case physics interactions are not involved at all. The Gravity gun will be able to pick up the entity even if the owner can't collide with it, the Physics gun however will not.  
--- @return GEntity @The owner entity of this entity.
function GEntity:GetOwner()
end

--- Returns the parent entity of this entity.  
--- @return GEntity @parentEntity
function GEntity:GetParent()
end

--- Returns the attachment/bone index of the entity's parent. Returns 0 if the entity is not parented to an attachment/bone or if it isn't parented at all.  
--- This is set by second argument of Entity:SetParent or the **SetParentAttachment** input.  
--- @return number @The parented attachment/bone index
function GEntity:GetParentAttachment()
end

--- If the entity is parented to an entity that has a model with multiple physics objects (like a ragdoll), this is used to retrieve what physics object number the entity is parented to on it's parent.  
--- @return number @The physics object id, or nil if the entity has no parent
function GEntity:GetParentPhysNum()
end

--- Returns the position and angle of the entity's move parent as a 3x4 matrix (VMatrix is 4x4 so the fourth row goes unused). The first three columns store the angle as a [rotation matrix](https://en.wikipedia.org/wiki/Rotation_matrix), and the fourth column stores the position vector.  
--- @return GVMatrix @The position and angle matrix
function GEntity:GetParentWorldTransformMatrix()
end

--- Returns whether the entity is persistent or not.  
--- See Entity:SetPersistent for more information on persistence.  
--- @return boolean @True if the entity is set to be persistent.
function GEntity:GetPersistent()
end

--- Returns player who is claiming kills of physics damage the entity deals.  
--- @param timeLimit? number @The time to check if the entity was still a proper physics attacker
--- @return GPlayer @The player
function GEntity:GetPhysicsAttacker(timeLimit)
end

--- Returns the entity's physics object, if the entity has physics.  
--- ℹ **NOTE**: Entities don't have clientside physics objects by default, so this will return `[NULL PHYSOBJ]` on the client in most cases.  
--- @return GPhysObj @The entity's physics object.
function GEntity:GetPhysicsObject()
end

--- Returns the number of physics objects an entity has (usually 1 for non-ragdolls)  
--- @return number @numObjects
function GEntity:GetPhysicsObjectCount()
end

--- Returns a specific physics object from an entity with multiple PhysObjects (like ragdolls)  
--- See also Entity:TranslateBoneToPhysBone.  
--- @param physNum number @The number corresponding to the PhysObj to grab
--- @return GPhysObj @The physics object
function GEntity:GetPhysicsObjectNum(physNum)
end

--- Returns the playback rate of the main sequence on this entity, with 1.0 being the default speed.  
--- @return number @The playback rate.
function GEntity:GetPlaybackRate()
end

--- Gets the position of given entity in the world.  
--- See Entity:GetLocalPos for the position relative to the entity's Entity:GetParent.  
--- @return GVector @The position of the entity.
function GEntity:GetPos()
end

--- Returns the pose parameter value  
--- @param name string @Pose parameter name to look up
--- @return number @Value of given pose parameter
function GEntity:GetPoseParameter(name)
end

--- Returns name of given pose parameter  
--- @param id number @Id of the pose paremeter
--- @return string @Name of given pose parameter
function GEntity:GetPoseParameterName(id)
end

--- Returns pose parameter range  
--- @param id number @Pose parameter ID to look up
--- @return number @The minimum value
--- @return number @The maximum value
function GEntity:GetPoseParameterRange(id)
end

--- Returns whether this entity is predictable or not.  
--- See Entity:SetPredictable for more information  
--- @return boolean @Whether this entity is predictable or not.
function GEntity:GetPredictable()
end

--- Called to override the preferred carry angles of this object.  
--- ℹ **NOTE**: This callback is only called for `anim` and `ai` type entities. For rest use GM:GetPreferredCarryAngles.  
--- @param ply GPlayer @The player who is holding the object.
--- @return GAngle @Return an angle to override the carry angles.
function GEntity:GetPreferredCarryAngles(ply)
end

--- Returns the entity which the ragdoll came from. The opposite of Player:GetRagdollEntity.  
--- @return GEntity @The entity who owns the ragdoll.
function GEntity:GetRagdollOwner()
end

--- Returns the entity's render angles, set by Entity:SetRenderAngles in a drawing hook.  
--- @return GAngle @The entitys render angles
function GEntity:GetRenderAngles()
end

--- Returns render bounds of the entity as local vectors. Can be overridden by Entity:SetRenderBounds.  
--- If the render bounds are not inside players view, the entity will not be drawn!  
--- @return GVector @The minimum vector of the bounds
--- @return GVector @The maximum vector of the bounds.
function GEntity:GetRenderBounds()
end

--- Returns current render FX of the entity.  
--- @return number @The current render FX of the entity
function GEntity:GetRenderFX()
end

--- Returns the render group of the entity.  
--- @return number @The render group
function GEntity:GetRenderGroup()
end

--- Returns the render mode of the entity.  
--- @return number @The render Mode
function GEntity:GetRenderMode()
end

--- Returns the entity's render origin, set by Entity:SetRenderOrigin in a drawing hook.  
--- @return GVector @The entitys render origin
function GEntity:GetRenderOrigin()
end

--- Returns the rightward vector of the entity, as a normalized direction vector  
--- @return GVector @rightDir
function GEntity:GetRight()
end

--- Returns axis-aligned bounding box (AABB) of a orientated bounding box (OBB) based on entity's rotation.  
--- @param min GVector @Minimum extent of an OBB in local coordinates.
--- @param max GVector @Maximum extent of an OBB in local coordinates.
--- @return GVector @Minimum extent of the AABB relative to entity's position.
--- @return GVector @Maximum extent of the AABB relative to entity's position.
function GEntity:GetRotatedAABB(min, max)
end

--- Returns a table of save values for an entity.  
--- These tables are not the same between the client and the server, and different entities may have different fields.  
--- ℹ **NOTE**: It is highly recommended to use Entity:GetInternalVariable for retrieving a single key of the save table for performance reasons.  
--- You can get the list different fields an entity has by looking at it's source code (the 2013 SDK can be found [online](https://github.com/ValveSoftware/source-sdk-2013)). Accessible fields are defined by each `DEFINE_FIELD` and `DEFINE_KEYFIELD` inside the `DATADESC` block.  
--- Take the headcrab, for example:  
--- ```  
--- BEGIN_DATADESC( CBaseHeadcrab )  
--- // m_nGibCount - don't save  
--- DEFINE_FIELD( m_bHidden, FIELD_BOOLEAN ),  
--- DEFINE_FIELD( m_flTimeDrown, FIELD_TIME ),  
--- DEFINE_FIELD( m_bCommittedToJump, FIELD_BOOLEAN ),  
--- DEFINE_FIELD( m_vecCommittedJumpPos, FIELD_POSITION_VECTOR ),  
--- DEFINE_FIELD( m_flNextNPCThink, FIELD_TIME ),  
--- DEFINE_FIELD( m_flIgnoreWorldCollisionTime, FIELD_TIME ),  
--- DEFINE_KEYFIELD( m_bStartBurrowed, FIELD_BOOLEAN, "startburrowed" ),  
--- DEFINE_FIELD( m_bBurrowed, FIELD_BOOLEAN ),  
--- DEFINE_FIELD( m_flBurrowTime, FIELD_TIME ),  
--- DEFINE_FIELD( m_nContext, FIELD_INTEGER ),  
--- DEFINE_FIELD( m_bCrawlFromCanister, FIELD_BOOLEAN ),  
--- DEFINE_FIELD( m_bMidJump, FIELD_BOOLEAN ),  
--- DEFINE_FIELD( m_nJumpFromCanisterDir, FIELD_INTEGER ),  
--- DEFINE_FIELD( m_bHangingFromCeiling, FIELD_BOOLEAN ),  
--- DEFINE_FIELD( m_flIlluminatedTime, FIELD_TIME ),  
--- DEFINE_INPUTFUNC( FIELD_VOID, "Burrow", InputBurrow ),  
--- DEFINE_INPUTFUNC( FIELD_VOID, "BurrowImmediate", InputBurrowImmediate ),  
--- DEFINE_INPUTFUNC( FIELD_VOID, "Unburrow", InputUnburrow ),  
--- DEFINE_INPUTFUNC( FIELD_VOID, "StartHangingFromCeiling", InputStartHangingFromCeiling ),  
--- DEFINE_INPUTFUNC( FIELD_VOID, "DropFromCeiling", InputDropFromCeiling ),  
--- // Function Pointers  
--- DEFINE_THINKFUNC( EliminateRollAndPitch ),  
--- DEFINE_THINKFUNC( ThrowThink ),  
--- DEFINE_ENTITYFUNC( LeapTouch ),  
--- END_DATADESC()  
--- ```  
--- * For each **DEFINE_FIELD**, the save table will have a key with name of **first** argument.  
--- * For each **DEFINE_KEYFIELD**, the save table will have a key with name of the **third** argument.  
--- @param showAll boolean @If set, shows all variables, not just the ones marked for save/load system.
--- @return table @A table containing all save values in key/value format
function GEntity:GetSaveTable(showAll)
end

--- Return the index of the model sequence that is currently active for the entity.  
--- @return number @The index of the model sequence.
function GEntity:GetSequence()
end

--- Return activity id out of sequence id. Opposite of Entity:SelectWeightedSequence.  
--- @param seq number @The sequence ID
--- @return number @The activity ID, ie Enums/ACT
function GEntity:GetSequenceActivity(seq)
end

--- Returns the activity name for the given sequence id.  
--- @param sequenceId number @The sequence id.
--- @return string @The Enums/ACT as a string, returns "Not Found!" with an invalid sequence and "No model!" when no model is set.
function GEntity:GetSequenceActivityName(sequenceId)
end

--- Returns the amount of sequences ( animations ) the entity's model has.  
--- @return number @The amount of sequences ( animations ) the entity's model has.
function GEntity:GetSequenceCount()
end

--- Returns the ground speed of the entity's sequence.  
--- @param sequenceId number @The sequence ID.
--- @return number @The ground speed of this sequence.
function GEntity:GetSequenceGroundSpeed(sequenceId)
end

--- Returns a table of information about an entity's sequence.  
--- @param sequenceId number @The sequence id of the entity.
--- @return table @Table of information about the entity's sequence, or `nil` is ID is out of range
function GEntity:GetSequenceInfo(sequenceId)
end

--- Returns a list of all sequences ( animations ) the model has.  
--- @return table @The list of all sequences ( animations ) the model has
function GEntity:GetSequenceList()
end

--- Returns an entity's sequence move distance (the change in position over the course of the entire sequence).  
--- See Entity:GetSequenceMovement for a similar function with more options.  
--- @param sequenceId number @The sequence index.
--- @return number @The move distance of the sequence.
function GEntity:GetSequenceMoveDist(sequenceId)
end

--- Returns the change in heading direction in between the start and the end of the sequence.  
--- @param seq number @The sequence index
--- @return number @The yaw delta
function GEntity:GetSequenceMoveYaw(seq)
end

--- Returns the delta movement and angles of a sequence of the entity's model.  
--- @param sequenceId number @The sequence index
--- @param startCycle? number @The sequence start cycle
--- @param endCyclnde? number @The sequence end cycle
--- @return boolean @Whether the operation was successful
--- @return GVector @The delta vector of the animation, how much the model's origin point moved.
--- @return GAngle @The delta angle of the animation.
function GEntity:GetSequenceMovement(sequenceId, startCycle, endCyclnde)
end

--- Return the name of the sequence for the index provided.  
--- Refer to Entity:GetSequence to find the current active sequence on this entity.  
--- See Entity:LookupSequence for a function that does the opposite.  
--- @param index number @The index of the sequence to look up.
--- @return string @Name of the sequence, or `"Unknown"` if it was out of bounds.
function GEntity:GetSequenceName(index)
end

--- Returns an entity's sequence velocity at given animation frame.  
--- @param sequenceId number @The sequence index.
--- @param cycle number @The point in animation, from `0` to `1`.
--- @return GVector @Velocity of the sequence at given point in the animation.
function GEntity:GetSequenceVelocity(sequenceId, cycle)
end

--- Checks if the entity plays a sound when picked up by a player.  
--- @return boolean @`true` if it plays the pickup sound, `false` otherwise.
function GEntity:GetShouldPlayPickupSound()
end

--- Returns if entity should create a server ragdoll on death or a client one.  
--- @return boolean @Returns true if ragdoll will be created on server, false if on client
function GEntity:GetShouldServerRagdoll()
end

--- Returns the skin index of the current skin.  
--- @return number @skinIndex
function GEntity:GetSkin()
end

--- Returns solid type of an entity.  
--- @return number @The solid type
function GEntity:GetSolid()
end

--- Returns solid flag(s) of an entity.  
--- @return number @The flag(s) of the entity, see Enums/FSOLID.
function GEntity:GetSolidFlags()
end

--- Returns if we should show a spawn effect on spawn on this entity.  
--- @return boolean @The flag to allow or disallow the spawn effect.
function GEntity:GetSpawnEffect()
end

--- Returns the bitwise spawn flags used by the entity. These can be set by Entity:SetKeyValue.  
--- @return number @The spawn flags of the entity, see SF_Enums.
function GEntity:GetSpawnFlags()
end

--- Returns the material override for the given index.  
--- Returns "" if no material override exists. Use Entity:GetMaterials to list it's default materials.  
--- 🦟 **BUG**: [The server's value takes priority on the client.](https://github.com/Facepunch/garrysmod-issues/issues/3362)  
--- @param index number @The index of the sub material
--- @return string @The material that overrides this index, if any.
function GEntity:GetSubMaterial(index)
end

--- Returns a list of models included into the entity's model in the .qc file.  
--- @return table[] @The list of models included into the entity's model in the .qc file.
function GEntity:GetSubModels()
end

--- Returns two vectors representing the minimum and maximum extent of the entity's axis-aligned bounding box for hitbox detection. In most cases, this will return the same bounding box as Entity:WorldSpaceAABB unless it was changed by Entity:SetSurroundingBounds or Entity:SetSurroundingBoundsType.  
--- @return GVector @The minimum vector for the entity's bounding box in world space.
--- @return GVector @The maximum vector for the entity's bounding box in world space.
function GEntity:GetSurroundingBounds()
end

--- Returns a table that contains all lua-based key-value pairs saved on the Entity.  
--- For retrieving engine-based key-value pairs, see Entity:GetSaveTable  
--- @return table @A table of the lua data stored on the Entity, or `nil` if the Entity is NULL.
function GEntity:GetTable()
end

--- Returns the last trace used in the collision callbacks such as ENTITY:StartTouch, ENTITY:Touch and ENTITY:EndTouch.  
--- ℹ **NOTE**: This returns the last collision trace used, regardless of the entity that caused it. As such, it's only reliable when used in the hooks mentioned above  
--- @return table @The Structures/TraceResult
function GEntity:GetTouchTrace()
end

--- Returns true if the TransmitWithParent flag is set or not.  
--- @return boolean @Is the TransmitWithParent flag is set or not
function GEntity:GetTransmitWithParent()
end

--- Returns if the entity is unfreezable, meaning it can't be frozen with the physgun. By default props are freezable, so this function will typically return false.  
--- @return boolean @True if the entity is unfreezable, false otherwise.
function GEntity:GetUnFreezable()
end

--- Returns the upward vector of the entity, as a normalized direction vector  
--- @return GVector @upDir
function GEntity:GetUp()
end

--- Retrieves a value from entity's Entity:GetTable. Set by Entity:SetVar.  
--- @param key any @Key of the value to retrieve
--- @param default? any @A default value to fallback to if we couldn't retrieve the value from entity
--- @return any @Retrieved value
function GEntity:GetVar(key, default)
end

--- Returns the entity's velocity.  
--- This returns the total velocity of the entity and is equal to local velocity + base velocity.  
--- Clientside the velocity may be estimated for certain entities, such as physics based entities, instead of returning the "real" velocity from the server.  
--- 🦟 **BUG**: [This can become out-of-sync on the client if the server has been up for a long time.](https://github.com/Facepunch/garrysmod-issues/issues/774)  
--- @return GVector @The velocity of the entity.
function GEntity:GetVelocity()
end

--- @deprecated  
--- 🛑 **DEPRECATED**: The function **currently** does nothing and always returns nil  
--- Returns ID of workshop addon that the entity is from.  
--- @return number @The workshop ID
function GEntity:GetWorkshopID()
end

--- Returns the position and angle of the entity as a 3x4 matrix (VMatrix is 4x4 so the fourth row goes unused). The first three columns store the angle as a [rotation matrix](https://en.wikipedia.org/wiki/Rotation_matrix), and the fourth column stores the position vector.  
--- 🦟 **BUG**: [This returns incorrect results for the angular component (columns 1-3) for the local player clientside.](https://github.com/Facepunch/garrysmod-issues/issues/2764)  
--- 🦟 **BUG**: [This will use the local player's Global.EyeAngles in rendering hooks.](https://github.com/Facepunch/garrysmod-issues/issues/3106)  
--- 🦟 **BUG**: [Columns 1-3 will be all 0 (angular component) in rendering hooks while paused in single-player.](https://github.com/Facepunch/garrysmod-issues/issues/3107)  
--- @return GVMatrix @The position and angle matrix.
function GEntity:GetWorldTransformMatrix()
end

--- Causes the entity to break into its current models gibs, if it has any.  
--- You must call Entity:PrecacheGibs on the entity before using this function, or it will not create any gibs.  
--- If called on server, the gibs will be spawned on the currently connected clients and will not be synchronized. Otherwise the gibs will be spawned only for the client the function is called on.  
--- ℹ **NOTE**: this function will not remove or hide the entity it is called on.  
--- For more expensive version of this function see Entity:GibBreakServer.  
--- @param force GVector @The force to apply to the created gibs.
--- @param clr? table @If set, this will be color of the broken gibs instead of the entity's color.
function GEntity:GibBreakClient(force, clr)
end

--- Causes the entity to break into its current models gibs, if it has any.  
--- You must call Entity:PrecacheGibs on the entity before using this function, or it will not create any gibs.  
--- The gibs will be spawned on the server and be synchronized with all clients.  
--- Note, that this function will not remove or hide the entity it is called on.  
--- This function is affected by `props_break_max_pieces_perframe` and `props_break_max_pieces` console variables.  
--- ⚠ **WARNING**: Large numbers of serverside gibs will cause lag.  
--- You can avoid this cost by spawning the gibs on the client using Entity:GibBreakClient  
--- ℹ **NOTE**: Despite existing on client, it doesn't actually do anything on client.  
--- @param force GVector @The force to apply to the created gibs
function GEntity:GibBreakServer(force)
end

--- Returns whether or not the bone manipulation functions have ever been called on given  entity.  
--- Related functions are Entity:ManipulateBonePosition, Entity:ManipulateBoneAngles, Entity:ManipulateBoneJiggle, and Entity:ManipulateBoneScale.  
--- 🦟 **BUG**: [This will return true if the entity's bones have ever been manipulated. Resetting the position/angles/jiggle/scaling to 0,0,0 will not affect this function.](https://github.com/Facepunch/garrysmod-issues/issues/3131)  
--- @return boolean @True if the entity has been bone manipulated, false otherwise.
function GEntity:HasBoneManipulations()
end

--- Returns whether or not the the entity has had flex manipulations performed with Entity:SetFlexWeight or Entity:SetFlexScale.  
--- @return boolean @True if the entity has flex manipulations, false otherwise.
function GEntity:HasFlexManipulatior()
end

--- Returns whether this entity has the specified spawnflags bits set.  
--- @param spawnFlags number @The spawnflag bits to check, see Enums/SF.
--- @return boolean @Whether the entity has that spawnflag set or not.
function GEntity:HasSpawnFlags(spawnFlags)
end

--- Returns the position of the head of this entity, NPCs use this internally to aim at their targets.  
--- ℹ **NOTE**: This only works on players and NPCs.  
--- @param origin GVector @The vector of where the attack comes from.
--- @return GVector @The head position.
function GEntity:HeadTarget(origin)
end

--- Returns the health of the entity.  
--- @return number @health
function GEntity:Health()
end

--- Sets the entity on fire.  
--- See also Entity:Extinguish.  
--- @param length number @How long to keep the entity ignited, in seconds.
--- @param radius? number @The radius of the ignition, will ignite everything around the entity that is in this radius.
function GEntity:Ignite(length, radius)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: This function got disabled and will always throw an error if it's used. This is the error:  
--- ```  
--- [ERROR] InitializeAsClientEntity is deprecated and should no longer be used.  
--- ```  
--- Initializes this entity as being clientside only.  
--- Only works on entities fully created clientside, and as such it currently has no use due to this being automatically called by ents.CreateClientProp, ents.CreateClientside, Global.ClientsideModel and Global.ClientsideScene.  
function GEntity:InitializeAsClientEntity()
end

--- Fires input to the entity with the ability to make another entity responsible, bypassing the event queue system.  
--- You should only use this function over Entity:Fire if you know what you are doing.  
--- See Entity:Fire for a function that conforms to the internal map IO event queue and GM:AcceptInput for a hook that can intercept inputs.  
--- @param input string @The name of the input to fire
--- @param activator? GEntity @The entity that caused this input (i.e
--- @param caller? GEntity @The entity that is triggering this input (i.e
--- @param param? any @The value to give to the input
function GEntity:Input(input, activator, caller, param)
end

--- Resets the entity's bone cache values in order to prepare for a model change.  
--- This should be called after calling Entity:SetPoseParameter.  
function GEntity:InvalidateBoneCache()
end

--- Returns true if the entity has constraints attached to it  
--- 🦟 **BUG**: [This will only update clientside if the server calls it first. This only checks constraints added through the constraint so this will not react to map constraints.](https://github.com/Facepunch/garrysmod-issues/issues/3837)  
--- For a serverside alternative, see constraint.HasConstraints  
--- @return boolean @Whether the entity is constrained or not.
function GEntity:IsConstrained()
end

--- Returns if entity is constraint or not.  
--- This also means that Entity:GetConstrainedPhysObjects. Entity:GetConstrainedEntities and  Entity:SetPhysConstraintObjects can be used on this entity.  
--- ⚠ **WARNING**: Some constraint entities, such as `phys_spring`, will return false!  
--- @return boolean @Is the entity a constraint or not
function GEntity:IsConstraint()
end

--- Returns whether the entity is dormant or not.  
--- Client/server entities become dormant when they leave the PVS on the server. Client side entities can decide for themselves whether to become dormant.  
--- This mainly applies to [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community").  
--- @return boolean @Whether the entity is dormant or not.
function GEntity:IsDormant()
end

--- Checks if given flag is set or not.  
--- @param flag number @The engine flag to test, see Enums/EFL
--- @return boolean @Is set or not
function GEntity:IsEFlagSet(flag)
end

--- Returns whether an entity has engine effect applied or not.  
--- @param effect number @The effect to check for, see Enums/EF.
--- @return boolean @Whether the entity has the engine effect applied or not.
function GEntity:IsEffectActive(effect)
end

--- Checks if given flag(s) is set or not.  
--- @param flag number @The engine flag(s) to test, see Enums/FL
--- @return boolean @Is set or not
function GEntity:IsFlagSet(flag)
end

--- Returns whether the entity is in the world (not inside a wall or outside of the map).  
--- ℹ **NOTE**: Internally this function uses util.IsInWorld, that means that this function only checks Entity:GetPos of the entity. If an entity is only partially inside a wall, or has a weird GetPos offset, this function may not give reliable output.  
--- @return boolean @False if the entity is inside a wall or outside of the map, true otherwise.
function GEntity:IsInWorld()
end

--- Returns whether the entity is lag compensated or not.  
--- @return boolean @Whether the entity is lag compensated or not.
function GEntity:IsLagCompensated()
end

--- Returns true if the target is in line of sight.  
--- ℹ **NOTE**: This will only work when called on CBaseCombatCharacter entities. This includes players, NPCs, grenades, RPG rockets, crossbow bolts, and physics cannisters.  
--- @param target GVector @The target to test
--- @return boolean @Returns true if the line of sight is clear
function GEntity:IsLineOfSightClear(target)
end

--- Returns if the entity is going to be deleted in the next frame. Entities marked for deletion should not be accessed.  
--- @return boolean @If the entity is going to be deleted.
function GEntity:IsMarkedForDeletion()
end

--- Checks if the entity is an NPC or not.  
--- This will return false for NextBots, see Entity:IsNextBot for that.  
--- @return boolean @Whether the entity is an NPC.
function GEntity:IsNPC()
end

--- Checks if the entity is a NextBot or not.  
--- @return boolean @Whether the entity is an NextBot entity or not.
function GEntity:IsNextBot()
end

--- Returns whether the entity is on fire.  
--- @return boolean @Whether the entity is on fire or not.
function GEntity:IsOnFire()
end

--- Returns whether the entity is on ground or not.  
--- Internally, this checks if FL_ONGROUND is set on the entity.  
--- This function is an alias of Entity:OnGround.  
--- @return boolean @Whether the entity is on ground or not.
function GEntity:IsOnGround()
end

--- Checks if the entity is a player or not.  
--- @return boolean @Whether the entity is a player.
function GEntity:IsPlayer()
end

--- Returns true if the entity is being held by a player. Either by physics gun, gravity gun or use-key (+use).  
--- 🦟 **BUG**: [If multiple players are holding an object and one drops it, this will return false despite the object still being held.](https://github.com/Facepunch/garrysmod-issues/issues/2046)  
--- @return boolean @IsBeingHeld
function GEntity:IsPlayerHolding()
end

--- Returns whether there's a gesture with the given activity being played.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param activity number @The activity to test
--- @return boolean @Whether there's a gesture is given activity being played.
function GEntity:IsPlayingGesture(activity)
end

--- Returns whether a given point is within the entity's Orientated Bounding Box.  
--- This relies on the entity having a collision mesh (not a physics object) and will be affected by `SOLID_NONE`.  
--- @param point GVector @The point to test, in world space coordinates.
--- @return boolean @Whether the point is within the entity's bounds.
function GEntity:IsPointInBounds(point)
end

--- Checks if the entity is a ragdoll.  
--- @return boolean @Is ragdoll or not
function GEntity:IsRagdoll()
end

--- Checks if the entity is a SENT or a built-in entity.  
--- @return boolean @Returns true if entity is scripted ( SENT ), false if not ( A built-in engine entity )
function GEntity:IsScripted()
end

--- Returns whether the entity's current sequence is finished or not.  
--- @return boolean @Whether the entity's sequence is finished or not.
function GEntity:IsSequenceFinished()
end

--- Returns if the entity is solid or not.  
--- Very useful for determining if the entity is a trigger or not.  
--- @return boolean @Whether the entity is solid or not.
function GEntity:IsSolid()
end

--- Returns whether the entity is a valid entity or not.  
--- An entity is valid if:  
--- * It is not a NULL entity  
--- * It is not the worldspawn entity (game.GetWorld)  
--- ℹ **NOTE**: Instead of calling this method directly, it's a good idea to call the global Global.IsValid instead, however if you're sure the variable you're using is always an entity object it's better to use this method  
--- It will check whether the given variable contains an object (an Entity) or nothing at all for you. See examples.  
--- ⚠ **WARNING**: NULL entities can still be assigned with key/value pairs, but they will be instantly negated. See example 3  
--- This might be a cause for a lot of headache. Usually happening during networking etc., when completely valid entities suddenly become invalid on the client, but are never filtered with IsValid(). See GM:InitPostEntity for more details.  
--- @return boolean @true if the entity is valid, false otherwise
function GEntity:IsValid()
end

--- Returns whether the given layer ID is valid and exists on this entity.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @return boolean @Whether the given layer ID is valid and exists on this entity.
function GEntity:IsValidLayer(layerID)
end

--- Checks if the entity is a vehicle or not.  
--- @return boolean @Whether the entity is a vehicle.
function GEntity:IsVehicle()
end

--- Checks if the entity is a weapon or not.  
--- @return boolean @Whether the entity is a weapon
function GEntity:IsWeapon()
end

--- Returns whether the entity is a widget or not.  
--- This is used by the "Edit Bones" context menu property.  
--- @return boolean @Whether the entity is a widget or not.
function GEntity:IsWidget()
end

--- Returns if this entity is the map entity `Entity[0] worldspawn`.  
--- @return boolean @Whether this entity is the world entity.
function GEntity:IsWorld()
end

--- Converts a vector local to an entity into a worldspace vector  
--- @param lpos GVector @The local vector
--- @return GVector @The translated to world coordinates vector
function GEntity:LocalToWorld(lpos)
end

--- Converts a local angle (local to the entity) to a world angle.  
--- @param ang GAngle @The local angle
--- @return GAngle @The world angle
function GEntity:LocalToWorldAngles(ang)
end

--- Returns the attachment index of the given attachment name.  
--- @param attachmentName string @The name of the attachment.
--- @return number @The attachment index, or 0 if the attachment does not exist and -1 if the model is invalid.
function GEntity:LookupAttachment(attachmentName)
end

--- Gets the bone index of the given bone name, returns `nil` if the bone does not exist.  
--- See Entity:GetBoneName for the inverse of this function.  
--- @param boneName string @The name of the bone
--- @return number @Index of the given bone name, or `nil` if the bone doesn't exist on the Entity
function GEntity:LookupBone(boneName)
end

--- Returns pose parameter ID from its name.  
--- @param name string @Pose parameter name
--- @return number @The ID of the given pose parameter name, if it exists, -1 otherwise
function GEntity:LookupPoseParameter(name)
end

--- Returns sequence ID from its name. See Entity:GetSequenceName for a function that does the opposite.  
--- @param name string @Sequence name
--- @return number @Sequence ID for that name
--- @return number @The sequence duration
function GEntity:LookupSequence(name)
end

--- Turns the Entity:GetPhysicsObject into a physics shadow.  
--- It's used internally for the Player's and NPC's physics object, and certain HL2 entities such as the crane.  
--- A physics shadow can be used to have static entities that never move by setting both arguments to false.  
--- ℹ **NOTE**: Unlike Entity:PhysicsInitShadow, this function doesn't remove the current physics object.  
--- @param allowPhysicsMovement? boolean @Whether to allow the physics shadow to move under stress.
--- @param allowPhysicsRotation? boolean @Whether to allow the physics shadow to rotate under stress.
function GEntity:MakePhysicsObjectAShadow(allowPhysicsMovement, allowPhysicsRotation)
end

--- Sets custom bone angles.  
--- 🦟 **BUG**: [When used repeatedly serverside, this method is strongly discouraged due to the huge network traffic produced](https://github.com/Facepunch/garrysmod-issues/issues/5148)  
--- As of update `2024.10.29` this has been resolved. However, network traffic is still generated and should be taken into consideration.  
--- @param boneID number @Index of the bone you want to manipulate
--- @param ang GAngle @Angle to apply
--- @param networking? boolean @boolean to network these changes (if called from server)
function GEntity:ManipulateBoneAngles(boneID, ang, networking)
end

--- Manipulates the bone's jiggle status. This allows non jiggly bones to become jiggly.  
--- @param boneID number @Index of the bone you want to manipulate.
--- @param type number @The jiggle bone type
function GEntity:ManipulateBoneJiggle(boneID, type)
end

--- Sets custom bone offsets.  
--- @param boneID number @Index of the bone you want to manipulate.
--- @param pos GVector @Position vector to apply
--- @param networking? boolean @boolean to network these changes (if called from server)
function GEntity:ManipulateBonePosition(boneID, pos, networking)
end

--- Sets custom bone scale.  
--- 🦟 **BUG**: [When used repeatedly serverside, this method is strongly discouraged due to the huge network traffic produced.](https://github.com/Facepunch/garrysmod-issues/issues/5148)  
--- 🦟 **BUG**: [This does not scale procedural bones.](https://github.com/Facepunch/garrysmod-issues/issues/3502)  
--- @param boneID number @Index of the bone you want to manipulate
--- @param scale GVector @Scale vector to apply
function GEntity:ManipulateBoneScale(boneID, scale)
end

--- Returns entity's map creation ID. Unlike Entity:EntIndex or Entity:GetCreationID, it will always be the same on same map, no matter how much you clean up or restart it.  
--- To be used in conjunction with ents.GetMapCreatedEntity. See also Entity:CreatedByMap.  
--- @return number @The map creation ID or -1 if the entity is not compiled into the map.
function GEntity:MapCreationID()
end

--- Refreshes the shadow of the entity.  
function GEntity:MarkShadowAsDirty()
end

--- Fires the muzzle flash effect of the weapon the entity is carrying. This only creates a light effect and is often called alongside Weapon:SendWeaponAnim  
function GEntity:MuzzleFlash()
end

--- Performs a Ray-Orientated Bounding Box intersection from the given position to the origin of the OBBox with the entity and returns the hit position on the OBBox.  
--- This relies on the entity having a collision mesh (not a physics object) and will be affected by `SOLID_NONE`  
--- @param position GVector @The vector to start the intersection from.
--- @return GVector @The nearest hit point of the entity's bounding box in world coordinates.
function GEntity:NearestPoint(position)
end

--- Creates a network variable on the entity and adds Set/Get functions for it. This function should only be called in ENTITY:SetupDataTables.  
--- See Entity:NetworkVarNotify for a function to hook NetworkVar changes.  
--- ℹ **NOTE**: Entity NetworkVars are influenced by the return value of ENTITY:UpdateTransmitState.  
--- So if you use the **PVS**(**default**), then the NetworkVars can be different for each client.  
--- ⚠ **WARNING**: Make sure to not call the SetDT* and your custom set methods on the client realm unless you know exactly what you are doing.  
--- Combining this function with util.TableToJSON can also provide a way to network tables as serialized strings.  
--- @param type string @Supported choices:
--- @param slot number @Each network variable has to have a unique slot
--- @param name string @The name will affect how you access it
--- @param extended? table @A table of extended information
function GEntity:NetworkVar(type, slot, name, extended)
end
--- Creates a network variable on the entity and adds Set/Get functions for it. This function should only be called in ENTITY:SetupDataTables.  
--- See Entity:NetworkVarNotify for a function to hook NetworkVar changes.  
--- ℹ **NOTE**: Entity NetworkVars are influenced by the return value of ENTITY:UpdateTransmitState.  
--- So if you use the **PVS**(**default**), then the NetworkVars can be different for each client.  
--- ⚠ **WARNING**: Make sure to not call the SetDT* and your custom set methods on the client realm unless you know exactly what you are doing.  
--- Combining this function with util.TableToJSON can also provide a way to network tables as serialized strings.  
--- @param type string @Supported choices:
--- @param name string @The name will affect how you access it
--- @param extended? table @A table of extended information
function GEntity:NetworkVar(type, name, extended)
end

--- Similarly to Entity:NetworkVar, creates a network variable on the entity and adds Set/Get functions for it. This method stores it's value as a member value of a vector or an angle. This allows to go beyond the normal variable limit of Entity:NetworkVar for `Int` and `Float` types, at the expense of `Vector` and `Angle` limit.  
--- This function should only be called in ENTITY:SetupDataTables.  
--- ⚠ **WARNING**: Make sure to not call the SetDT* and your custom set methods on the client realm unless you know exactly what you are doing.  
--- @param type string @Supported choices:
--- @param slot number @The slot for this `Vector` or `Angle`, from `0` to `31`
--- @param element string @Which element of a `Vector` or an `Angle` to store the value on
--- @param name string @The name will affect how you access it
--- @param extended? table @A table of extra information
function GEntity:NetworkVarElement(type, slot, element, name, extended)
end
--- Similarly to Entity:NetworkVar, creates a network variable on the entity and adds Set/Get functions for it. This method stores it's value as a member value of a vector or an angle. This allows to go beyond the normal variable limit of Entity:NetworkVar for `Int` and `Float` types, at the expense of `Vector` and `Angle` limit.  
--- This function should only be called in ENTITY:SetupDataTables.  
--- ⚠ **WARNING**: Make sure to not call the SetDT* and your custom set methods on the client realm unless you know exactly what you are doing.  
--- @param type string @Supported choices:
--- @param element string @Which element of a `Vector` or an `Angle` to store the value on
--- @param name string @The name will affect how you access it
--- @param extended? table @A table of extra information
function GEntity:NetworkVarElement(type, element, name, extended)
end

--- Creates a callback that will execute when the given network variable changes - that is, when the `Set<name>()` function is run.  
--- The callback is executed **before** the value is changed, and is called even if the new and old values are the same.  
--- This function does not exist on entities in which Entity:InstallDataTable has not been called.  
--- By default, this means this function only exists on SENTs (both serverside and clientside) and on players with a Player Class (serverside and clientside Global.LocalPlayer only).  
--- It's therefore safest to only use this in ENTITY:SetupDataTables.  
--- 🦟 **BUG**: [The callback will not be called clientside if the var is changed right after entity spawn.](https://github.com/Facepunch/garrysmod-requests/issues/324)  
--- </name>  
--- @param name string @Name of variable to track changes of.
--- @param callback function @The function to call when the variable changes
function GEntity:NetworkVarNotify(name, callback)
end

--- Controls when, relative to Global.CurTime, the Entity will next run its Think function.  
--- For Scripted Entities, this is the ENTITY:Think function.  
--- For engine Entities, this is an internal function whose behavior will depend on the specific Entity type.  
--- For a Client-side equivalent, see Entity:SetNextClientThink.  
--- 🦟 **BUG**: [This does not work with SWEPs or Nextbots.](https://github.com/Facepunch/garrysmod-issues/issues/3269)  
--- @param timestamp number @The timestamp, relative to Global.CurTime, when the next think should occur.
function GEntity:NextThink(timestamp)
end

--- Returns the center of an entity's bounding box in local space.  
--- @return GVector @The center of an entity's bounding box relative to its Entity:GetPos.
function GEntity:OBBCenter()
end

--- Returns the highest corner of an entity's bounding box as a local vector.  
--- @return GVector @The local position of the highest corner of the entity's oriented bounding box.
function GEntity:OBBMaxs()
end

--- Returns the lowest corner of an entity's bounding box as a local vector.  
--- @return GVector @The local position of the lowest corner of the entity's oriented bounding box.
function GEntity:OBBMins()
end

--- Returns the entity's capabilities as a bitfield.  
--- In the engine this function is mostly used to check the use type, the save/restore system and level transitions flags.  
--- Even though the function is defined shared, it is not guaranteed to return the same value across states.  
--- ℹ **NOTE**: The enums for this are not currently implemented in Lua, however you can access the defines [here](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/shared/baseentity_shared.h#L21-L38).  
--- @return number @The bitfield, a combination of the [FCAP_](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp
function GEntity:ObjectCaps()
end

--- Returns true if the entity is on the ground, and false if it isn't.  
--- Internally, this checks if FL_ONGROUND is set on the entity. This is only updated for players and NPCs, and thus won't inherently work for other entities.  
--- @return boolean @Whether the entity is on the ground or not.
function GEntity:OnGround()
end

--- Tests whether the damage passes the entity filter.  
--- This will call ENTITY:PassesDamageFilter on scripted entities of the type "filter".  
--- ℹ **NOTE**: This function only works on entities of the type "filter". ( filter_* entities, including base game filter entites )  
--- @param dmg GCTakeDamageInfo @The damage info to test
--- @return boolean @Whether the damage info passes the entity filter.
function GEntity:PassesDamageFilter(dmg)
end

--- Tests whether the entity passes the entity filter.  
--- This will call ENTITY:PassesFilter on scripted entities of the type "filter".  
--- ℹ **NOTE**: This function only works on entities of the type "filter". ( filter_* entities, including base game filter entites )  
--- @param caller GEntity @The initiator of the test
--- @param ent GEntity @The entity to test against the entity filter.
--- @return boolean @Whether the entity info passes the entity filter.
function GEntity:PassesFilter(caller, ent)
end

--- Wakes up the entity's physics object  
function GEntity:PhysWake()
end

--- Destroys the current physics object of an entity.  
--- ℹ **NOTE**: Cannot be used on a ragdoll or the world entity.  
function GEntity:PhysicsDestroy()
end

--- Initializes the physics mesh of the entity from a triangle soup defined by a table of vertices. The resulting mesh is hollow, may contain holes, and always has a volume of 0.  
--- While this is very useful for static geometry such as terrain displacements, it is advised to use Entity:PhysicsInitConvex or Entity:PhysicsInitMultiConvex for moving solid objects instead.  
--- Entity:EnableCustomCollisions needs to be called if you want players to collide with the entity correctly.  
--- @param vertices table @A table consisting of Structures/MeshVertex (only the `pos` element is taken into account)
--- @param surfaceprop? string @Physical material from [surfaceproperties.txt](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/surfaceproperties.txt) o
--- @param massCenterOveride? GVector @If set, overwrites the center of mass for the created physics object.
--- @return boolean @Returns `true` on success, `nil` otherwise.
function GEntity:PhysicsFromMesh(vertices, surfaceprop, massCenterOveride)
end

--- Initializes the physics object of the entity using its current model. Deletes the previous physics object if it existed and the new object creation was successful.  
--- If the entity's current model has no physics mesh associated to it, no physics object will be created and the previous object will still exist, if applicable.  
--- ℹ **NOTE**: When called clientside, this will not create a valid PhysObj if the model hasn't been precached serverside.  
--- If successful, this function will automatically call Entity:SetSolid( solidType ) and Entity:SetSolidFlags( 0 ).  
--- 🦟 **BUG**: [Clientside physics objects are broken and do not move properly in some cases. Physics objects should only created on the server or you will experience incorrect physgun beam position, prediction issues, and other unexpected behavior.](https://github.com/Facepunch/garrysmod-issues/issues/5060)  
--- A workaround is available on the Entity:PhysicsInitConvex page.  
--- @param solidType number @The solid type of the physics object to create, see Enums/SOLID
--- @param massCenterOverride? GVector @If set, overwrites the center of mass for the created physics object.
--- @return boolean @Returns `true` on success, `false` otherwise.
function GEntity:PhysicsInit(solidType, massCenterOverride)
end

--- Makes the physics object of the entity a AABB.  
--- This function will automatically destroy any previous physics objects and do the following:  
--- * Entity:SetSolid( `SOLID_BBOX` )  
--- * Entity:SetMoveType( `MOVETYPE_VPHYSICS` )  
--- * Entity:SetCollisionBounds( `mins`, `maxs` )  
--- ℹ **NOTE**: If the volume of the resulting box is 0 (the mins and maxs are the same), the mins and maxs will be changed to Global.Vector( -1, -1, -1 ) and Global.Vector( 1, 1, 1 ), respectively.  
--- 🦟 **BUG**: [Clientside physics objects are broken and do not move properly in some cases. Physics objects should only created on the server or you will experience incorrect physgun beam position, prediction issues, and other unexpected behavior.](https://github.com/Facepunch/garrysmod-issues/issues/5060)  
--- A workaround is available on the Entity:PhysicsInitConvex page.  
--- @param mins GVector @The minimum position of the box
--- @param maxs GVector @The maximum position of the box
--- @param surfaceprop? string @Physical material from [surfaceproperties.txt](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/surfaceproperties.txt) o
--- @param massCenterOverride? GVector @If set, overwrites the center of mass for the created physics object.
--- @return boolean @Returns `true` on success, `nil` otherwise
function GEntity:PhysicsInitBox(mins, maxs, surfaceprop, massCenterOverride)
end

--- Initializes the physics mesh of the entity with a convex mesh defined by a table of points. The resulting mesh is the  of all the input points. If successful, the previous physics object will be removed.  
--- This is the standard way of creating moving physics objects with a custom convex shape. For more complex, concave shapes, see Entity:PhysicsInitMultiConvex.  
--- 🦟 **BUG**: [This will crash if given all Global.Vector(0,0,0)s.](https://github.com/Facepunch/garrysmod-issues/issues/3301)  
--- 🦟 **BUG**: [Clientside physics objects are broken and do not move properly in some cases. Physics objects should only created on the server or you will experience incorrect physgun beam position, prediction issues, and other unexpected behavior.](https://github.com/Facepunch/garrysmod-issues/issues/5060)  
--- You can use the following workaround for movement, though clientside collisions will still be broken.  
--- ```  
--- function ENT:Think()  
--- if ( CLIENT ) then  
--- local physobj = self:GetPhysicsObject()  
--- if ( IsValid( physobj ) ) then  
--- physobj:SetPos( self:GetPos() )  
--- physobj:SetAngles( self:GetAngles() )  
--- end  
--- end  
--- end  
--- ```  
--- @param points table @A table of eight Vectors, in local coordinates, to be used in the computation of the convex mesh
--- @param surfaceprop? string @Physical material from [surfaceproperties.txt](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/surfaceproperties.txt) o
--- @param massCenterOverride? GVector @If set, overwrites the center of mass for the created physics object.
--- @return boolean @Returns `true` on success, `false` otherwise.
function GEntity:PhysicsInitConvex(points, surfaceprop, massCenterOverride)
end

--- An advanced version of Entity:PhysicsInitConvex which initializes a physics object from multiple convex meshes. This should be used for physics objects with a custom shape which cannot be represented by a single convex mesh.  
--- If successful, the previous physics object will be removed.  
--- 🦟 **BUG**: [Clientside physics objects are broken and do not move properly in some cases. Physics objects should only created on the server or you will experience incorrect physgun beam position, prediction issues, and other unexpected behavior.](https://github.com/Facepunch/garrysmod-issues/issues/5060)  
--- A workaround is available on the Entity:PhysicsInitConvex page.  
--- @param vertices table @A table consisting of tables of Vectors
--- @param surfaceprop? string @Physical material from [surfaceproperties.txt](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/surfaceproperties.txt) o
--- @param massCenterOverride? GVector @If set, overwrites the center of mass for the created physics object.
--- @return boolean @Returns `true` on success, `nil` otherwise.
function GEntity:PhysicsInitMultiConvex(vertices, surfaceprop, massCenterOverride)
end

--- Initializes the entity's physics object as a physics shadow. Removes the previous physics object if successful. This is used internally for the Player's and NPC's physics object, and certain HL2 entities such as the crane.  
--- A physics shadow can be used to have static entities that never move by setting both arguments to false.  
--- The created physics object will depend on the entity's solidity `SOLID_NONE` will not create a physics object, `SOLID_BBOX` will create a Axis-Aligned BBox one, `SOLID_OBB` will create Orientated Bounding Box one, and anything else will use the models' physics mesh.  
--- 🦟 **BUG**: [Clientside physics objects are broken and do not move properly in some cases. Physics objects should only created on the server or you will experience incorrect physgun beam position, prediction issues, and other unexpected behavior.](https://github.com/Facepunch/garrysmod-issues/issues/5060)  
--- A workaround is available on the Entity:PhysicsInitConvex page.  
--- @param allowPhysicsMovement? boolean @Whether to allow the physics shadow to move under stress.
--- @param allowPhysicsRotation? boolean @Whether to allow the physics shadow to rotate under stress.
--- @return boolean @Return `true` on success, `nil` otherwise.
function GEntity:PhysicsInitShadow(allowPhysicsMovement, allowPhysicsRotation)
end

--- Makes the physics object of the entity a sphere.  
--- This function will automatically destroy any previous physics objects and do the following:  
--- * Entity:SetSolid( `SOLID_BBOX` )  
--- * Entity:SetMoveType( `MOVETYPE_VPHYSICS` )  
--- 🦟 **BUG**: [Clientside physics objects are broken and do not move properly in some cases. Physics objects should only created on the server or you will experience incorrect physgun beam position, prediction issues, and other unexpected behavior.](https://github.com/Facepunch/garrysmod-issues/issues/5060)  
--- A workaround is available on the Entity:PhysicsInitConvex page.  
--- @param radius number @The radius of the sphere.
--- @param physmat? string @Physical material from [surfaceproperties.txt](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/surfaceproperties.txt) o
--- @return boolean @Returns `true` on success, `false` otherwise
function GEntity:PhysicsInitSphere(radius, physmat)
end

--- Initializes a static physics object of the entity using its current model. If successful, the previous physics object is removed.  
--- This is what used by entities such as `func_breakable`, `prop_dynamic`, `item_suitcharger`, `prop_thumper` and `npc_rollermine` while it is in its "buried" state in the Half-Life 2 Campaign.  
--- If the entity's current model has no physics mesh associated to it, no physics object will be created.  
--- ℹ **NOTE**: This function will automatically call Entity:SetSolid( `solidType` ).  
--- 🦟 **BUG**: [Clientside physics objects are broken and do not move properly in some cases. Physics objects should only created on the server or you will experience incorrect physgun beam position, prediction issues, and other unexpected behavior.](https://github.com/Facepunch/garrysmod-issues/issues/5060)  
--- A workaround is available on the Entity:PhysicsInitConvex page.  
--- @param solidType number @The solid type of the physics object to create, see Enums/SOLID
--- @return boolean @Returns `true` on success, `false` otherwise
function GEntity:PhysicsInitStatic(solidType)
end

--- Makes the entity play a .vcd scene. [All scenes from Half-Life 2](https://developer.valvesoftware.com/wiki/Half-Life_2_Scenes_List).  
--- @param scene string @Filepath to scene.
--- @param delay? number @Delay in seconds until the scene starts playing.
--- @return number @Estimated length of the scene.
--- @return GEntity @The scene entity, removing which will stop the scene from continuing to play.
function GEntity:PlayScene(scene, delay)
end

--- Changes an entities angles so that it faces the target entity.  
--- @param target GEntity @The entity to face.
function GEntity:PointAtEntity(target)
end

--- Precaches gibs for the entity's model.  
--- Normally this function should be ran when the entity is spawned, for example the ENTITY:Initialize, after Entity:SetModel is called.  
--- This is required for Entity:GibBreakServer and Entity:GibBreakClient to work.  
--- @return number @The amount of gibs the prop has
function GEntity:PrecacheGibs()
end

--- Normalizes the ragdoll. This is used alongside Kinect in Entity:SetRagdollBuildFunction, for more info see ragdoll_motion entity.  
function GEntity:RagdollSolve()
end

--- Sets the function to build the ragdoll. This is used alongside Kinect in Entity:SetRagdollBuildFunction, for more info see ragdoll_motion entity.  
function GEntity:RagdollStopControlling()
end

--- Makes the physics objects follow the set bone positions. This is used alongside Kinect in Entity:SetRagdollBuildFunction, for more info see ragdoll_motion entity.  
function GEntity:RagdollUpdatePhysics()
end

--- Removes the entity it is used on. The entity will be removed at the start of next tick.  
function GEntity:Remove()
end

--- Removes all decals from the entities surface.  
function GEntity:RemoveAllDecals()
end

--- Removes and stops all gestures.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
function GEntity:RemoveAllGestures()
end

--- Removes a function previously added via Entity:CallOnRemove.  
--- @param identifier string @Identifier of the function given to Entity:CallOnRemove.
function GEntity:RemoveCallOnRemove(identifier)
end

--- Removes a callback previously added with Entity:AddCallback  
--- @param hook string @The hook name to remove
--- @param callbackid number @The callback id previously retrieved with the return of Entity:AddCallback or Entity:GetCallbacks
function GEntity:RemoveCallback(hook, callbackid)
end

--- Removes specified engine flag  
--- @param flag number @The flag to remove, see Enums/EFL
function GEntity:RemoveEFlags(flag)
end

--- Removes an engine effect applied to an entity.  
--- @param effect number @The effect to remove, see Enums/EF.
function GEntity:RemoveEffects(effect)
end

--- Removes specified flag(s) from the entity  
--- @param flag number @The flag(s) to remove, see Enums/FL
function GEntity:RemoveFlags(flag)
end

--- Removes a PhysObject from the entity's motion controller so that ENTITY:PhysicsSimulate will no longer be called for given PhysObject.  
--- You must first create a motion controller with Entity:StartMotionController.  
--- ℹ **NOTE**: Only works on a scripted Entity of anim type  
--- @param physObj GPhysObj @The PhysObj to remove from the motion controller.
function GEntity:RemoveFromMotionController(physObj)
end

--- Removes and stops the gesture with given activity.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param activity number @The activity remove
function GEntity:RemoveGesture(activity)
end

--- Breaks internal Ragdoll constrains, so you can for example separate an arm from the body of a ragdoll and preserve all physics.  
--- The visual mesh will still stretch as if it was properly connected unless the ragdoll model is specifically designed to avoid that.  
--- @param num? number @Which constraint to break, values below 0 mean break them all
function GEntity:RemoveInternalConstraint(num)
end

--- Removes solid flag(s) from the entity.  
--- @param flags number @The flag(s) to remove, see Enums/FSOLID.
function GEntity:RemoveSolidFlags(flags)
end

--- Removes a SpawnFlag from the current SpawnFlags of an Entity.  
--- SpawnFlags can easily be found on https://developer.valvesoftware.com/wiki/.  
--- ℹ **NOTE**: See also Entity:AddSpawnFlags, Entity:SetSpawnFlags  
--- Using SF Enumerations won't work, if this function is ran clientside due to the enumerations being defined only Serverside. Use the actual SpawnFlag number.  
--- @param flag number @The SpawnFlag to remove from the Entity
function GEntity:RemoveSpawnFlags(flag)
end

--- Plays an animation on the entity. This may not always work on engine entities.  
--- ⚠ **WARNING**: This will not reset the animation on viewmodels, use Entity:SendViewModelMatchingSequence instead.  
--- ℹ **NOTE**: This will not work properly if called directly after calling Entity:SetModel. Consider waiting until the next Tick.  
--- Will not work on players due to the animations being reset every frame by the base gamemode animation system. See GM:CalcMainActivity.  
--- For custom scripted entities you will want to apply example from ENTITY:Think to make animations work.  
--- @param sequence number @The sequence to play
function GEntity:ResetSequence(sequence)
end

--- Reset entity sequence info such as playback rate, ground speed, last event check, etc.  
function GEntity:ResetSequenceInfo()
end

--- Makes the entity/weapon respawn.  
--- Only usable on HL2/HL:S pickups and any weapons. Seems to be buggy with weapons.  
--- Very unreliable.  
function GEntity:Respawn()
end

--- Restarts the entity's animation gesture. If the given gesture is already playing, it will reset it and play it from the beginning.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites.  
--- @param activity number @The activity number to send to the entity
--- @param addIfMissing? boolean @Add/start the gesture to if it has not been yet started.
--- @param autokill? boolean 
function GEntity:RestartGesture(activity, addIfMissing, autokill)
end

--- Returns sequence ID corresponding to given activity ID.  
--- Opposite of Entity:GetSequenceActivity.  
--- Similar to Entity:LookupSequence.  
--- See also Entity:SelectWeightedSequenceSeeded.  
--- @param act number @The activity ID, see Enums/ACT.
--- @return number @The sequence ID
function GEntity:SelectWeightedSequence(act)
end

--- Returns the sequence ID corresponding to given activity ID, and uses the provided seed for random selection. The seed should be the same server-side and client-side if used in a predicted environment.  
--- See Entity:SelectWeightedSequence for a provided-seed version of this function.  
--- @param act number @The activity ID, see Enums/ACT.
--- @param seed number @The seed to use for randomly selecting a sequence in the case the activity ID has multiple sequences bound to it
--- @return number @The sequence ID
function GEntity:SelectWeightedSequenceSeeded(act, seed)
end

--- Sends sequence animation to the view model. It is recommended to use this for view model animations, instead of Entity:ResetSequence.  
--- This function is only usable on view models.  
--- @param seq number @The sequence ID returned by Entity:LookupSequence or  Entity:SelectWeightedSequence.
function GEntity:SendViewModelMatchingSequence(seq)
end

--- Returns length of currently played sequence.  
--- 🦟 **BUG**: [This will return incorrect results for weapons and viewmodels clientside in thirdperson.](https://github.com/Facepunch/garrysmod-issues/issues/2783)  
--- @param seqid? number @A sequence ID to return the length specific sequence of instead of the entity's main/currently playing sequence.
--- @return number @The length of the sequence
function GEntity:SequenceDuration(seqid)
end

--- Sets the entity's velocity.  
--- ℹ **NOTE**: Actually binds to CBaseEntity::SetLocalVelocity() which sets the entity's velocity due to movement in the world from forces such as gravity. Does not include velocity from entity-on-entity collision or other world movement.  
--- @param velocity GVector @The new velocity to set.
function GEntity:SetAbsVelocity(velocity)
end

--- Sets the angles of the entity.  
--- ℹ **NOTE**: To set a player's angles, use Player:SetEyeAngles instead.  
--- @param angles GAngle @The new angles.
function GEntity:SetAngles(angles)
end

--- Sets the start time (relative to Global.CurTime) of the current animation, which is used to determine Entity:GetCycle. Should be less than CurTime to play an animation from the middle.  
--- @param time number @The time the animation was supposed to begin.
function GEntity:SetAnimTime(time)
end

--- Sets a player's third-person animation. Mainly used by Weapons to start the player's weapon attack and reload animations.  
--- @param playerAnim number @Player animation, see Enums/PLAYER.
function GEntity:SetAnimation(playerAnim)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:SetParent instead.  
--- Parents the sprite to an attachment on another model.  
--- Works only on `env_sprite` entities.  
--- Despite existing on client, it doesn't actually do anything on client.  
--- @param ent GEntity @The entity to attach/parent to
--- @param attachment number @The attachment ID to parent to
function GEntity:SetAttachment(ent, attachment)
end

--- Sets the blood color this entity uses.  
--- @param bloodColor number @An integer corresponding to Enums/BLOOD_COLOR.
function GEntity:SetBloodColor(bloodColor)
end

--- Sets the Entity's active Sub Models via a string of Sub Model IDs in order from the first Body Group ID to the last.  
--- This is a convenience function for Entity:SetBodygroup.  
--- ℹ **NOTE**: When used on a Weapon, this will modify its viewmodel.  
--- @param subModelIds string @The Sub Model IDs to activate for each Body Group on the Entity's model
function GEntity:SetBodyGroups(subModelIds)
end

--- Sets the currently active Sub Model ID for the Body Group corresponding to the given Body Group ID of the Entity's model.  
--- ℹ **NOTE**: When used on a Weapon, this will modify its viewmodel.  
--- @param bodyGroupId number @The Body Group ID to set the Sub Model ID of
--- @param subModelId number @The Sub Model ID to set as active for this Body Group
function GEntity:SetBodygroup(bodyGroupId, subModelId)
end

--- Sets the specified value on the bone controller with the given ID of this entity, it's used in HL1 to change the head rotation of NPCs, turret aiming and so on.  
--- ℹ **NOTE**: This is the precursor of pose parameters, and only works for Half Life 1: Source models supporting it.  
--- @param boneControllerID number @The ID of the bone controller to set the value to
--- @param value number @The value to set on the specified bone controller.
function GEntity:SetBoneController(boneControllerID, value)
end

--- Sets the bone matrix of given bone to given matrix. See also Entity:GetBoneMatrix.  
--- ℹ **NOTE**: Despite existing serverside, it does nothing.  
--- @param boneid number @The ID of the bone
--- @param matrix GVMatrix @The matrix to set.
function GEntity:SetBoneMatrix(boneid, matrix)
end

--- Sets the bone position and angles.  
--- ⁉ **VALIDATE**: For changes to happen, this must be called in a rendering hook.  
--- @param bone number @The bone ID to manipulate
--- @param pos GVector @The position to set
--- @param ang GAngle @The angles to set
function GEntity:SetBonePosition(bone, pos, ang)
end

--- Sets the collision bounds for the entity, which are used for triggers (Entity:SetTrigger, ENTITY:Touch), and collision (If Entity:SetSolid set as SOLID_BBOX).  
--- Input bounds are relative to Entity:GetPos!  
--- See also Entity:SetCollisionBoundsWS.  
--- ℹ **NOTE**: Player collision bounds are reset every frame to player's Player:SetHull values.  
--- @param mins GVector @The minimum vector of the bounds.
--- @param maxs GVector @The maximum vector of the bounds.
function GEntity:SetCollisionBounds(mins, maxs)
end

--- A convenience function that sets the collision bounds for the entity in world space coordinates by transforming given vectors to entity's local space and passing them to Entity:SetCollisionBounds  
--- @param vec1 GVector @The first vector of the bounds.
--- @param vec2 GVector @The second vector of the bounds.
function GEntity:SetCollisionBoundsWS(vec1, vec2)
end

--- Sets the entity's collision group.  
--- @param group number @Collision group of the entity, see Enums/COLLISION_GROUP
function GEntity:SetCollisionGroup(group)
end

--- Sets the color of an entity.  
--- Some entities may need a custom [render mode](Enums/RENDERMODE) set for transparency to work. See example 2.  
--- Entities also must have a proper [render group](Enums/RENDERGROUP) set for transparency to work.  
--- When rendering a model manually via Entity:SetNoDraw inside ENTITY:Draw, you may need to use render.SetColorModulation in the render hook (where you call Entity:DrawModel) instead.  
--- @param color? GColor @The color to set
function GEntity:SetColor(color)
end

--- Sets the creator of this entity. This is set automatically in Sandbox gamemode when spawning SENTs, but is never used/read by default.  
--- @param ply GPlayer @The creator
function GEntity:SetCreator(ply)
end

--- Marks the entity to call GM:ShouldCollide. Not to be confused with Entity:EnableCustomCollisions.  
--- ℹ **NOTE**: Make sure to use Entity:CollisionRulesChanged after changing this value.  
--- Otherwise it can cause crashes.  
--- @param enable boolean @Enable or disable the custom collision check
function GEntity:SetCustomCollisionCheck(enable)
end

--- Sets the progress of the current animation to a specific value between 0 and 1.  
--- 🦟 **BUG**: [Viewmodels overwrite their animation cycle every frame, for prediction/interpolation purposes.](https://github.com/Facepunch/garrysmod-issues/issues/3038)  
--- @param value number @The desired cycle value
function GEntity:SetCycle(value)
end

--- Sets the elasticity of this entity, used by some flying entities such as the Helicopter NPC to determine how much it should bounce around when colliding.  
--- @param elasticity number @The elasticity to set.
function GEntity:SetElasticity(elasticity)
end

--- Allows you to set the Start or End entity attachment for the rope.  
--- @param name string @The name of the variable to modify
--- @param entity GEntity @The entity to apply to the specific attachment.
function GEntity:SetEntity(name, entity)
end

--- Sets the position an entity's eyes look toward. This works as an override for default behavior. Set to `0,0,0` to disable the override.  
--- @param pos GVector @If NPC, the **world position** for the entity to look towards, for Ragdolls, a **local position** in front of their `eyes` attachment.
function GEntity:SetEyeTarget(pos)
end

--- Sets the scale of all the flexes of this entity. See Entity:SetFlexWeight.  
--- @param scale number @The new flex scale to set to
function GEntity:SetFlexScale(scale)
end

--- Sets the weight/value of given flex controller.  
--- Setting flex weights spawns an internal networked entity (one per entity face posed) to accommodate networking to clients.  
--- ℹ **NOTE**: Only `96` flex controllers can be set! Flex controllers on models with higher amounts will not be accessible.  
--- @param flex number @The ID of the flex to modify weight of
--- @param weight number @The new weight to set
function GEntity:SetFlexWeight(flex, weight)
end

--- Sets friction multiplier for this entity when sliding against a surface. Entities default to 1 (100%) and can be higher.  
--- This may not affect all entities, but does work for players (the range is 0 to 10), as well as other entities using MOVETYPE_STEP   
--- This only multiplies the friction of the entity, to change the value itself use PhysObj:SetMaterial.  
--- @param friction number @Friction multiplier
function GEntity:SetFriction(friction)
end

--- Sets the gravity multiplier of the entity.  
--- This may not affect affect all entities, but does affect players, and entities with MOVETYPE_FLYGRAVITY, such as projectiles.  
--- 🦟 **BUG**: [This function is not predicted or networked.](https://github.com/Facepunch/garrysmod-issues/issues/3648)  
--- @param multiplier number @By how much to multiply the gravity
function GEntity:SetGravity(multiplier)
end

--- Sets the ground the entity is standing on.  
--- @param ground GEntity @The ground entity.
function GEntity:SetGroundEntity(ground)
end

--- Sets the health of the entity.  
--- ℹ **NOTE**: You may want to take Entity:GetMaxHealth into account when calculating what to set health to, in case a gamemode has a different max health than 100.  
--- In some cases, setting health only serverside can cause hitches in movement, for example if something is modifying the player speed based on health.  
--- To solve this issue, it is better to set it shared in a predicted hook.  
--- @param newHealth number @New health value.
function GEntity:SetHealth(newHealth)
end

--- Sets the current Hitbox set for the entity.  
--- @param id number @The new hitbox set to set
function GEntity:SetHitboxSet(id)
end

--- Enables or disable the inverse kinematic usage of this entity.  
--- ⚠ **WARNING**: Calling this with false outside of ENTITY:Initialize requires a model change to take effect.  
--- @param useIK? boolean @The state of the IK.
function GEntity:SetIK(useIK)
end

--- Sets Hammer key values on an entity.  
--- You can look up which entities have what key values on the [Valve Developer Community](https://developer.valvesoftware.com/wiki/) on entity pages.  
--- A  list of basic entities can be found [here](https://developer.valvesoftware.com/wiki/List_of_entities).  
--- Alternatively you can look at the .fgd files shipped with Garry's Mod in the bin/ folder with a text editor to see the key values as they appear in Hammer.  
--- @param key string @The internal key name
--- @param value string @The value to set
function GEntity:SetKeyValue(key, value)
end

--- Sets the Level Of Detail model to use with this entity. This may not work for all models if the model doesn't include any LOD sub models.  
--- This function works exactly like the clientside r_lod convar and takes priority over it.  
--- @param lod? number @The Level Of Detail model ID to use
function GEntity:SetLOD(lod)
end

--- This allows the entity to be lag compensated during Player:LagCompensation.  
--- ℹ **NOTE**: Players are lag compensated by default and there's no need to call this function for them.  
--- It's best to not enable lag compensation on parented entities, as the system does not handle it that well ( they will be moved back but then the entity will lag behind ).  
--- Parented entities move back with the parent if it's lag compensated, so if you are making some kind of armor piece you shouldn't do anything.  
--- As a side note for parented entities, if your entity can be shot at, keep in mind that its collision bounds need to be bigger than the bone's hitbox the entity is parented to, or hull/line traces ( such as the crowbar attack or bullets ) might not hit at all.  
--- @param enable boolean @Whether the entity should be lag compensated or not.
function GEntity:SetLagCompensated(enable)
end

--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param layerID number @The Layer ID
--- @param blendIn number 
function GEntity:SetLayerBlendIn(layerID, blendIn)
end

--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param layerID number @The Layer ID
--- @param blendOut number 
function GEntity:SetLayerBlendOut(layerID, blendOut)
end

--- Sets the animation cycle/frame of given layer.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @param cycle number @The new animation cycle/frame for given layer.
function GEntity:SetLayerCycle(layerID, cycle)
end

--- Sets the duration of given layer. This internally overrides the Entity:SetLayerPlaybackRate.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @param duration number @The new duration of the layer in seconds.
function GEntity:SetLayerDuration(layerID, duration)
end

--- Sets whether the layer should loop or not.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param layerID number @The Layer ID
--- @param loop boolean @Whether the layer should loop or not.
function GEntity:SetLayerLooping(layerID, loop)
end

--- Sets the layer playback rate. See also Entity:SetLayerDuration.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @param rate number @The new playback rate.
function GEntity:SetLayerPlaybackRate(layerID, rate)
end

--- Sets the priority of given layer.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param layerID number @The Layer ID
--- @param priority number @The new priority of the layer.
function GEntity:SetLayerPriority(layerID, priority)
end

--- Sets the sequence of given layer.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID.
--- @param seq number @The sequenceID to set
function GEntity:SetLayerSequence(layerID, seq)
end

--- Sets the layer weight. This influences how strongly the animation should be overriding the normal animations of the entity.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @param weight number @The new layer weight.
function GEntity:SetLayerWeight(layerID, weight)
end

--- This forces an entity to use the bone transformation behaviour from versions prior to **8 July 2014**.  
--- This behaviour affects Entity:EnableMatrix and Entity:SetModelScale and is incorrect, therefore this function be used exclusively as a quick fix for old scripts that rely on it.  
--- @param enabled boolean @Whether the entity should use the old bone transformation behaviour or not.
function GEntity:SetLegacyTransform(enabled)
end

--- Sets the entity to be used as the light origin position for this entity.  
--- @param lightOrigin GEntity @The lighting entity.
function GEntity:SetLightingOriginEntity(lightOrigin)
end

--- Sets angles relative to angles of Entity:GetParent  
--- @param ang GAngle @The local angle
function GEntity:SetLocalAngles(ang)
end

--- Sets the entity's angular velocity (rotation speed).  
--- @param angVel GAngle @The angular velocity to set.
function GEntity:SetLocalAngularVelocity(angVel)
end

--- Sets local position relative to the parented position. This is for use with Entity:SetParent to offset position.  
--- @param pos GVector @The local position
function GEntity:SetLocalPos(pos)
end

--- Sets the entity's local velocity which is their velocity due to movement in the world from forces such as gravity. Does not include velocity from entity-on-entity collision or other world movement.  
--- ⚠ **WARNING**: Same as Entity:SetAbsVelocity, but clamps the given velocity, and is not recommended to be used because of that.  
--- @param velocity GVector @The new velocity to set.
function GEntity:SetLocalVelocity(velocity)
end

--- Sets the rendering material override of the entity.  
--- To set a Lua material created with Global.CreateMaterial, just prepend a "!" to the material name.  
--- If you wish to override a single material on the model, use Entity:SetSubMaterial instead.  
--- ℹ **NOTE**: To apply materials to models, that material **must** have **VertexLitGeneric** shader. For that reason you cannot apply map textures onto models, map textures use a different material shader - **LightmappedGeneric**, which can be used on brush entities.  
--- 🦟 **BUG**: [The server's value takes priority on the client.](https://github.com/Facepunch/garrysmod-issues/issues/3362)  
--- @param materialName string @New material name
function GEntity:SetMaterial(materialName)
end

--- Sets the maximum health for entity. Note, that you can still set entity's health above this amount with Entity:SetHealth.  
--- @param maxhealth number @What the max health should be
function GEntity:SetMaxHealth(maxhealth)
end

--- Sets the NPC max yaw speed. Internally sets the `m_fMaxYawSpeed` variable which is polled by the engine.  
--- ℹ **NOTE**: This is a helper function only available if your SENT is based on `base_ai`  
--- @param maxyaw number @The new max yaw value to set
function GEntity:SetMaxYawSpeed(maxyaw)
end

--- Sets the model of the entity.  
--- This does not update the physics of the entity - see Entity:PhysicsInit.  
--- ⚠ **WARNING**: This silently fails when given an empty string.  
--- @param modelName string @New model value.
function GEntity:SetModel(modelName)
end

--- Alter the model name returned by Entity:GetModel. Does not affect the entity's actual model.  
--- @param modelname string @The new model name.
function GEntity:SetModelName(modelname)
end

--- Scales the model of the entity, if the entity is a Player or an NPC the hitboxes will be scaled as well.  
--- For some entities, calling Entity:Activate after this will scale the collision bounds and PhysObj as well; be wary as there's no optimization being done internally and highly complex collision models might crash the server.  
--- This is the same system used in TF2 for the Mann Vs Machine robots.  
--- To resize the entity along any axis, use Entity:EnableMatrix instead.  
--- Client-side trace detection seems to mess up if deltaTime is set to anything but zero. A very small decimal can be used instead of zero to solve this issue.  
--- If your old scales are wrong, use Entity:SetLegacyTransform as a quick fix.  
--- ℹ **NOTE**: If you do not want the physics to be affected by Entity:Activate, you can use Entity:ManipulateBoneScale`( 0, Vector( scale, scale, scale ) )` instead.  
--- 🦟 **BUG**: [This does not scale procedural bones and disables IK.](https://github.com/Facepunch/garrysmod-issues/issues/3502)  
--- @param scale number @A float to scale the model by
--- @param deltaTime? number @Transition time of the scale change, set to 0 to modify the scale right away
function GEntity:SetModelScale(scale, deltaTime)
end

--- Sets the move collide type of the entity. The move collide is the way a physics object reacts to hitting an object - will it bounce, slide?  
--- @param moveCollideType number @The move collide type, see Enums/MOVECOLLIDE
function GEntity:SetMoveCollide(moveCollideType)
end

--- Sets the Movement Parent of an entity to another entity.  
--- Similar to Entity:SetParent, except the object's coordinates are not translated automatically before parenting.  
--- Does nothing on client.  
--- @param Parent GEntity @The entity to change this entity's Movement Parent to.
function GEntity:SetMoveParent(Parent)
end

--- Sets the entity's move type. This should be called before initializing the physics object on the entity, unless it will override SetMoveType such as Entity:PhysicsInitBox.  
--- Despite existing on client, it doesn't actually do anything on client.  
--- @param movetype number @The new movetype, see Enums/MOVETYPE
function GEntity:SetMoveType(movetype)
end

--- Sets the NPC classification. Internally sets the `m_iClass` variable which is polled by the engine.  
--- ℹ **NOTE**: This is a helper function only available if your SENT is based on `base_ai`  
--- @param classification number @The CLASS Enum
function GEntity:SetNPCClass(classification)
end

--- Sets a networked angle value on the entity.  
--- The value can then be accessed with Entity:GetNW2Angle both from client and server.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWAngle instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value GAngle @The value to set
function GEntity:SetNW2Angle(key, value)
end

--- Sets a networked boolean value on the entity.  
--- The value can then be accessed with Entity:GetNW2Bool both from client and server.  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity or else NW2Vars could get mixed up, updated multiple times or not be set.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWBool instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value boolean @The value to set
function GEntity:SetNW2Bool(key, value)
end

--- Sets a networked entity value on the entity.  
--- The value can then be accessed with Entity:GetNW2Entity both from client and server.  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity or else NW2Vars could get mixed up, updated multiple times or not be set.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWEntity instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value GEntity @The value to set
function GEntity:SetNW2Entity(key, value)
end

--- Sets a networked float (number) value on the entity.  
--- The value can then be accessed with Entity:GetNW2Float both from client and server.  
--- Unlike Entity:SetNW2Int, floats don't have to be whole numbers.  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity or else NW2Vars could get mixed up, updated multiple times or not be set.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWFloat instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value number @The value to set
function GEntity:SetNW2Float(key, value)
end

--- Sets a networked integer (whole number) value on the entity.  
--- The value can then be accessed with Entity:GetNW2Int both from client and server.  
--- See Entity:SetNW2Float for numbers that aren't integers.  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity or else NW2Vars could get mixed up, updated multiple times or not be set.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS.  
--- The integer has a 32 bit limit. Use Entity:SetNWInt instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value number @The value to set
function GEntity:SetNW2Int(key, value)
end

--- Sets a networked string value on the entity.  
--- The value can then be accessed with Entity:GetNW2String both from client and server.  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity or else NW2Vars could get mixed up, updated multiple times or not be set.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWString instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value string @The value to set, up to 511 characters.
function GEntity:SetNW2String(key, value)
end

--- Sets a networked value on the entity.  
--- The value can then be accessed with Entity:GetNW2Var both from client and server.  
--- | Allowed Types   |  
--- | --------------- |  
--- | Angle           |  
--- | Boolean         |  
--- | Entity          |  
--- | Float           |  
--- | Int             |  
--- | String          |  
--- | Vector          |  
--- ⚠ **WARNING**: Trying to network a type that is not listed above leads to the value not being networked!  
--- the value will only be updated clientside if the entity is or enters the clients PVS.  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity or else NW2Vars could get mixed up, updated multiple times or not be set.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value any @The value to set
function GEntity:SetNW2Var(key, value)
end

--- Sets a function to be called when the NW2Var changes. Internally uses GM:EntityNetworkedVarChanged to call the function.  
--- Alias of Entity:SetNetworked2VarProxy  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity, or else this will be called multiple times and the NW2Var could get mixed up with other ones.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ℹ **NOTE**: Only one NW2VarProxy can be set per-var  
--- Running this function will only set it for the realm it is called on.  
--- @param key string @The key of the NW2Var to add callback for.
--- @param callback function @The function to be called when the NW2Var changes
function GEntity:SetNW2VarProxy(key, callback)
end

--- Sets a networked vector value on the entity.  
--- The value can then be accessed with Entity:GetNW2Vector both from client and server.  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity or else NW2Vars could get mixed up, updated multiple times or not be set.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWVector instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value GVector @The value to set
function GEntity:SetNW2Vector(key, value)
end

--- Sets a networked angle value on the entity.  
--- The value can then be accessed with Entity:GetNWAngle both from client and server.  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Entity:SetNW2Angle. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage#nwlimits  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value GAngle @The value to set
function GEntity:SetNWAngle(key, value)
end

--- Sets a networked boolean value on the entity.  
--- The value can then be accessed with Entity:GetNWBool both from client and server.  
--- ⚠ **WARNING**: There's a 4096 slots Network limit. If you need more, consider using the net library or Entity:SetNW2Bool. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage#nwlimits  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value boolean @The value to set
function GEntity:SetNWBool(key, value)
end

--- Sets a networked entity value on the entity.  
--- The value can then be accessed with Entity:GetNWEntity both from client and server.  
--- ⚠ **WARNING**: There's a 4096 slots Network limit. If you need more, consider using the net library or Entity:SetNW2Entity. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage#nwlimits  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value GEntity @The value to set
function GEntity:SetNWEntity(key, value)
end

--- Sets a networked float (number) value on the entity.  
--- The value can then be accessed with Entity:GetNWFloat both from client and server.  
--- Unlike Entity:SetNWInt, floats don't have to be whole numbers.  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Entity:SetNW2Float. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage#nwlimits  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value number @The value to set
function GEntity:SetNWFloat(key, value)
end

--- Sets a networked integer (whole number) value on the entity.  
--- The value can then be accessed with Entity:GetNWInt both from client and server.  
--- See Entity:SetNWFloat for numbers that aren't integers.  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Entity:SetNW2Int. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage#nwlimits  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- 🦟 **BUG**: [This function will not round decimal values as it actually networks a float internally.](https://github.com/Facepunch/garrysmod-issues/issues/3374)  
--- @param key string @The key to associate the value with
--- @param value number @The value to set
function GEntity:SetNWInt(key, value)
end

--- Sets a networked string value on the entity.  
--- The value can then be accessed with Entity:GetNWString both from client and server.  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Entity:SetNW2String. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage#nwlimits  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value string @The value to set, up to 199 characters.
function GEntity:SetNWString(key, value)
end

--- ℹ **NOTE**: Only one NWVarProxy can be set per-var  
--- Running this function will only set it for the realm it is called on.  
--- Sets a function to be called when the NWVar changes.  
--- @param key string @The key of the NWVar to add callback for.
--- @param callback function @The function to be called when the NWVar changes
function GEntity:SetNWVarProxy(key, callback)
end

--- Sets a networked vector value on the entity.  
--- The value can then be accessed with Entity:GetNWVector both from client and server.  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Entity:SetNW2Vector. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage#nwlimits  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value GVector @The value to set
function GEntity:SetNWVector(key, value)
end

--- Sets the mapping name of the entity.  
--- @param mappingName string @The name to set for the entity.
function GEntity:SetName(mappingName)
end

--- Alters the entity's perceived serverside angle on the client.  
--- @param angle GAngle @Networked angle.
function GEntity:SetNetworkAngles(angle)
end

--- Virtually changes entity position for clients. Does almost the same thing as Entity:SetPos when used serverside.  
--- ℹ **NOTE**: Unlike Entity:SetPos it directly changes the position without checking for any unreasonable position.  
--- @param origin GVector @The position to make clients think this entity is at.
function GEntity:SetNetworkOrigin(origin)
end

--- Sets a networked angle value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2Angle both from client and server.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNW2Angle instead.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWAngle instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value GAngle @The value to set
function GEntity:SetNetworked2Angle(key, value)
end

--- Sets a networked boolean value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2Bool both from client and server.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNW2Bool instead.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWBool instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value boolean @The value to set
function GEntity:SetNetworked2Bool(key, value)
end

--- Sets a networked entity value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2Entity both from client and server.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNW2Entity instead.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWEntity instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value GEntity @The value to set
function GEntity:SetNetworked2Entity(key, value)
end

--- Sets a networked float (number) value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2Float both from client and server.  
--- Unlike Entity:SetNetworked2Int, floats don't have to be whole numbers.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWFloat instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value number @The value to set
function GEntity:SetNetworked2Float(key, value)
end

--- Sets a networked integer (whole number) value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2Int both from client and server.  
--- See Entity:SetNW2Float for numbers that aren't integers.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNW2Int instead.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS.  
--- The integer has a 32 bit limit. Use Entity:SetNWInt instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value number @The value to set
function GEntity:SetNetworked2Int(key, value)
end

--- Sets a networked string value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2String both from client and server.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNW2String instead.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWString instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value string @The value to set, up to 511 characters.
function GEntity:SetNetworked2String(key, value)
end

--- Sets a networked value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2Var both from client and server.  
--- | Allowed Types   |  
--- | --------------- |  
--- | Angle           |  
--- | Boolean         |  
--- | Entity          |  
--- | Float           |  
--- | Int             |  
--- | String          |  
--- | Vector          |  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNW2Var instead.  
--- ⚠ **WARNING**: Trying to network a type that is not listed above leads to the value not being networked!  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only ne networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value any @The value to set
function GEntity:SetNetworked2Var(key, value)
end

--- Sets a function to be called when the NW2Var changes. Internally uses GM:EntityNetworkedVarChanged to call the function.  
--- ℹ **NOTE**: Only one NW2VarProxy can be set per-var  
--- Running this function clientside will only set it for the client it is called on.  
--- @param name string @The name of the NW2Var to add callback for.
--- @param callback function @The function to be called when the NW2Var changes
function GEntity:SetNetworked2VarProxy(name, callback)
end

--- Sets a networked vector value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2Vector both from client and server.  
--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNW2Vector instead.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWVector instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value GVector @The value to set
function GEntity:SetNetworked2Vector(key, value)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:SetNWAngle instead.  
--- Sets a networked angle value at specified index on the entity.  
--- The value then can be accessed with Entity:GetNetworkedAngle both from client and server.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value? GAngle @The value to set
function GEntity:SetNetworkedAngle(key, value)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:SetNWBool instead.  
--- Sets a networked boolean value at specified index on the entity.  
--- The value then can be accessed with Entity:GetNetworkedBool both from client and server.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value? boolean @The value to set
function GEntity:SetNetworkedBool(key, value)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:SetNWEntity instead.  
--- Sets a networked entity value at specified index on the entity.  
--- The value then can be accessed with Entity:GetNetworkedEntity both from client and server.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value? GEntity @The value to set
function GEntity:SetNetworkedEntity(key, value)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:SetNWFloat instead.  
--- Sets a networked float value at specified index on the entity.  
--- The value then can be accessed with Entity:GetNetworkedFloat both from client and server.  
--- Seems to be the same as Entity:GetNetworkedInt.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value? number @The value to set
function GEntity:SetNetworkedFloat(key, value)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:SetNWInt instead.  
--- Sets a networked integer value at specified index on the entity.  
--- The value then can be accessed with Entity:GetNetworkedInt both from client and server.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value? number @The value to set
function GEntity:SetNetworkedInt(key, value)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNWFloat instead.  
--- Sets a networked number at the specified index on the entity.  
--- @param index any @The index that the value is stored in.
--- @param number number @The value to network.
function GEntity:SetNetworkedNumber(index, number)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:SetNWString instead.  
--- Sets a networked string value at specified index on the entity.  
--- The value then can be accessed with Entity:GetNetworkedString both from client and server.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value? string @The value to set
function GEntity:SetNetworkedString(key, value)
end

--- Sets a networked value on the entity.  
--- The value can then be accessed with Entity:GetNetworkedVar both from client and server.  
--- | Allowed Types   |  
--- | --------------- |  
--- | Angle           |  
--- | Boolean         |  
--- | Entity          |  
--- | Float           |  
--- | Int             |  
--- | String          |  
--- | Vector          |  
--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- ⚠ **WARNING**: Trying to network a type that is not listed above leads to the value not being networked!  
--- the value will only be updated clientside if the entity is or enters the clients PVS.  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value any @The value to set
function GEntity:SetNetworkedVar(key, value)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNWVarProxy instead.  
--- Sets callback function to be called when given NWVar changes.  
--- @param name string @The name of the NWVar to add callback for.
--- @param callback function @The function to be called when the NWVar changes
function GEntity:SetNetworkedVarProxy(name, callback)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use Entity:SetNWVector instead.  
--- Sets a networked vector value at specified index on the entity.  
--- The value then can be accessed with Entity:GetNetworkedVector both from client and server.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value? GVector @The value to set
function GEntity:SetNetworkedVector(key, value)
end

--- Sets the next time the clientside ENTITY:Think is called.  
--- @param nextthink number @The next time, relative to Global.CurTime, to execute the ENTITY:Think clientside.
function GEntity:SetNextClientThink(nextthink)
end

--- Sets if the entity's model should render at all.  
--- If set on the server, this entity will no longer network to clients, and for all intents and purposes cease to exist clientside.  
--- The entity can still be manually rendered via Entity:DrawModel in appropriate hooks.  
--- @param shouldNotDraw boolean @true disables drawing
function GEntity:SetNoDraw(shouldNotDraw)
end

--- Sets whether the entity is solid or not.  
--- @param IsNotSolid boolean @True will make the entity not solid, false will make it solid.
function GEntity:SetNotSolid(IsNotSolid)
end

--- Sets the owner of this entity, disabling all physics interaction with it.  
--- ℹ **NOTE**: This function is generally used to disable physics interactions on projectiles being fired by their owner, but can also be used for normal ownership in case physics interactions are not involved at all. The Gravity gun will be able to pick up the entity even if the owner can't collide with it, the Physics gun however will not.  
--- @param owner? GEntity @The entity to be set as owner.
function GEntity:SetOwner(owner)
end

--- Sets the parent of this entity, making it move with its parent. This will make the child entity non solid, nothing can interact with them, including traces.  
--- ℹ **NOTE**: This does not work on the world.  
--- ⚠ **WARNING**: This can cause undefined physics behavior when used on entities that don't support parenting. See the [Valve developer wiki](https://developer.valvesoftware.com/wiki/Entity_Hierarchy_(parenting)) for more information.  
--- @param parent? GEntity @The entity to parent to
--- @param attachmentOrBoneId? number @The attachment or bone id to use when parenting
function GEntity:SetParent(parent, attachmentOrBoneId)
end

--- Sets the parent of an entity to another entity with the given physics bone number. Similar to Entity:SetParent, except it is parented to a physbone. This function is useful mainly for ragdolls.  
--- ℹ **NOTE**: Despite this function being available server side, it doesn't actually do anything server side.  
--- @param bone number @Physics bone number to attach to
function GEntity:SetParentPhysNum(bone)
end

--- Sets whether or not the given entity is persistent. A persistent entity will be saved on server shutdown and loaded back when the server starts up. Additionally, by default persistent entities cannot be grabbed with the physgun and tools cannot be used on them.  
--- In sandbox, this can be set on an entity by opening the context menu, right clicking the entity, and choosing `"Make Persistent"`.  
--- ℹ **NOTE**: Persistence can only be enabled with the sbox_persist convar, which works as an identifier for the current set of persistent entities. An empty identifier (which is the default value) disables this feature.  
--- @param persist boolean @Whether or not the entity should be persistent.
function GEntity:SetPersistent(persist)
end

--- When called on a constraint entity, sets the two physics objects to be constrained.  
--- Usage is not recommended as the Constraint library provides easier ways to deal with constraints.  
--- @param Phys1 GPhysObj @The first physics object to be constrained.
--- @param Phys2 GPhysObj @The second physics object to be constrained.
function GEntity:SetPhysConstraintObjects(Phys1, Phys2)
end

--- Sets the player who gets credit if this entity kills something with physics damage within the time limit.  
--- ℹ **NOTE**: This can only be called on props, "anim" type SENTs and vehicles.  
--- @param ent GPlayer @Player who gets the kills
--- @param timeLimit? number @Time in seconds until the entity forgets its physics attacker and prevents it from getting the kill credit.
function GEntity:SetPhysicsAttacker(ent, timeLimit)
end

--- Allows you to set how fast an entity's animation will play, with 1.0 being the default speed.  
--- @param fSpeed number @How fast the animation will play.
function GEntity:SetPlaybackRate(fSpeed)
end

--- Moves the entity to the specified position.  
--- Some entities, such as ragdolls, will continually reset their position. Consider using PhysObj:SetPos on every physics object to move ragdolls.  
--- ℹ **NOTE**: If the new position doesn't take effect right away, you can use Entity:SetupBones to force it to do so. This issue is especially common when trying to render the same entity twice or more in a single frame at different positions.  
--- ⚠ **WARNING**: Entities with Entity:GetSolid of `SOLID_BBOX` will have their angles reset!  
--- 🦟 **BUG**: [This will fail inside of predicted functions called during player movement processing. This includes WEAPON:PrimaryAttack and WEAPON:Think.](https://github.com/Facepunch/garrysmod-issues/issues/2447)  
--- @param position GVector @The position to move the entity to.
function GEntity:SetPos(position)
end

--- Sets the specified pose parameter to the specified value.  
--- You should call Entity:InvalidateBoneCache after calling this function.  
--- ℹ **NOTE**: Avoid calling this in draw hooks, especially when animating things, as it might cause visual artifacts.  
--- @param poseName string @Name of the pose parameter
--- @param poseValue number @The value to set the pose to.
function GEntity:SetPoseParameter(poseName, poseValue)
end

--- Sets whether an entity should be predictable or not.  
--- When an entity is set as predictable, its DT vars can be changed during predicted hooks. This is useful for entities which can be controlled by player input.  
--- Any datatable value that mismatches from the server will be overridden and a prediction error will be spewed.  
--- Weapons are predictable by default, and the drive system uses this function to make the controlled prop predictable as well.  
--- Visit  for a list of all predicted hooks, and the Prediction page.  
--- For further technical information on the subject, visit [valve's wiki](https://developer.valvesoftware.com/wiki/Prediction).  
--- ℹ **NOTE**: This function resets the datatable variables everytime it's called, it should ideally be called when a player starts using the entity and when he stops  
--- ℹ **NOTE**: Entities set as predictable with this function will be unmarked when the user lags and receives a full packet update, to handle such case visit GM:NotifyShouldTransmit  
--- @param setPredictable boolean @whether to make this entity predictable or not.
function GEntity:SetPredictable(setPredictable)
end

--- Prevents the server from sending any further information about the entity to a player.  
--- ℹ **NOTE**: You must also call this function on all entity's children. See Entity:GetChildren.  
--- [issue tracker](https://github.com/Facepunch/garrysmod-issues/issues/1736)  
--- Entity:SetFlexScale and other flex/bone manipulation functions will create a child entity.  
--- @param player GPlayer|GCRecipientFilter|GPlayer[] @The player to stop networking the entity to
--- @param stopTransmitting boolean @true to stop the entity from networking, false to make it network again.
function GEntity:SetPreventTransmit(player, stopTransmitting)
end

--- Sets the bone angles. This is used alongside Kinect in Entity:SetRagdollBuildFunction, for more info see ragdoll_motion entity.  
--- @param boneid number @Bone ID
--- @param pos GAngle @Angle to set
function GEntity:SetRagdollAng(boneid, pos)
end

--- Sets the function to build the ragdoll. This is used alongside Kinect, for more info see `ragdoll_motion` entity in the game files.  
--- @param builder function @The build function
function GEntity:SetRagdollBuildFunction(builder)
end

--- Sets the bone position. This is used alongside Kinect in Entity:SetRagdollBuildFunction, for more info see ragdoll_motion entity.  
--- @param boneid number @Bone ID
--- @param pos GVector @Position to set
function GEntity:SetRagdollPos(boneid, pos)
end

--- Sets the render angle override for the Entity.  
--- @param newAngles? GAngle @The new render angles to be set to
function GEntity:SetRenderAngles(newAngles)
end

--- Sets the render bounds for the entity. For world space coordinates see Entity:SetRenderBoundsWS.  
--- @param mins GVector @The minimum corner of the bounds, relative to origin of the entity.
--- @param maxs GVector @The maximum corner of the bounds, relative to origin of the entity.
--- @param add? GVector @If defined, adds this vector to maxs and subtracts this vector from mins.
function GEntity:SetRenderBounds(mins, maxs, add)
end

--- Sets the render bounds for the entity in world space coordinates. For relative coordinates see Entity:SetRenderBounds.  
--- @param mins GVector @The minimum corner of the bounds, relative to origin of the world/map.
--- @param maxs GVector @The maximum corner of the bounds, relative to origin of the world/map.
--- @param add? GVector @If defined, adds this vector to maxs and subtracts this vector from mins.
function GEntity:SetRenderBoundsWS(mins, maxs, add)
end

--- Used to specify a plane, past which an object will be visually clipped.  
--- @param planeNormal GVector @The normal of the plane
--- @param planePosition number @The position of the plane.
function GEntity:SetRenderClipPlane(planeNormal, planePosition)
end

--- Enables the use of clipping planes to "cut" objects.  
--- @param enabled boolean @Enable or disable clipping planes
function GEntity:SetRenderClipPlaneEnabled(enabled)
end

--- Sets entity's render FX. Requires the entitys rendermode to support transparency.  
--- @param renderFX number @The new render FX to set, see Enums/kRenderFx
function GEntity:SetRenderFX(renderFX)
end

--- Sets the render mode of the entity.  
--- @param renderMode number @New render mode to set, see Enums/RENDERMODE.
function GEntity:SetRenderMode(renderMode)
end

--- Set the render origin override, a position where the Entity will be rendered at.  
--- @param newOrigin? GVector @The new origin in world coordinates where the Entity's model will now be rendered at
function GEntity:SetRenderOrigin(newOrigin)
end

--- Sets a save value for an entity. You can see a full list of an entity's save values by creating it and printing Entity:GetSaveTable().  
--- See Entity:GetInternalVariable for the opposite of this function.  
--- @param name string @Name of the save value to set
--- @param value any @Value to set
--- @return boolean @Key successfully set
function GEntity:SetSaveValue(name, value)
end

--- Sets the entity's model sequence.  
--- If the specified sequence is already active, the animation will not be restarted. See Entity:ResetSequence for a function that restarts the animation even if it is already playing.  
--- In some cases you want to run Entity:ResetSequenceInfo to make this function run.  
--- ℹ **NOTE**: This will not work properly if called directly after calling Entity:SetModel. Consider waiting until the next Tick.  
--- Will not work on players due to the animations being reset every frame by the base gamemode animation system. See GM:CalcMainActivity.  
--- For custom scripted entities you will want to apply example from ENTITY:Think to make animations work.  
--- @param sequence number @The sequence to play
function GEntity:SetSequence(sequence)
end

--- Sets whether or not the entity should make a physics contact sound when it's been picked up by a player.  
--- @param playsound? boolean @True to play the pickup sound, false otherwise.
function GEntity:SetShouldPlayPickupSound(playsound)
end

--- Sets if entity should create a server ragdoll on death or a client one.  
--- ℹ **NOTE**: This is reset for players when they respawn (Entity:Spawn).  
--- Player ragdolls created with this enabled will have an owner set, see Entity:SetOwner for more information on what effects this has.  
--- @param serverragdoll boolean @Set `true` if ragdoll should be created on server, `false` if on client.
function GEntity:SetShouldServerRagdoll(serverragdoll)
end

--- Sets the skin of the entity.  
--- @param skinIndex number @0-based index of the skin to use.
function GEntity:SetSkin(skinIndex)
end

--- Sets the solidity of an entity.  
--- @param solid_type number @The solid type
function GEntity:SetSolid(solid_type)
end

--- Sets solid flag(s) for the entity.  
--- This overrides any other flags the entity might have had. See Entity:AddSolidFlags for adding flags.  
--- @param flags number @The flag(s) to set, see Enums/FSOLID.
function GEntity:SetSolidFlags(flags)
end

--- Sets whether the entity should use a spawn effect when it is created on the client.  
--- See Entity:GetSpawnEffect for more information on how the effect is applied.  
--- ℹ **NOTE**: This function will only have an effect when the entity spawns. After that it will do nothing even is set to true.  
--- @param spawnEffect boolean @Sets if we should show a spawn effect.
function GEntity:SetSpawnEffect(spawnEffect)
end

--- Sets the SpawnFlags to set of an Entity  
--- SpawnFlags can easily be found on https://developer.valvesoftware.com/wiki/.  
--- ℹ **NOTE**: See also Entity:RemoveSpawnFlags, Entity:AddSpawnFlags  
--- Using SF Enumerations won't work, if this function is ran clientside due to the enumerations being defined only Serverside. Use the actual SpawnFlag number.  
--- @param flags number @The SpawnFlag to remove from the Entity
function GEntity:SetSpawnFlags(flags)
end

--- Overrides a single material on the model of this entity.  
--- To set a Lua material created with Global.CreateMaterial, just prepend a `!` to the material name.  
--- 🦟 **BUG**: [The server's value takes priority on the client.](https://github.com/Facepunch/garrysmod-issues/issues/3362)  
--- @param index? number @Index of the material to override, acceptable values are from 0 to 31
--- @param material? string @The material to override the default one with
function GEntity:SetSubMaterial(index, material)
end

--- Sets the axis-aligned bounding box (AABB) for an entity's hitbox detection.  
--- See also Entity:SetSurroundingBoundsType (mutually exclusive).  
--- @param min GVector @Minimum extent of the AABB relative to entity's position.
--- @param max GVector @Maximum extent of the AABB relative to entity's position.
function GEntity:SetSurroundingBounds(min, max)
end

--- Automatically sets the axis-aligned bounding box (AABB) for an entity's hitbox detection.  
--- See also Entity:SetSurroundingBounds (mutually exclusive).  
--- @param bounds number @Bounds type of the entity, see Enums/BOUNDS
function GEntity:SetSurroundingBoundsType(bounds)
end

--- When this flag is set the entity will only transmit to the player when its parent is transmitted. This is useful for things like viewmodel attachments since without this flag they will transmit to everyone (and cause the viewmodels to transmit to everyone too).  
--- ℹ **NOTE**: In the case of scripted entities, this will override ENTITY:UpdateTransmitState  
--- @param onoff boolean @Will set the TransmitWithParent flag on or off
function GEntity:SetTransmitWithParent(onoff)
end

--- Marks the entity as a trigger, so it will generate ENTITY:StartTouch, ENTITY:Touch and ENTITY:EndTouch callbacks.  
--- Internally this is stored as FSOLID_TRIGGER flag.  
--- @param maketrigger boolean @Make the entity trigger or not
function GEntity:SetTrigger(maketrigger)
end

--- Sets whether an entity can be unfrozen, meaning that it cannot be unfrozen using the physgun.  
--- @param freezable? boolean @True to make the entity unfreezable, false otherwise.
function GEntity:SetUnFreezable(freezable)
end

--- Sets the use type of an entity, affecting how often ENTITY:Use will be called for Lua entities.  
--- @param useType E_USE @The use type to apply to the entity
function GEntity:SetUseType(useType)
end

--- Allows to quickly set variable to entity's Entity:GetTable.  
--- ℹ **NOTE**: This will not network the variable to client(s). You want Entity:SetNWString and similar functions for that  
--- @param key any @Key of the value to set
--- @param value any @Value to set the variable to
function GEntity:SetVar(key, value)
end

--- Sets the entity's velocity. For entities with physics, consider using PhysObj:SetVelocity on the PhysObj of the entity.  
--- ℹ **NOTE**: Actually binds to CBaseEntity::SetBaseVelocity() which sets the entity's velocity due to forces applied by other entities.  
--- ⚠ **WARNING**: If applied to a player, this will actually **ADD** velocity, not set it. (due to how movement code handles base velocity)  
--- @param velocity GVector @The new velocity to set.
function GEntity:SetVelocity(velocity)
end

--- Sets the model and associated weapon to this viewmodel entity.  
--- This is used internally when the player switches weapon.  
--- ℹ **NOTE**: View models are not drawn without a weapons associated to them.  
--- ⚠ **WARNING**: This will silently fail if the entity is not a viewmodel.  
--- @param viewModel string @The model string to give to this viewmodel
--- @param weapon? GWeapon @The weapon entity to associate this viewmodel to.
function GEntity:SetWeaponModel(viewModel, weapon)
end

--- Forces the entity to reconfigure its bones. You might need to call this after changing your model's scales or when manually drawing the entity multiple times at different positions.  
--- ℹ **NOTE**: This calls the BuildBonePositions callback added via Entity:AddCallback, so avoid calling this function inside it to prevent an infinite loop.  
function GEntity:SetupBones()
end

--- Initializes the class names of an entity's phoneme mappings (mouth movement data). This is called by default with argument "phonemes" when a flex-based entity (such as an NPC) is created.  
--- ℹ **NOTE**: TF2 phonemes can be accessed by using a path such as "player/scout/phonemes/phonemes" , check TF2's "tf2_misc_dir.vpk" with GCFScape for other paths, however it seems that TF2 sounds don't contain phoneme definitions anymore after being converted to mp3 and only rely on VCD animations, this needs to be further investigated  
--- @param fileRoot string @The file prefix of the phoneme mappings (relative to "garrysmod/expressions/").
function GEntity:SetupPhonemeMappings(fileRoot)
end

--- Returns the amount of skins the entity has.  
--- @return number @The amount of skins the entity's model has.
function GEntity:SkinCount()
end

--- Moves the model instance from the source entity to this entity. This can be used to transfer decals that have been applied on one entity to another.  
--- Both entities must have the same model.  
--- @param srcEntity GEntity @Entity to move the model instance from.
--- @return boolean @Whether the operation was successful or not
function GEntity:SnatchModelInstance(srcEntity)
end

--- Initializes the entity and starts its networking. If called on a player, it will respawn them.  
--- This calls ENTITY:Initialize on Lua-defined entities.  
function GEntity:Spawn()
end

--- Starts a "looping" sound. As with any other sound playing methods, this function expects the sound file to be looping itself and will not automatically loop a non looping sound file as one might expect.  
--- This function is almost identical to Global.CreateSound, with the exception of the sound being created in the STATIC channel and with normal attenuation.  
--- See also Entity:StopLoopingSound  
--- @param sound string @Sound to play
--- @return number @The ID number of started sound starting with 0, or -1 if we failed for some reason.
function GEntity:StartLoopingSound(sound)
end

--- Starts a motion controller in the physics engine tied to this entity's PhysObj, which enables the use of ENTITY:PhysicsSimulate.  
--- The motion controller can later be destroyed via Entity:StopMotionController.  
--- Motion controllers are used internally to control other Entities' PhysObjects, such as the Gravity Gun, +use pickup and the Physics Gun.  
--- This function should be called every time you recreate the Entity's PhysObj. Or alternatively you should call Entity:AddToMotionController on the new PhysObj.  
--- Also see Entity:AddToMotionController and Entity:RemoveFromMotionController.  
--- ℹ **NOTE**: Only works on a scripted Entity of anim type.  
function GEntity:StartMotionController()
end

--- Stops all particle effects parented to the entity and immediately destroys them.  
function GEntity:StopAndDestroyParticles()
end

--- Stops a sound created by Entity:StartLoopingSound.  
--- @param id number @The sound ID returned by Entity:StartLoopingSound
function GEntity:StopLoopingSound(id)
end

--- Stops the motion controller created with Entity:StartMotionController.  
function GEntity:StopMotionController()
end

--- Stops all particle effects parented to the entity.  
--- This is ran automatically on every client by Entity:StopParticles if called on the server.  
function GEntity:StopParticleEmission()
end

--- Stops any attached to the entity .pcf particles using Global.ParticleEffectAttach or Global.ParticleEffect.  
--- On client, this is the same as Entity:StopParticleEmission. ( and you should use StopParticleEmission instead )  
--- On server, this is the same as running Entity:StopParticleEmission on every client.  
function GEntity:StopParticles()
end

--- Stops all particle effects parented to the entity with given name.  
--- @param name string @The name of the particle to stop.
function GEntity:StopParticlesNamed(name)
end

--- Stops all particle effects parented to the entity with given name on given attachment.  
--- @param name string @The name of the particle to stop.
--- @param attachment number @The attachment of the entity to stop particles on.
function GEntity:StopParticlesWithNameAndAttachment(name, attachment)
end

--- Stops emitting the given sound from the entity, especially useful for looping sounds.  
--- @param sound string @The name of the sound script or the filepath to stop playback of.
function GEntity:StopSound(sound)
end

--- Applies the specified amount of damage to the entity with DMG_GENERIC flag.  
--- ⚠ **WARNING**: Calling this function on the victim entity in ENTITY:OnTakeDamage can cause infinite loops.  
--- ⚠ **WARNING**: This function does not seem to do any damage if you apply it to a player who is driving a prop_vehicle_jeep or prop_vehicle_jeep_old vehicle. You need to call it on the vehicle instead.  
--- @param damageAmount number @The amount of damage to be applied.
--- @param attacker? GEntity @The entity that initiated the attack that caused the damage.
--- @param inflictor? GEntity @The entity that applied the damage, eg
function GEntity:TakeDamage(damageAmount, attacker, inflictor)
end

--- Applies the damage specified by the damage info to the entity.  
--- ⚠ **WARNING**: Calling this function on the victim entity in ENTITY:OnTakeDamage can cause infinite loops.  
--- ⚠ **WARNING**: This function does not seem to do any damage if you apply it to a player who is driving a prop_vehicle_jeep or prop_vehicle_jeep_old vehicle. You need to call it on the vehicle instead.  
--- ℹ **NOTE**: This function does not apply damage to [func_breakable_surf](https://developer.valvesoftware.com/wiki/Func_breakable_surf) entities correctly. To do this, you will need to use Entity:DispatchTraceAttack instead.  
--- @param damageInfo GCTakeDamageInfo @The damage to apply.
function GEntity:TakeDamageInfo(damageInfo)
end

--- Applies forces to our physics object in response to damage.  
--- @param dmginfo GCTakeDamageInfo @The damageinfo to apply
function GEntity:TakePhysicsDamage(dmginfo)
end

--- Check if the given position or entity is within this entity's [PVS(Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community").  
--- See also Entity:IsDormant.  
--- ℹ **NOTE**: The function won't take in to account Global.AddOriginToPVS and the like.  
--- @param testPoint any @Entity or Vector to test against
--- @return boolean @True if the testPoint is within our PVS.
function GEntity:TestPVS(testPoint)
end

--- Returns the ID of a PhysObj attached to the given bone.  
--- See Entity:TranslatePhysBoneToBone for reverse function.  
--- @param boneID number @The ID of a bone to look up the "physics root" bone of.
--- @return number @The PhysObj ID of the given bone to be used with Entity:GetPhysicsObjectNum or `-1` if we cannot translate for some reason, such as a model 
function GEntity:TranslateBoneToPhysBone(boneID)
end

--- Returns the boneID of the bone the given PhysObj is attached to.  
--- See Entity:TranslateBoneToPhysBone for reverse function.  
--- @param physNum number @The PhysObj number on the entity
--- @return number @The boneID of the bone the PhysObj is attached to.
function GEntity:TranslatePhysBoneToBone(physNum)
end

--- Updates positions of bone followers created by Entity:CreateBoneFollowers.  
--- This should be called every tick.  
--- ℹ **NOTE**: This function only works on `anim`, `nextbot` and `ai` type entities.  
function GEntity:UpdateBoneFollowers()
end

--- Marks the render-to-texture (RTT) shadow of this entity as dirty, as well as any potential projected texture shadows related to this entity, so they will be updated as soon as possible.  
function GEntity:UpdateShadow()
end

--- Simulates a `+use` action on an entity.  
--- @param activator GEntity @The entity that caused this input
--- @param caller? GEntity @The entity responsible for the input
--- @param useType? EUSE @Use type, see Enums/USE.
--- @param value? number @Any value.
function GEntity:Use(activator, caller, useType, value)
end

--- ℹ **NOTE**: Does nothing on server.  
--- Animations will be handled purely clientside instead of a fixed animtime, enabling interpolation. This does not affect layers and gestures.  
function GEntity:UseClientSideAnimation()
end

--- Enables or disables trigger bounds.  
--- This will give the entity a "trigger box" that extends around its bounding box by boundSize units in X/Y and (boundSize / 2) in +Z (-Z remains the same).  
--- The trigger box is world aligned and will work regardless of the object's solidity and collision group.  
--- Valve use trigger boxes for all pickup items. Their bloat size is 24, a surprisingly large figure.  
--- ℹ **NOTE**: The trigger boxes can be made visible as a light blue box by using the **ent_bbox** console command while looking at the entity. Alternatively a classname or entity index can be used as the first argument.  
--- This requires **developer** to be set to **1**.  
--- @param enable boolean @Enable or disable the bounds.
--- @param boundSize? number @The distance/size of the trigger bounds.
function GEntity:UseTriggerBounds(enable, boundSize)
end

--- Returns the index of this view model, it can be used to identify which one of the player's view models this entity is.  
--- @return number @View model index, ranges from 0 to 2, nil if the entity is not a view model
function GEntity:ViewModelIndex()
end

--- Returns whether the target/given entity is visible from the this entity.  
--- This is meant to be used only with NPCs.  
--- Differences from a simple trace include:  
--- * If target has `FL_NOTARGET`, returns `false`  
--- * If `ai_ignoreplayers` is turned on and target is a player, returns `false`  
--- * Reacts to `ai_LOS_mode`:  
--- * * If `1`, does a simple trace with `COLLISION_GROUP_NONE` and `MASK_BLOCKLOS`  
--- * * If not, does a trace with `MASK_BLOCKLOS_AND_NPCS` (- `CONTENTS_BLOCKLOS` is target is player) and a custom LOS filter (`CTraceFilterLOS`)  
--- * Returns `true` if hits a vehicle the target is driving  
--- @param target GEntity @Entity to check for visibility to.
--- @return boolean @If the entities can see each other.
function GEntity:Visible(target)
end

--- Returns true if supplied vector is visible from the entity's line of sight.  
--- This is achieved similarly to a trace.  
--- @param pos GVector @The position to check for visibility
--- @return boolean @Within line of sight
function GEntity:VisibleVec(pos)
end

--- Returns an integer that represents how deep in water the entity is.  
--- ℹ **NOTE**: This function will currently work on players only due to the way it is implemented in the engine. If you need to check interaction with water for regular entities you better use util.PointContents.  
--- * **0** - The entity isn't in water.  
--- * **1** - Slightly submerged (at least to the feet).  
--- * **2** - The majority of the entity is submerged (at least to the waist).  
--- * **3** - Completely submerged.  
--- @return number @The water level.
function GEntity:WaterLevel()
end

--- Sets the activity of the entity's active weapon.  
--- ℹ **NOTE**: This does nothing on the client.  
--- ℹ **NOTE**: Only works for CBaseCombatCharacter entities, which includes players and NPCs.  
--- @param act number @Activity number
--- @param duration number @How long the animation should take in seconds.
function GEntity:Weapon_SetActivity(act, duration)
end

--- Calls and returns WEAPON:TranslateActivity on the weapon the entity ( player or NPC ) carries.  
--- Despite existing on client, it doesn't actually do anything on client.  
--- @param act number @The NPC activity to translate
--- @return number @The translated activity
function GEntity:Weapon_TranslateActivity(act)
end

--- Returns two vectors representing the minimum and maximum extent of the entity's axis-aligned bounding box (which is calculated from entity's collision bounds.  
--- @return GVector @The minimum vector for the entity's bounding box in world space.
--- @return GVector @The maximum vector for the entity's bounding box in world space.
function GEntity:WorldSpaceAABB()
end

--- Returns the center of the entity according to its collision model.  
--- @return GVector @The center of the entity
function GEntity:WorldSpaceCenter()
end

--- Converts a worldspace vector into a vector local to an entity  
--- @param wpos GVector @The world vector
--- @return GVector @The local vector
function GEntity:WorldToLocal(wpos)
end

--- Converts world angles to local angles ( local to the entity )  
--- @param ang GAngle @The world angles
--- @return GAngle @The local angles
function GEntity:WorldToLocalAngles(ang)
end
