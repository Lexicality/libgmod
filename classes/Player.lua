--- @class GPlayer : GEntity
--- This is a list of all methods only available for players. It is also possible to call Entity functions on the Player.  
local GPlayer = {}
--- Returns the player's AccountID part of their full SteamID.  
--- Since this does not include other vital parts of the SteamID such as "Account Type" and "Account Instance", it should be avoided, as AccountIDs are finite, and can theoretically be the same for multiple valid accounts.  
--- See Player:SteamID for the text representation of the full SteamID.  
--- See Player:SteamID64 for a 64bit representation of the full SteamID.  
--- ℹ **NOTE**: In a `-multirun` environment, this will return `-1` for all "copies" of a player because they are not authenticated with Steam.  
--- For bots this will return values starting with `0` for the first bot, `1` for the second bot and so on.  
--- @return number @The AccountID of Player's SteamID.
function GPlayer:AccountID()
end

--- ℹ **NOTE**: This function is only available in Sandbox and its derivatives.  
--- Adds an entity to the player's clean up list. This uses cleanup.Add internally.  
--- @param type string @The Cleanup type for this Entity.
--- @param ent GEntity @The Entity to add.
function GPlayer:AddCleanup(type, ent)
end

--- ℹ **NOTE**: This function is only available in Sandbox and its derivatives.  
--- Adds an entity to the player's list of entities of the same type. See Player:GetCount to get the current count of entities of an entity type added with this function.  
--- @param str string @The type of this Entity.
--- @param ent GEntity @The Entity you want to add to the list.
function GPlayer:AddCount(str, ent)
end

--- Adds the provided amount to the player's death count.  
--- @param count number @The amount to add to the death count.
function GPlayer:AddDeaths(count)
end

--- Adds the provided amount to the player's frag/kill count.  
--- @param count number @The amount to add.
function GPlayer:AddFrags(count)
end

--- Adds an entity to the player's list of frozen objects.  
--- @param ent GEntity @The Entity to add.
--- @param physobj GPhysObj @The physics object of the Entity.
function GPlayer:AddFrozenPhysicsObject(ent, physobj)
end

--- Sets up the voting system for the player.  
--- This is a really barebone system. By calling this a vote gets started, when the player presses 0-9 the callback function gets called along with the key the player pressed. Use the draw callback to draw the vote panel.  
--- @param name string @Name of the vote
--- @param timeout number @Time until the vote expires
--- @param vote_callback function @The function to be run when the player presses 0-9 while a vote is active
--- @param draw_callback function @Used to draw the vote panel.
function GPlayer:AddPlayerOption(name, timeout, vote_callback, draw_callback)
end

--- Plays a sequence directly from a sequence number, similar to Player:AnimRestartGesture. This function has the advantage to play sequences that haven't been bound to an existing Enums/ACT  
--- ⚠ **WARNING**: This is not automatically networked. This function has to be called on the client to be seen by said client.  
--- @param slot? number @Gesture slot using Enums/GESTURE_SLOT
--- @param sequenceId? number @The sequence ID to play, can be retrieved with Entity:LookupSequence.
--- @param cycle? number @The cycle to start the animation at, ranges from 0 to 1.
--- @param autokill? boolean @If the animation should not loop
function GPlayer:AddVCDSequenceToGestureSlot(slot, sequenceId, cycle, autokill)
end

--- Checks if the player is alive.  
--- @return boolean @Whether the player is alive
function GPlayer:Alive()
end

--- Sets if the player can toggle their flashlight. Function exists on both the server and client but has no effect when ran on the client.  
--- @param canFlashlight boolean @True allows flashlight toggling
function GPlayer:AllowFlashlight(canFlashlight)
end

--- Lets the player spray their decal without delay  
--- @param allow boolean @Allow or disallow
function GPlayer:AllowImmediateDecalPainting(allow)
end

--- Resets player gesture in selected slot.  
--- @param slot number @Slot to reset
function GPlayer:AnimResetGestureSlot(slot)
end

--- Restart a gesture on a player, within a gesture slot.  
--- ⚠ **WARNING**: This is not automatically networked. This function has to be called on the client to be seen by said client.  
--- @param slot? number @Gesture slot using Enums/GESTURE_SLOT
--- @param activity? number @The activity ( see Enums/ACT ) or sequence that should be played
--- @param autokill? boolean @Whether the animation should be automatically stopped
function GPlayer:AnimRestartGesture(slot, activity, autokill)
end

--- Restarts the main animation on the player, has the same effect as calling Entity:SetCycle( 0 ).  
function GPlayer:AnimRestartMainSequence()
end

--- Sets the sequence of the animation playing in the given gesture slot.  
--- @param slot number @The gesture slot
--- @param sequenceID number @Sequence ID to set.
function GPlayer:AnimSetGestureSequence(slot, sequenceID)
end

--- Sets the weight of the animation playing in the given gesture slot.  
--- @param slot number @The gesture slot
--- @param weight number @The weight this slot should be set to
function GPlayer:AnimSetGestureWeight(slot, weight)
end

--- Returns the player's armor.  
--- @return number @The player's armor.
function GPlayer:Armor()
end

--- Bans the player from the server for a certain amount of minutes.  
--- @param minutes? number @Duration of the ban in minutes (0 is permanent)
--- @param kick? boolean @Whether to kick the player after banning them or not
function GPlayer:Ban(minutes, kick)
end

--- Returns true if the player's flashlight hasn't been disabled by Player:AllowFlashlight.  
--- ℹ **NOTE**: This is not synchronized between clients and server automatically!  
--- @return boolean @Whether the player can use flashlight.
function GPlayer:CanUseFlashlight()
end

--- Prints a string to the chatbox of the client.  
--- ⚠ **WARNING**: Just like the usermessage, this function is affected by the 255 byte limit!  
--- @param message string @String to be printed
function GPlayer:ChatPrint(message)
end

--- Checks if the limit of an entity type added by Player:AddCount is hit or not. If it's hit, it will call the GM:PlayerCheckLimit hook, and call Player:LimitHit if the hook doesn't return `false`.  
--- This will always return `true` in singleplayer, as singleplayer does not have limits.  
--- ℹ **NOTE**: This function is only available in Sandbox and its derivatives.  
--- @param str string @The entity type to check the limit for
--- @return boolean @Returns `true` if the limit of this type is not hit, `false` otherwise.
function GPlayer:CheckLimit(str)
end

--- Runs the concommand on the player. This does not work on bots. If used clientside, always runs the command on the local player.  
--- If you wish to directly modify the movement input of bots, use GM:StartCommand instead.  
--- ℹ **NOTE**: Some commands/convars are blocked from being ran/changed using this function, usually to prevent harm/annoyance to clients. For a list of blocked commands, see Blocked ConCommands.  
--- @param command string @command to run
function GPlayer:ConCommand(command)
end

--- Creates the player's death ragdoll entity and deletes the old one.  
--- This is normally used when a player dies, to create their death ragdoll.  
--- The ragdoll will be created with the player's properties such as Position, Angles, PlayerColor, Velocity and Model.  
--- You can retrieve the entity this creates with Player:GetRagdollEntity.  
function GPlayer:CreateRagdoll()
end

--- Disables the default player's crosshair. Can be reenabled with Player:CrosshairEnable. This will affect WEAPON:DoDrawCrosshair.  
function GPlayer:CrosshairDisable()
end

--- Enables the player's crosshair, if it was previously disabled via Player:CrosshairDisable.  
function GPlayer:CrosshairEnable()
end

--- Returns whether the player is crouching or not (FL_DUCKING flag).  
--- @return boolean @Whether the player is crouching.
function GPlayer:Crouching()
end

--- Returns the player's death count  
--- @return number @The number of deaths the player has had.
function GPlayer:Deaths()
end

--- Prints the players' name and position to the console.  
function GPlayer:DebugInfo()
end

--- Detonates all tripmines belonging to the player.  
function GPlayer:DetonateTripmines()
end

--- Disables world clicking for given player. See Panel:SetWorldClicker and Player:IsWorldClickingDisabled.  
--- @param disable boolean @Whether the world clicking should be disabled.
function GPlayer:DisableWorldClicking(disable)
end

--- Sends a third person animation event to the player.  
--- Calls GM:DoAnimationEvent with PLAYERANIMEVENT_CUSTOM_GESTURE as the event, data as the given data.  
--- @param data number @The data to send.
function GPlayer:DoAnimationEvent(data)
end

--- Starts the player's attack animation. The attack animation is determined by the weapon's HoldType.  
--- Similar to other animation event functions, calls GM:DoAnimationEvent with PLAYERANIMEVENT_ATTACK_PRIMARY as the event and no extra data.  
function GPlayer:DoAttackEvent()
end

--- Sends a specified third person animation event to the player.  
--- Calls GM:DoAnimationEvent with specified arguments.  
--- @param event number @The event to send
--- @param data number @The data to send alongside the event.
function GPlayer:DoCustomAnimEvent(event, data)
end

--- Sends a third person reload animation event to the player.  
--- Similar to other animation event functions, calls GM:DoAnimationEvent with PLAYERANIMEVENT_RELOAD as the event and no extra data.  
function GPlayer:DoReloadEvent()
end

--- Sends a third person secondary fire animation event to the player.  
--- Similar to other animation event functions, calls GM:DoAnimationEvent with PLAYERANIMEVENT_ATTACK_SECONDARY as the event and no extra data.  
function GPlayer:DoSecondaryAttack()
end

--- Show/Hide the player's weapon's viewmodel.  
--- @param draw? boolean @Should draw
--- @param vm? number @Which view model to show/hide, 0-2.
function GPlayer:DrawViewModel(draw, vm)
end

--- Show/Hide the player's weapon's worldmodel.  
--- @param draw boolean @Should draw
function GPlayer:DrawWorldModel(draw)
end

--- Drops the players' weapon of a specific class.  
--- @param class? string @The class to drop.
--- @param target? GVector @If set, launches the weapon at given position
--- @param velocity? GVector @If set and previous argument is unset, launches the weapon with given velocity
function GPlayer:DropNamedWeapon(class, target, velocity)
end

--- Drops any object the player is currently holding with either Gravity Gun or `+use` (E key)  
--- See also Entity:ForcePlayerDrop.  
function GPlayer:DropObject()
end

--- Forces the player to drop the specified weapon  
--- @param weapon? GWeapon @Weapon to be dropped
--- @param target? GVector @If set, launches the weapon at given position
--- @param velocity? GVector @If set and previous argument is unset, launches the weapon with given velocity
function GPlayer:DropWeapon(weapon, target, velocity)
end

--- Force puts the player into a specified vehicle.  
--- This **does not** bypass GM:CanPlayerEnterVehicle.  
--- @param vehicle GVehicle @Vehicle the player will enter
function GPlayer:EnterVehicle(vehicle)
end

--- Equips the player with the HEV suit.  
--- Allows the player to zoom, walk slowly, sprint, pickup armor batteries, use the health and armor stations and also shows the HUD.  
--- The player also emits a flatline sound on death, which can be overridden with GM:PlayerDeathSound.  
--- The player is automatically equipped with the suit on spawn, if you wish to stop that, use Player:RemoveSuit.  
function GPlayer:EquipSuit()
end

--- Forces the player to exit the vehicle if they're in one.  
--- This function will bypass GM:CanExitVehicle. See also GM:PlayerLeaveVehicle  
function GPlayer:ExitVehicle()
end

--- Enables/Disables the player's flashlight.Player:CanUseFlashlight must be true in order for the player's flashlight to be changed.  
--- @param isOn boolean @Turns the flashlight on/off
function GPlayer:Flashlight(isOn)
end

--- Returns true if the player's flashlight is on.  
--- @return boolean @Whether the player's flashlight is on.
function GPlayer:FlashlightIsOn()
end

--- Returns the amount of frags a player has.  
--- ℹ **NOTE**: The value will change depending on the player's kill or suicide: +1 for a kill, -1 for a suicide.   
--- @return number @frags
function GPlayer:Frags()
end

--- Freeze the player. Frozen players cannot move, look around, or attack. Key bindings are still called. Similar to Player:Lock but the player can still take damage.  
--- Adds or removes the FL_FROZEN flag from the player.  
--- 🦟 **BUG**: Frozen bots will still be able to look around.  
--- @param frozen? boolean @Whether the player should be frozen.
function GPlayer:Freeze(frozen)
end

--- Returns the player's active weapon.  
--- If used on a Global.LocalPlayer() and the player is spectating another player with `OBS_MODE_IN_EYE`, the weapon returned will be of the spectated player.  
--- @return GWeapon @The weapon the player currently has equipped or NULL if the player doesn't have an active weapon eg
function GPlayer:GetActiveWeapon()
end

--- Returns the player's current activity.  
--- @return number @The player's current activity
function GPlayer:GetActivity()
end

--- Returns the direction that the player is aiming.  
--- @return GVector @The direction vector of players aim
function GPlayer:GetAimVector()
end

--- Returns true if the players' model is allowed to rotate around the pitch and roll axis.  
--- @return boolean @Allowed
function GPlayer:GetAllowFullRotation()
end

--- Returns whether the player is allowed to use their weapons in a vehicle or not.  
--- @return boolean @Whether the player is allowed to use their weapons in a vehicle or not.
function GPlayer:GetAllowWeaponsInVehicle()
end

--- Returns a table of all ammo the player has.  
--- @return table @A table with the following format
function GPlayer:GetAmmo()
end

--- Gets the amount of ammo the player has.  
--- @param ammotype any @The ammunition type
--- @return number @The amount of ammo player has in reserve.
function GPlayer:GetAmmoCount(ammotype)
end

--- Gets if the player will be pushed out of nocollided players.  
--- @return boolean @pushed
function GPlayer:GetAvoidPlayers()
end

--- Returns true if the player is able to walk using the (default) alt key.  
--- @return boolean @AbleToWalk
function GPlayer:GetCanWalk()
end

--- Determines whenever the player is allowed to use the zoom functionality.  
--- @return boolean @canZoom
function GPlayer:GetCanZoom()
end

--- Returns the player's class id.  
--- @return number @The player's class id.
function GPlayer:GetClassID()
end

--- ℹ **NOTE**: This function is only available in Sandbox and its derivatives.  
--- Gets the total amount of entities of an entity type added by Player:AddCount.  
--- Default types:  
--- ```  
--- balloons  
--- buttons  
--- cameras  
--- dynamite  
--- effects  
--- emitters  
--- hoverballs  
--- lamps  
--- lights  
--- npcs  
--- props  
--- ragdolls  
--- sents  
--- thrusters  
--- vehicles  
--- wheels  
--- ```  
--- @param type? string @Type to get entity count of.
--- @param minus? number @If specified, it will reduce the counter by this value
--- @return number @The returned count.
function GPlayer:GetCount(type, minus)
end

--- Returns the crouched walk speed multiplier.  
--- See also Player:GetWalkSpeed and Player:SetCrouchedWalkSpeed.  
--- @return number @The crouched walk speed multiplier.
function GPlayer:GetCrouchedWalkSpeed()
end

--- Returns the last command which was sent by the specified player. This can only be called on the player which Global.GetPredictionPlayer() returns.  
--- ℹ **NOTE**: When called clientside in singleplayer during WEAPON:Think, it will return nothing as the hook is not technically predicted in that instance. See the note on the page.  
--- 🦟 **BUG**: [This will fail in GM:StartCommand.](https://github.com/Facepunch/garrysmod-issues/issues/3302)  
--- @return GCUserCmd @Last user commands
function GPlayer:GetCurrentCommand()
end

--- Gets the **actual** view offset which equals the difference between the players actual position and their view when standing.  
--- Do not confuse with Player:GetViewOffset and Player:GetViewOffsetDucked  
--- @return GVector @The actual view offset.
function GPlayer:GetCurrentViewOffset()
end

--- Gets the entity the player is currently driving via the drive library.  
--- @return GEntity @The currently driven entity, or NULL entity
function GPlayer:GetDrivingEntity()
end

--- Returns driving mode of the player. See Entity Driving.  
--- @return number @The drive mode ID or 0 if player doesn't use the drive system.
function GPlayer:GetDrivingMode()
end

--- Returns a player's duck speed (in seconds)  
--- @return number @duckspeed
function GPlayer:GetDuckSpeed()
end

--- Returns the entity the player is currently using, like func_tank mounted turrets or +use prop pickups.  
--- @return GEntity @Entity in use, or NULL entity otherwise
function GPlayer:GetEntityInUse()
end

--- Returns a table with information of what the player is looking at.  
--- The results of this function are **cached** clientside every frame.  
--- Uses util.GetPlayerTrace internally and is therefore bound by its limits.  
--- See also Player:GetEyeTraceNoCursor.  
--- @return table @Trace information, see Structures/TraceResult.
function GPlayer:GetEyeTrace()
end

--- Returns the trace according to the players view direction, ignoring their mouse (holding `C` and moving the mouse in Sandbox).  
--- The results of this function are **cached** clientside every frame.  
--- Uses util.GetPlayerTrace internally and is therefore bound by its limits.  
--- See also Player:GetEyeTrace.  
--- @return table @Trace result
function GPlayer:GetEyeTraceNoCursor()
end

--- Returns the FOV of the player.  
--- @return number @Field of view as a float
function GPlayer:GetFOV()
end

--- Returns the steam "relationship" towards the player.  
--- @return string @Should return one of four different things depending on their status on your friends list: "friend", "blocked", "none" or "requested".
function GPlayer:GetFriendStatus()
end

--- Gets the hands entity of a player  
--- @return GEntity @The hands entity if players has one
function GPlayer:GetHands()
end

--- Returns the widget the player is hovering with their mouse.  
--- @return GEntity @The hovered widget.
function GPlayer:GetHoveredWidget()
end

--- Gets the bottom base and the top base size of the player's hull.  
--- @return GVector @Player's hull bottom base size.
--- @return GVector @Player's hull top base size.
function GPlayer:GetHull()
end

--- Gets the bottom base and the top base size of the player's crouch hull.  
--- @return GVector @Player's crouch hull bottom base size.
--- @return GVector @Player's crouch hull top base size.
function GPlayer:GetHullDuck()
end

--- Retrieves the value of a client-side ConVar. The ConVar must have a FCVAR_USERINFO flag for this to work.  
--- ⚠ **WARNING**: The returned value is truncated to 31 bytes.  
--- ⚠ **WARNING**: On client this function will return value of the local player, regardless of which player the function was called on!  
--- @param cVarName string @The name of the client-side ConVar.
--- @return string @The value of the ConVar.
function GPlayer:GetInfo(cVarName)
end

--- Retrieves the numeric value of a client-side convar, returns nil if value is not convertible to a number. The ConVar must have a FCVAR_USERINFO flag for this to work.  
--- @param cVarName string @The name of the ConVar to query the value of
--- @param default number @Default value if we failed to retrieve the number.
--- @return number @The value of the ConVar or the default value
function GPlayer:GetInfoNum(cVarName, default)
end

--- Returns the jump power of the player  
--- @return number @Jump power
function GPlayer:GetJumpPower()
end

--- Returns the player's ladder climbing speed.  
--- See Player:GetWalkSpeed for normal walking speed, Player:GetRunSpeed for sprinting speed and Player:GetSlowWalkSpeed for slow walking speed.  
--- @return number @The ladder climbing speed.
function GPlayer:GetLadderClimbSpeed()
end

--- Returns the timescale multiplier of the player movement.  
--- @return number @The timescale multiplier, defaults to `1`.
function GPlayer:GetLaggedMovementValue()
end

--- Returns the maximum amount of armor the player should have. Default value is 100.  
--- @return number @The new max armor value
function GPlayer:GetMaxArmor()
end

--- Returns the player's maximum movement speed.  
--- See also Player:SetMaxSpeed, Player:GetWalkSpeed and Player:GetRunSpeed.  
--- @return number @The maximum movement speed the player can go at.
function GPlayer:GetMaxSpeed()
end

--- Returns the player's name, this is an alias of Player:Nick.  
--- ℹ **NOTE**: This function overrides Entity:GetName (in the Lua metatable, not in c++), keep it in mind when dealing with ents.FindByName or any engine function which requires the mapping name.  
--- @return string @The player's name.
function GPlayer:GetName()
end

--- Returns whenever the player is set not to collide with their teammates.  
--- @return boolean @noCollideWithTeammates
function GPlayer:GetNoCollideWithTeammates()
end

--- Returns the the observer mode of the player  
--- @return number @Observe mode of that player, see Enums/OBS_MODE.
function GPlayer:GetObserverMode()
end

--- Returns the entity the player is currently observing.  
--- Set using Player:SpectateEntity.  
--- @return GEntity @The entity the player is currently spectating, or NULL if the player has no target.
function GPlayer:GetObserverTarget()
end

--- Returns a **P**ersistent **Data** key-value pair from the SQL database. (`sv.db` when called on server, `cl.db` when called on client)  
--- Internally uses the sql library. See util.GetPData for cases when the player is not currently on the server.  
--- ℹ **NOTE**: This function internally uses Player:SteamID64, it previously utilized Player:UniqueID which can cause collisions (two or more players sharing the same PData entry). Player:SetPData now replaces all instances of Player:UniqueID with Player:SteamID64 when running Player:SetPData  
--- ℹ **NOTE**: PData is not networked from servers to clients!  
--- @param key? string @Name of the PData key
--- @param default? any @Default value if PData key doesn't exist.
--- @return string @The data in the SQL database or the default value given.
function GPlayer:GetPData(key, default)
end

--- Returns a player model's color. The part of the model that is colored is determined by the model itself, and is different for each model.  
--- ℹ **NOTE**: Overide this function clientside on a Entity(not a player) with playermodel and return color will apply color on it  
--- @return GVector @The format is `Vector(r,g,b)`, and each color component should be between 0 and 1.
function GPlayer:GetPlayerColor()
end

--- Returns a table containing player information.  
--- @return table @A table containing player information.
function GPlayer:GetPlayerInfo()
end

--- Returns the preferred carry angles of an object, if any are set.  
--- Calls GM:GetPreferredCarryAngles with the target entity and returns the carry angles.  
--- @param carryEnt GEntity @Entity to retrieve the carry angles of.
--- @return GAngle @Carry angles or nil if the entity has no preferred carry angles.
function GPlayer:GetPreferredCarryAngles(carryEnt)
end

--- Returns the widget entity the player is using.  
--- Having a pressed widget stops the player from firing their weapon to allow input to be passed onto the widget.  
--- @return GEntity @The pressed widget.
function GPlayer:GetPressedWidget()
end

--- Returns the weapon the player previously had equipped.  
--- @return GEntity @The previous weapon of the player
function GPlayer:GetPreviousWeapon()
end

--- 🛑 **DEPRECATED**: You should use Player:GetViewPunchAngles instead.  
--- Returns players screen punch effect angle. See Player:ViewPunch and Player:SetViewPunchAngles  
--- @return GAngle @The punch angle
function GPlayer:GetPunchAngle()
end

--- Returns players death ragdoll. The ragdoll is created by Player:CreateRagdoll.  
--- 🦟 **BUG**: Calling Entity:GetPos server-side with this function then will return the position when Player:CreateRagdoll was used.  
--- @return GEntity @The ragdoll
function GPlayer:GetRagdollEntity()
end

--- Returns the render angles for the player.  
--- @return GAngle @The render angles of the player
function GPlayer:GetRenderAngles()
end

--- Returns the player's sprint speed.  
--- See also Player:SetRunSpeed, Player:GetWalkSpeed and Player:GetMaxSpeed.  
--- @return number @The sprint speed
function GPlayer:GetRunSpeed()
end

--- Returns the position of a Player's view  
--- ℹ **NOTE**: This is the same as calling Entity:EyePos on the player.  
--- @return GVector @The position of the player's view.
function GPlayer:GetShootPos()
end

--- Returns the player's slow walking speed, which is activated via `+WALK` keybind.  
--- See Player:GetWalkSpeed for normal walking speed, Player:GetRunSpeed for sprinting speed and Player:GetLadderClimbSpeed for ladder climb speed.  
--- @return number @The new slow walking speed.
function GPlayer:GetSlowWalkSpeed()
end

--- Returns the maximum height player can step onto.  
--- @return number @The maximum height player can get up onto without jumping, in hammer units.
function GPlayer:GetStepSize()
end

--- Returns the player's HEV suit power.  
--- 🦟 **BUG**: [This will only work for the local player when used clientside.](https://github.com/Facepunch/garrysmod-issues/issues/3449)  
--- @return number @The current suit power.
function GPlayer:GetSuitPower()
end

--- Returns the number of seconds that the player has been timing out for. You can check if a player is timing out with Player:IsTimingOut.  
--- ℹ **NOTE**: This function is relatively useless because it is tied to the value of the `sv_timeout` ConVar, which is irrelevant to the description above. [This is not considered as a bug](https://discord.com/channels/565105920414318602/567617926991970306/748970396224585738).  
--- @return number @Timeout seconds.
function GPlayer:GetTimeoutSeconds()
end

--- Returns TOOL table of players current tool, or of the one specified.  
--- @param mode? string @Classname of the tool to retrieve
--- @return table @TOOL table, or nil if the table wasn't found or the player doesn't have a tool gun.
function GPlayer:GetTool(mode)
end

--- Returns a player's unduck speed (in seconds)  
--- @return number @unduck speed
function GPlayer:GetUnDuckSpeed()
end

--- Returns the entity the player would use if they would press their `+use` keybind.  
--- <note issue="5027">Because entity physics objects usually do not exist on the client, the client's use entity will resolve to whatever the crosshair is placed on within a little less than 72 units of the player's eye position. This differs from the entity returned by the server, which has fully physical use checking. See util.TraceHull.  
--- Issue tracker: [5027](https://github.com/Facepunch/garrysmod-issues/issues/5027)</note>  
--- @return GEntity @The entity that would be used or NULL.
function GPlayer:GetUseEntity()
end

--- Returns the player's user group. By default, player user groups are loaded from `garrysmod/settings/users.txt`.  
--- @return string @The user group of the player
function GPlayer:GetUserGroup()
end

--- Gets the vehicle the player is driving, returns NULL ENTITY if the player is not driving.  
--- @return GVehicle @vehicle
function GPlayer:GetVehicle()
end

--- Returns the entity the player is using to see from (such as the player itself, the camera, or another entity).  
--- ℹ **NOTE**: This function will return a [NULL Entity] until Player:SetViewEntity has been used  
--- @return GEntity @The entity the player is using to see from
function GPlayer:GetViewEntity()
end

--- Returns the player's view model entity by the index.  
--- Each player has 3 view models by default, but only the first one is used.  
--- To use the other viewmodels in your SWEP, see Entity:SetWeaponModel.  
--- ℹ **NOTE**: In the Client realm, other players' viewmodels are not available unless they are being spectated.  
--- @param index? number @optional index of the view model to return, can range from 0 to 2
--- @return GEntity @The view model entity
function GPlayer:GetViewModel(index)
end

--- Returns the view offset of the player which equals the difference between the players actual position and their view.  
--- See also Player:GetViewOffsetDucked.  
--- @return GVector @New view offset, must be local vector to players Entity:GetPos
function GPlayer:GetViewOffset()
end

--- Returns the view offset of the player which equals the difference between the players actual position and their view when ducked.  
--- See also Player:GetViewOffset.  
--- @return GVector @New crouching view offset, must be local vector to players Entity:GetPos
function GPlayer:GetViewOffsetDucked()
end

--- Returns players screen punch effect angle.  
--- @return GAngle @The punch angle
function GPlayer:GetViewPunchAngles()
end

--- Returns client's view punch velocity. See Player:ViewPunch and Player:SetViewPunchVelocity  
--- @return GAngle @The current view punch angle velocity.
function GPlayer:GetViewPunchVelocity()
end

--- Returns the current voice volume scale for given player on client.  
--- @return number @The voice volume scale, where 0 is 0% and 1 is 100%.
function GPlayer:GetVoiceVolumeScale()
end

--- Returns the player's normal walking speed. Not sprinting, not slow walking. (+walk)  
--- See also Player:SetWalkSpeed, Player:GetMaxSpeed and Player:GetRunSpeed.  
--- @return number @The normal walking speed.
function GPlayer:GetWalkSpeed()
end

--- Returns the weapon for the specified class  
--- @param className string @Class name of weapon
--- @return GWeapon @The weapon for the specified class, or NULL ENTITY if the player does not have this weapon.
function GPlayer:GetWeapon(className)
end

--- Returns a player's weapon color. The part of the model that is colored is determined by the model itself, and is different for each model. The format is Vector(r,g,b), and each color should be between 0 and 1.  
--- @return GVector @color
function GPlayer:GetWeaponColor()
end

--- Returns a table of the player's weapons.  
--- ℹ **NOTE**:   
--- This function returns a sequential table. Prefer to loop it with Global.ipairs instead of the Global.pairs function.  
--- @return table @All the weapons the player currently has.
function GPlayer:GetWeapons()
end

--- Gives the player a weapon.  
--- ℹ **NOTE**: While this function is meant for weapons/pickupables only, it is **not** restricted to weapons. Any entity can be spawned using this function, including NPCs and SENTs.  
--- @param weaponClassName? string @Class name of weapon to give the player
--- @param bNoAmmo? boolean @Set to true to not give any ammo on weapon spawn
--- @return GWeapon @The weapon given to the player, if one was given
function GPlayer:Give(weaponClassName, bNoAmmo)
end

--- Gives ammo to a player  
--- @param amount? number @Amount of ammo
--- @param type? any @Type of ammo
--- @param hidePopup? boolean @Hide display popup when giving the ammo
--- @return number @Ammo given.
function GPlayer:GiveAmmo(amount, type, hidePopup)
end

--- Disables god mode on the player.  
function GPlayer:GodDisable()
end

--- Enables god mode on the player.  
function GPlayer:GodEnable()
end

--- Returns whether the player has god mode or not, contolled by Player:GodEnable and Player:GodDisable.  
--- @return boolean @Whether the player has god mode or not.
function GPlayer:HasGodMode()
end

--- Returns if the player has the specified weapon  
--- @param className string @Class name of the weapon
--- @return boolean @True if the player has the weapon
function GPlayer:HasWeapon(className)
end

--- Returns the player's IP address and connection port in ip:port form  
--- ℹ **NOTE**: Returns `Error!` for bots.  
--- @return string @The player's IP address and connection port
function GPlayer:IPAddress()
end

--- Returns if the player is in a vehicle  
--- @return boolean @Whether the player is in a vehicle.
function GPlayer:InVehicle()
end

--- Returns whether the player is an admin or not. It will also return `true` if the player is Player:IsSuperAdmin by default.  
--- Internally this is determined by Player:IsUserGroup.  
--- @return boolean @True if the player is an admin or a super admin.
function GPlayer:IsAdmin()
end

--- Returns if the player is an bot or not  
--- @return boolean @True if the player is a bot.
function GPlayer:IsBot()
end

--- Returns true from the point when the player is sending client info but not fully in the game until they disconnect.  
--- @return boolean @isConnected
function GPlayer:IsConnected()
end

--- Used to find out if a player is currently 'driving' an entity (by which we mean 'right click > drive' ).  
--- @return boolean @A value representing whether or not the player is 'driving' an entity.
function GPlayer:IsDrivingEntity()
end

--- Returns whether the players movement is currently frozen, controlled by Player:Freeze.  
--- @return boolean @Whether the players movement is currently frozen or not.
function GPlayer:IsFrozen()
end

--- Returns whether the player identity was confirmed by the steam network.  
--- See also GM:PlayerAuthed.  
--- @return boolean @Whether the player has been fully authenticated or not
function GPlayer:IsFullyAuthenticated()
end

--- Returns if a player is the host of the current session.  
--- @return boolean @`true` if the player is the listen server host, `false` otherwise
function GPlayer:IsListenServerHost()
end

--- Returns whether or not the player is muted locally.  
--- @return boolean @whether or not the player is muted locally.
function GPlayer:IsMuted()
end

--- Returns true if the player is playing a taunt.  
--- @return boolean @Whether the player is playing a taunt.
function GPlayer:IsPlayingTaunt()
end

--- Returns whenever the player is heard by the local player clientside, or if the player is speaking serverside.  
--- @return boolean @Is the player speaking or not.
function GPlayer:IsSpeaking()
end

--- Returns whether the player is currently sprinting or not, specifically if they are holding their sprint key and are allowed to sprint.  
--- This will not check if the player is currently sprinting into a wall. (i.e. holding their sprint key but not moving)  
--- @return boolean @Is the player sprinting or not
function GPlayer:IsSprinting()
end

--- Returns whenever the player is equipped with the suit item.  
--- 🦟 **BUG**: [This will only work for the local player when used clientside.](https://github.com/Facepunch/garrysmod-issues/issues/3449)  
--- @return boolean @Is the suit equipped or not.
function GPlayer:IsSuitEquipped()
end

--- Returns whether the player is a super admin.  
--- Internally this is determined by Player:IsUserGroup. See also Player:IsAdmin.  
--- @return boolean @True if the player is a super admin.
function GPlayer:IsSuperAdmin()
end

--- Returns `true` if the player is timing out (i.e. is losing connection), `false` otherwise.  
--- A player is considered timing out when more than 4 seconds has elapsed since a network packet was received from given player.  
--- @return boolean @Whether the player is timing out.
function GPlayer:IsTimingOut()
end

--- Returns whether the player is typing in their chat.  
--- This may not work properly if the server uses a custom chatbox.  
--- @return boolean @Whether the player is typing in their chat or not.
function GPlayer:IsTyping()
end

--- Returns true/false if the player is in specified group or not. See Player:GetUserGroup for a way to get player's usergroup.  
--- @param groupname string @Group to check the player for.
--- @return boolean @isInUserGroup
function GPlayer:IsUserGroup(groupname)
end

--- Returns if the player can be heard by the local player.  
--- @return boolean @isAudible
function GPlayer:IsVoiceAudible()
end

--- Returns if the player currently walking. (`+walk` keybind)  
--- @return boolean @True if the player is currently walking.
function GPlayer:IsWalking()
end

--- Returns whether the player is using the world clicking feature, see Panel:SetWorldClicker  
--- @return boolean @Is the player world clicking or not.
function GPlayer:IsWorldClicking()
end

--- Returns whether the world clicking is disabled for given player or not. See Player:DisableWorldClicking.  
--- @return boolean @Whether the world clicking is disabled or not.
function GPlayer:IsWorldClickingDisabled()
end

--- Returns whether a key is down. This is not networked to other players, meaning only the local client can see the keys they are pressing.  
--- @param key number @The key, see Enums/IN
--- @return boolean @whether the key is down or not.
function GPlayer:KeyDown(key)
end

--- Gets whether a key was down one tick ago.  
--- @param key number @The key, see Enums/IN
--- @return boolean @Is key down ?
function GPlayer:KeyDownLast(key)
end

--- Gets whether a key was just pressed this tick.  
--- @param key number @Corresponds to an Enums/IN
--- @return boolean @Was pressed or not
function GPlayer:KeyPressed(key)
end

--- Gets whether a key was just released this tick.  
--- @param key number @The key, see Enums/IN
--- @return boolean @Was released or not
function GPlayer:KeyReleased(key)
end

--- Kicks the player from the server.  
--- ℹ **NOTE**: This can not be run before the player has fully joined in. Use game.KickID for that.  
--- @param reason? string @Reason to show for disconnection
function GPlayer:Kick(reason)
end

--- Kills a player and calls GM:PlayerDeath.  
function GPlayer:Kill()
end

--- Kills a player without notifying the rest of the server.  
--- This will call GM:PlayerSilentDeath instead of GM:PlayerDeath.  
function GPlayer:KillSilent()
end

--- This allows the server to mitigate the lag of the player by moving back all the entities that can be lag compensated to the time the player attacked with his weapon.  
--- This technique is most commonly used on things that hit other entities instantaneously, such as traces.  
--- ℹ **NOTE**: Entity:FireBullets calls this function internally.  
--- Lag compensation only works for players and entities that have been enabled with Entity:SetLagCompensated  
--- Despite being defined shared, it can only be used server-side in a Predicted Hook.  
--- ⚠ **WARNING**: This function NEEDS to be disabled after you're done with it or it will break the movement of the entities affected!  
--- 🦟 **BUG**: [Lag compensation does not support pose parameters.](https://github.com/Facepunch/garrysmod-issues/issues/3683)  
--- @param lagCompensation boolean @The state of the lag compensation, true to enable and false to disable.
function GPlayer:LagCompensation(lagCompensation)
end

--- Returns the hitgroup where the player was last hit.  
--- @return number @Hitgroup, see Enums/HITGROUP
function GPlayer:LastHitGroup()
end

--- Shows "limit hit" notification in sandbox.  
--- ℹ **NOTE**: This function is only available in Sandbox and its derivatives.  
--- @param type string @Type of hit limit.
function GPlayer:LimitHit(type)
end

--- Returns the direction a player is looking as a entity/local-oriented angle.  
--- Unlike Entity:EyeAngles, this function does not include angles of the Player's Entity:GetParent.  
--- @return GAngle @local eye angles
function GPlayer:LocalEyeAngles()
end

--- Stops a player from using any inputs, such as moving, turning, or attacking. Key binds are still called. Similar to Player:Freeze but the player takes no damage.  
--- Adds the FL_FROZEN and FL_GODMODE flags to the player.  
--- 🦟 **BUG**: Frozen bots will still be able to look around.  
function GPlayer:Lock()
end

--- Returns the position of a Kinect bone.  
--- @param bone number @Bone to get the position of
--- @return GVector @Position of the bone.
function GPlayer:MotionSensorPos(bone)
end

--- Returns the players name. Identical to Player:Nick and Player:GetName.  
--- @return string @Player's Steam name.
function GPlayer:Name()
end

--- Returns the player's nickname.  
--- @return string @Player's Steam name
function GPlayer:Nick()
end

--- Returns the 64-bit SteamID aka CommunityID of the Steam Account that owns the Garry's Mod license this player is using. This is useful for detecting players using Steam Family Sharing.  
--- If player is not using Steam Family Sharing, this will return the player's actual SteamID64().  
--- ℹ **NOTE**: This data will only be available after the player has fully authenticated with Steam. See Player:IsFullyAuthenticated.  
--- @return string @The 64bit SteamID
function GPlayer:OwnerSteamID64()
end

--- Returns the percentage of packets lost by the client. It is not networked so it only returns 0 when run clientside.  
--- @return number @Percentage of packets lost (0-100)
function GPlayer:PacketLoss()
end

--- Unfreezes the props player is looking at. This is essentially the same as pressing reload with the physics gun, including double press for unfreeze all.  
--- @return number @Number of props unfrozen.
function GPlayer:PhysgunUnfreeze()
end

--- This makes the player hold ( same as pressing `E` on a small prop ) the provided entity.  
--- ℹ **NOTE**: Don't get this confused with picking up items like ammo or health kits  
--- ℹ **NOTE**: This picks up the passed entity regardless of its mass or distance from the player  
--- @param entity GEntity @Entity to pick up.
function GPlayer:PickupObject(entity)
end

--- Forces the player to pickup an existing weapon entity. The player will not pick up the weapon if they already own a weapon of given type, or if the player could not normally have this weapon in their inventory.  
--- This function **will** bypass GM:PlayerCanPickupWeapon.  
--- @param wep? GWeapon @The weapon to try to pick up.
--- @param ammoOnly? boolean @If set to true, the player will only attempt to pick up the ammo from the weapon
--- @return boolean @Whether the player succeeded in picking up the weapon or not.
function GPlayer:PickupWeapon(wep, ammoOnly)
end

--- Returns the player's ping to server.  
--- @return number @The player's ping.
function GPlayer:Ping()
end

--- Plays the correct step sound according to what the player is staying on.  
--- @param volume number @Volume for the sound, in range from 0 to 1
function GPlayer:PlayStepSound(volume)
end

--- Displays a message either in their chat, console, or center of the screen. See also Global.PrintMessage.  
--- ℹ **NOTE**: When called serverside, this uses the archaic user message system (the umsg) and hence is limited to ≈250 characters.  
--- `HUD_PRINTCENTER` will not work when this is called clientside.  
--- @param type number @Which type of message should be sent to the player (Enums/HUD).
--- @param message string @Message to be sent to the player.
function GPlayer:PrintMessage(type, message)
end

--- Removes all ammo from a certain player  
function GPlayer:RemoveAllAmmo()
end

--- Removes all weapons and ammo from the player.  
function GPlayer:RemoveAllItems()
end

--- Removes the amount of the specified ammo from the player.  
--- @param ammoCount number @The amount of ammunition to remove.
--- @param ammoName string @The name of the ammunition to remove from
function GPlayer:RemoveAmmo(ammoCount, ammoName)
end

--- Removes a **P**ersistent **Data** key-value pair from the SQL database. (`sv.db` when called on server, `cl.db` when called on client)  
--- Internally uses the sql library. See util.RemovePData for cases when the player is not currently on the server.  
--- ℹ **NOTE**: This function internally uses Player:SteamID64, it previously utilized Player:UniqueID which can cause collisions (two or more players sharing the same PData entry). Player:SetPData now replaces all instances of Player:UniqueID with Player:SteamID64 when running Player:SetPData  
--- ℹ **NOTE**: PData is not networked from servers to clients!  
--- @param key string @Key to remove
--- @return boolean @true is succeeded, false otherwise
function GPlayer:RemovePData(key)
end

--- Strips the player's suit item.  
function GPlayer:RemoveSuit()
end

--- Resets both normal and duck hulls to their default values.  
function GPlayer:ResetHull()
end

--- Forces the player to say whatever the first argument is. Works on bots too.  
--- ℹ **NOTE**: This function ignores the default chat message cooldown  
--- @param text? string @The text to force the player to say.
--- @param teamOnly? boolean @Whether to send this message to our own team only.
function GPlayer:Say(text, teamOnly)
end

--- Fades the screen  
--- @param flags? number @Fade flags defined with Enums/SCREENFADE.
--- @param clr? number @The color of the screenfade
--- @param fadeTime? number @Fade(in/out) effect transition time ( From no fade to full fade and vice versa )
--- @param fadeHold? number @Fade effect hold time
function GPlayer:ScreenFade(flags, clr, fadeTime, fadeHold)
end

--- Sets the active weapon of the player by its class name.  
--- ⚠ **WARNING**: This will switch the weapon out of prediction, causing delay on the client and WEAPON:Deploy and WEAPON:Holster to be called out of prediction. Try using CUserCmd:SelectWeapon or input.SelectWeapon, instead.  
--- ℹ **NOTE**: This will trigger the weapon switch event and associated animations. To switch weapons silently, use Player:SetActiveWeapon.  
--- @param className string @The class name of the weapon to switch to
function GPlayer:SelectWeapon(className)
end

--- Sends a hint to a player.  
--- ℹ **NOTE**: This function is only available in Sandbox and its derivatives. Since this adds `#Hint_` to the beginning of each message, you should only use it with default hint messages, or those cached with language.Add. For hints with custom text, look at notification.AddLegacy.  
--- @param name string @Name/class/index of the hint
--- @param delay number @Delay in seconds before showing the hint
function GPlayer:SendHint(name, delay)
end

--- Executes a simple Lua string on the player.  
--- ℹ **NOTE**: If you need to use this function more than once consider using net library. Send net message and make the entire code you want to execute in net.Receive on client.  
--- ℹ **NOTE**: The string is limited to 254 bytes. Consider using the net library for more advanced server-client interaction.  
--- @param script string @The script to execute.
function GPlayer:SendLua(script)
end

--- Sets the player's active weapon. You should use CUserCmd:SelectWeapon or Player:SelectWeapon, instead in most cases.  
--- This function will not trigger the weapon switch events or associated equip animations. It will bypass  
--- GM:PlayerSwitchWeapon and the currently active weapon's WEAPON:Holster return value.  
--- @param weapon GWeapon @The weapon to equip.
function GPlayer:SetActiveWeapon(weapon)
end

--- Sets the player's activity.  
--- @param act number @The new activity to set
function GPlayer:SetActivity(act)
end

--- Set if the players' model is allowed to rotate around the pitch and roll axis.  
--- @param Allowed boolean @Allowed to rotate
function GPlayer:SetAllowFullRotation(Allowed)
end

--- Allows player to use their weapons in a vehicle. You need to call this before entering a vehicle.  
--- 🦟 **BUG**: [Shooting in a vehicle fires two bullets.](https://github.com/Facepunch/garrysmod-issues/issues/1277)  
--- @param allow boolean @Show we allow player to use their weapons in a vehicle or not.
function GPlayer:SetAllowWeaponsInVehicle(allow)
end

--- Sets the amount of the specified ammo for the player.  
--- @param ammoCount number @The amount of ammunition to set.
--- @param ammoType any @The ammunition type
function GPlayer:SetAmmo(ammoCount, ammoType)
end

--- Sets the player armor to the argument.  
--- @param Amount number @The amount that the player armor is going to be set to.
function GPlayer:SetArmor(Amount)
end

--- Pushes the player away from other players whenever the player inside another players' bounding box.  
--- This avoidance is performed clientside by altering movement sent to server.  
--- This applies to players within a single team. (Player:Team)  
--- @param avoidPlayers boolean @Whether to avoid teammates, or not.
function GPlayer:SetAvoidPlayers(avoidPlayers)
end

--- Set if the player should be allowed to walk using the (default) alt key.  
--- @param abletowalk boolean @True allows the player to walk.
function GPlayer:SetCanWalk(abletowalk)
end

--- Sets whether the player can use the HL2 suit zoom ("+zoom" bind) or not.  
--- @param canZoom boolean @Whether to make the player able or unable to zoom.
function GPlayer:SetCanZoom(canZoom)
end

--- Sets the player's class id.  
--- @param classID number @The class id the player is being set with.
function GPlayer:SetClassID(classID)
end

--- Sets the crouched walk speed multiplier.  
--- Doesn't work for values above 1.  
--- See also Player:SetWalkSpeed and Player:GetCrouchedWalkSpeed.  
--- @param speed number @The walk speed multiplier that crouch speed should be.
function GPlayer:SetCrouchedWalkSpeed(speed)
end

--- Sets the **actual** view offset which equals the difference between the players actual position and their view when standing.  
--- Do not confuse with Player:SetViewOffset and Player:SetViewOffsetDucked  
--- @param viewOffset GVector @The new view offset.
function GPlayer:SetCurrentViewOffset(viewOffset)
end

--- Activates a given DSP (Digital Signal Processor) effect on all sounds that the player hears.  
--- To apply a DSP effect to individual sounds, see CSoundPatch:SetDSP  
--- @param dspEffectId number @The index of the DSP sound filter to apply
--- @param fastReset boolean @If set to true the sound filter will be removed faster
function GPlayer:SetDSP(dspEffectId, fastReset)
end

--- Sets a player's death count  
--- @param deathcount number @Number of deaths (positive or negative)
function GPlayer:SetDeaths(deathcount)
end

--- Sets how quickly a player ducks.  
--- 🦟 **BUG**: [This will not work for values >= 1.](https://github.com/Facepunch/garrysmod-issues/issues/2722)  
--- @param duckSpeed number @How quickly the player will duck.
function GPlayer:SetDuckSpeed(duckSpeed)
end

--- Sets the local angle of the player's view (may rotate body too if angular difference is large)  
--- @param angle GAngle @Angle to set the view to
function GPlayer:SetEyeAngles(angle)
end

--- Set a player's FOV (Field Of View) over a certain amount of time.  
--- This is meant to be called on the server or shared (for prediction), it will have no effect if called clientside only. You may want to use GM:CalcView for that instead.  
--- @param fov? number @the angle of perception (FOV)
--- @param time? number @the time it takes to transition to the FOV expressed in a floating point.
--- @param requester? GEntity @The requester or "owner" of the zoom event
function GPlayer:SetFOV(fov, time, requester)
end

--- Sets a player's frags (kills)  
--- @param fragcount number @Number of frags (positive or negative)
function GPlayer:SetFrags(fragcount)
end

--- Sets the hands entity of a player.  
--- The hands entity is an entity introduced in Garry's Mod 13 and it's used to show the player's hands attached to the viewmodel.  
--- This is similar to the approach used in L4D and CS:GO, for more information on how to implement this system in your gamemode visit Using Viewmodel Hands.  
--- @param hands GEntity @The hands entity to set
function GPlayer:SetHands(hands)
end

--- Sets the widget that is currently hovered by the player's mouse.  
--- @param widget? GEntity @The widget entity that the player is hovering.
function GPlayer:SetHoveredWidget(widget)
end

--- Sets the mins and maxs of the AABB of the players collision.  
--- See Player:SetHullDuck for the hull while crouching/ducking.  
--- ℹ **NOTE**: Not replicated, need to be call on server and client.  
--- @param hullMins GVector @The min coordinates of the hull.
--- @param hullMaxs GVector @The max coordinates of the hull.
function GPlayer:SetHull(hullMins, hullMaxs)
end

--- Sets the mins and maxs of the AABB of the players collision when ducked.  
--- See Player:SetHull for setting the hull while standing.  
--- ℹ **NOTE**: Not replicated, need to be call on server and client.  
--- @param hullMins GVector @The min coordinates of the hull.
--- @param hullMaxs GVector @The max coordinates of the hull.
function GPlayer:SetHullDuck(hullMins, hullMaxs)
end

--- Sets the jump power, eg. the velocity that will be applied to the player when they jump.  
--- @param jumpPower number @The new jump velocity.
function GPlayer:SetJumpPower(jumpPower)
end

--- Sets the player's ladder climbing speed.  
--- See Player:SetWalkSpeed for normal walking speed, Player:SetRunSpeed for sprinting speed and Player:SetSlowWalkSpeed for slow walking speed.  
--- @param speed number @The ladder climbing speed.
function GPlayer:SetLadderClimbSpeed(speed)
end

--- Slows down the player movement simulation by the timescale, this is used internally in the HL2 weapon stripping sequence.  
--- It achieves such behavior by multiplying the Global.FrameTime by the specified timescale at the start of the movement simulation and then restoring it afterwards.  
--- ℹ **NOTE**: This is reset to 1 on spawn.  
--- There is no weapon counterpart to this, you'll have to hardcode the multiplier in the weapon or call Weapon:SetNextPrimaryFire / Weapon:SetNextSecondaryFire manually.  
--- @param timescale number @The timescale multiplier.
function GPlayer:SetLaggedMovementValue(timescale)
end

--- Sets the hitgroup where the player was last hit.  
--- @param hitgroup number @The hitgroup to set as the "last hit", see Enums/HITGROUP.
function GPlayer:SetLastHitGroup(hitgroup)
end

--- Sets the maximum amount of armor the player should have. This affects default built-in armor pickups, but not Player:SetArmor.  
--- @param maxarmor number @The new max armor value.
function GPlayer:SetMaxArmor(maxarmor)
end

--- Sets the maximum speed which the player can move at.  
--- ℹ **NOTE**: This is called automatically by the engine. If you wish to limit player speed without setting their run/sprint speeds, see CMoveData:SetMaxClientSpeed.  
--- @param walkSpeed number @The maximum speed.
function GPlayer:SetMaxSpeed(walkSpeed)
end

--- Sets if the player should be muted locally.  
--- @param mute boolean @Mute or unmute.
function GPlayer:SetMuted(mute)
end

--- Sets whenever the player should not collide with their teammates, based on their Player:Team.  
--- ℹ **NOTE**: This will only work for teams with ID 1 to 4 due to internal Engine limitations.  
--- ℹ **NOTE**: This causes traces with COLLISION_GROUP_PLAYER to pass through players.  
--- @param shouldNotCollide boolean @`true` to disable, `false` to enable collision.
function GPlayer:SetNoCollideWithTeammates(shouldNotCollide)
end

--- Sets the players visibility towards NPCs.  
--- Internally this toggles the FL_NOTARGET flag, which you can manually test for using Entity:IsFlagSet  
--- @param visibility boolean @The visibility.
function GPlayer:SetNoTarget(visibility)
end

--- Sets the players observer mode. You must start the spectating first with Player:Spectate.  
--- @param mode number @Spectator mode using Enums/OBS_MODE.
function GPlayer:SetObserverMode(mode)
end

--- Writes a **P**ersistent **Data** key-value pair to the SQL database. (`sv.db` when called on server, `cl.db` when called on client)  
--- Internally uses the sql library. See util.SetPData for cases when the player is not currently on the server.  
--- ℹ **NOTE**: This function internally uses Player:SteamID64, it previously utilized Player:UniqueID which can cause collisions (two or more players sharing the same PData entry). Player:SetPData now replaces all instances of Player:UniqueID with Player:SteamID64 when running Player:SetPData  
--- ℹ **NOTE**: PData is not networked from servers to clients!  
--- @param key string @Name of the PData key
--- @param value any @Value to write to the key (**must** be an SQL valid data type, such as a string or integer)
--- @return boolean @Whether the operation was successful or not
function GPlayer:SetPData(key, value)
end

--- Sets the player model's color. The part of the model that is colored is determined by the model itself, and is different for each model.  
--- @param Color GVector @This is the color to be set
function GPlayer:SetPlayerColor(Color)
end

--- Sets the widget that is currently in use by the player's mouse.  
--- Having a pressed widget stops the player from firing their weapon to allow input to be passed onto the widget.  
--- @param pressedWidget? GEntity @The widget the player is currently using.
function GPlayer:SetPressedWidget(pressedWidget)
end

--- Sets the render angles of a player. Value set by this function is reset to player's angles (Entity:GetAngles) right after GM:UpdateAnimation.  
--- @param ang GAngle @The new render angles to set
function GPlayer:SetRenderAngles(ang)
end

--- Sets the player's sprint speed.  
--- See also Player:GetRunSpeed, Player:SetWalkSpeed and Player:SetMaxSpeed.  
--- ℹ **NOTE**: player_default class run speed is: `240`  
--- @param runSpeed number @The new sprint speed when `sv_friction` is below `10`
function GPlayer:SetRunSpeed(runSpeed)
end

--- Sets the player's slow walking speed, which is activated via `+WALK` keybind.  
--- See Player:SetWalkSpeed for normal walking speed, Player:SetRunSpeed for sprinting speed and Player:SetLadderClimbSpeed for ladder climb speed.  
--- @param speed number @The new slow walking speed.
function GPlayer:SetSlowWalkSpeed(speed)
end

--- Sets the maximum height a player can step onto without jumping.  
--- @param stepHeight number @The new maximum height the player can step onto without jumping
function GPlayer:SetStepSize(stepHeight)
end

--- Sets the player's HEV suit power.  
--- 🦟 **BUG**: [This will only work for the local player when used clientside.](https://github.com/Facepunch/garrysmod-issues/issues/3449)  
--- @param power number @The new suit power.
function GPlayer:SetSuitPower(power)
end

--- Sets whenever to suppress the pickup notification for the player.  
--- @param doSuppress boolean @Whenever to suppress the notice or not.
function GPlayer:SetSuppressPickupNotices(doSuppress)
end

--- Sets the player to the chosen team.  
--- @param Team number @The team that the player is being set to.
function GPlayer:SetTeam(Team)
end

--- Sets how quickly a player un-ducks  
--- @param UnDuckSpeed number @How quickly the player will un-duck
function GPlayer:SetUnDuckSpeed(UnDuckSpeed)
end

--- Sets the usergroup of the player.  
--- @param groupName string @The user group of the player.
function GPlayer:SetUserGroup(groupName)
end

--- Attaches the players view to the position and angles of the specified entity.  
--- @param viewEntity GEntity @The entity to attach the player view to.
function GPlayer:SetViewEntity(viewEntity)
end

--- Sets the **desired** view offset which equals the difference between the players actual position and their view when standing.  
--- If you want to set **actual** view offset, use Player:SetCurrentViewOffset  
--- See also Player:SetViewOffsetDucked for **desired** view offset when crouching.  
--- @param viewOffset GVector @The new desired view offset when standing.
function GPlayer:SetViewOffset(viewOffset)
end

--- Sets the **desired** view offset which equals the difference between the players actual position and their view when crouching.  
--- If you want to set **actual** view offset, use Player:SetCurrentViewOffset  
--- See also Player:SetViewOffset for **desired** view offset when standing.  
--- @param viewOffset GVector @The new desired view offset when crouching.
function GPlayer:SetViewOffsetDucked(viewOffset)
end

--- Sets client's view punch angle, but not the velocity. See Player:ViewPunch  
--- @param punchAngle GAngle @The angle to set.
function GPlayer:SetViewPunchAngles(punchAngle)
end

--- Sets client's view punch velocity. See Player:ViewPunch and Player:SetViewPunchAngles  
--- @param punchVel GAngle @The angle velocity to set.
function GPlayer:SetViewPunchVelocity(punchVel)
end

--- Sets the voice volume scale for given player on client. This value will persist from server to server, but will be reset when the game is shut down.  
--- ℹ **NOTE**: This doesn't work on bots, their scale will always be `1`.  
--- @param arg number @The voice volume scale, where `0` is 0% and `1` is 100%.
function GPlayer:SetVoiceVolumeScale(arg)
end

--- Sets the player's normal walking speed. Not sprinting, not slow walking `+walk`.  
--- See also Player:SetSlowWalkSpeed, Player:GetWalkSpeed, Player:SetCrouchedWalkSpeed, Player:SetMaxSpeed and Player:SetRunSpeed.  
--- 🦟 **BUG**: [Using a speed of `0` can lead to prediction errors.](https://github.com/Facepunch/garrysmod-issues/issues/2030)  
--- ℹ **NOTE**: `player_default` class walk speed is: `160`.  
--- @param walkSpeed number @The new walk speed when `sv_friction` is below `10`
function GPlayer:SetWalkSpeed(walkSpeed)
end

--- Sets the player weapon's color. The part of the model that is colored is determined by the model itself, and is different for each model.  
--- @param Color GVector @This is the color to be set
function GPlayer:SetWeaponColor(Color)
end

--- Sets up the players view model hands. Calls GM:PlayerSetHandsModel to set the model of the hands.  
--- @param ent GEntity @If the player is spectating an entity, this should be the entity the player is spectating, so we can use its hands model instead.
function GPlayer:SetupHands(ent)
end

--- Returns whether the player's player model will be drawn at the time the function is called.  
--- @return boolean @`true` if the player's playermodel is visible
function GPlayer:ShouldDrawLocalPlayer()
end

--- Sets whether the player's current weapon should drop on death.  
--- ℹ **NOTE**: This is reset on spawn to the player class's **DropWeaponOnDie** field by player_manager.OnPlayerSpawn.  
--- @param drop boolean @Whether to drop the player's current weapon or not
function GPlayer:ShouldDropWeapon(drop)
end

--- Opens the player steam profile page in the steam overlay browser.  
function GPlayer:ShowProfile()
end

--- Signals the entity that it was dropped by the gravity gun.  
--- @param ent GEntity @Entity that was dropped.
function GPlayer:SimulateGravGunDrop(ent)
end

--- Signals the entity that it was picked up by the gravity gun. This call is only required if you want to simulate the situation of picking up objects.  
--- @param ent? GEntity @The entity picked up
--- @param lightning? boolean @Whether or not to show lightning effects around the entity
function GPlayer:SimulateGravGunPickup(ent, lightning)
end

--- Starts spectate mode for given player. This will also affect the players movetype in some cases.  
--- @param mode number @Spectate mode, see Enums/OBS_MODE.
function GPlayer:Spectate(mode)
end

--- Makes the player spectate the entity.  
--- To get the applied spectated entity, use Player:GetObserverTarget.  
--- @param entity GEntity @Entity to spectate.
function GPlayer:SpectateEntity(entity)
end

--- Makes a player spray their decal.  
--- @param sprayOrigin GVector @The location to spray from
--- @param sprayEndPos GVector @The location to spray to
function GPlayer:SprayDecal(sprayOrigin, sprayEndPos)
end

--- Disables the sprint on the player.  
function GPlayer:SprintDisable()
end

--- Enables the sprint on the player.  
function GPlayer:SprintEnable()
end

--- 🛑 **DEPRECATED**: This appears to be a direct binding to internal functionality that is overridden by the engine every frame so calling these functions may not have any or expected effect.  
--- Doesn't appear to do anything.  
function GPlayer:StartSprinting()
end

--- 🛑 **DEPRECATED**: This appears to be a direct binding to internal functionality that is overridden by the engine every frame so calling these functions may not have any or expected effect.  
--- When used in a GM:SetupMove hook, this function will force the player to walk, as well as preventing the player from sprinting.  
function GPlayer:StartWalking()
end

--- Returns the player's SteamID.  
--- See Player:AccountID for a shorter version of the SteamID and Player:SteamID64 for the full SteamID.  
--- It is recommended to use Player:SteamID64 over the other SteamID formats whenever possible.  
--- ℹ **NOTE**: In a `-multirun` environment, this will return `STEAM_0:0:0` (serverside) or `NULL` (clientside) for all "copies" of a player because they are not authenticated with Steam.  
--- For Bots this will return `BOT`.  
--- @return string @"Text" representation of the player's SteamID.
function GPlayer:SteamID()
end

--- Returns the player's full **64-bit SteamID**, also known as **CommunityID**. Information on how data is packed into this value can be found [here](https://developer.valvesoftware.com/wiki/SteamID).  
--- See Player:AccountID for a function that returns only the Account ID part of the SteamID and Player:SteamID for the text version of the SteamID.  
--- ℹ **NOTE**: In a `-multirun` environment, this will return `"0"` for all "copies" of a player because they are not authenticated with Steam.  
--- For bots, this will return `90071996842377216` (equivalent to `STEAM_0:0:0`) for the first bot to join.  
--- For each additional bot, the number increases by 1. So the next bot will be `90071996842377217` (`STEAM_0:1:0`) then `90071996842377218` (`STEAM_0:0:1`) and so on.  
--- @return string @Player's 64-bit SteamID aka CommunityID
function GPlayer:SteamID64()
end

--- 🛑 **DEPRECATED**: This appears to be a direct binding to internal functionality that is overridden by the engine every frame so calling these functions may not have any or expected effect.  
--- When used in a GM:SetupMove hook, this function will prevent the player from sprinting.  
--- When +walk is engaged, the player will still be able to sprint to half speed (normal run speed) as opposed to full sprint speed without this function.  
function GPlayer:StopSprinting()
end

--- 🛑 **DEPRECATED**: This appears to be a direct binding to internal functionality that is overridden by the engine every frame so calling these functions may not have any or expected effect.  
--- When used in a GM:SetupMove hook, this function behaves unexpectedly by preventing the player from sprinting similar to Player:StopSprinting.  
function GPlayer:StopWalking()
end

--- Turns off the zoom mode of the player. (+zoom console command)  
--- Basically equivalent of entering "-zoom" into player's console.  
function GPlayer:StopZooming()
end

--- 🛑 **DEPRECATED**: Alias of Player:RemoveAllAmmo  
--- Removes all ammo from the player.  
function GPlayer:StripAmmo()
end

--- Removes the specified weapon class from a certain player  
--- ℹ **NOTE**: this function will call the Entity:OnRemove but if you try use Entity:GetOwner it will return nil  
--- @param weapon string @The weapon class to remove
function GPlayer:StripWeapon(weapon)
end

--- Removes all weapons from a certain player  
function GPlayer:StripWeapons()
end

--- Prevents a hint from showing up.  
--- ℹ **NOTE**: This function is only available in Sandbox and its derivatives  
--- @param name string @Hint name/class/index to prevent from showing up
function GPlayer:SuppressHint(name)
end

--- Attempts to switch the player weapon to the one specified in the "cl_defaultweapon" convar, if the player does not own the specified weapon nothing will happen.  
--- If you want to switch to a specific weapon, use: Player:SetActiveWeapon  
function GPlayer:SwitchToDefaultWeapon()
end

--- Returns the player's team ID.  
--- Returns 0 clientside when the game is not fully loaded.  
--- @return number @The player's team's index number, as in the Enums/TEAM or a custom team defined in team.SetUp.
function GPlayer:Team()
end

--- Returns the time in seconds since the player connected.  
--- ℹ **NOTE**: Bots will always return value 0.  
--- @return number 
function GPlayer:TimeConnected()
end

--- Performs a trace hull and applies damage to the entities hit, returns the first entity hit.  
--- ⚠ **WARNING**: Hitting the victim entity with this function in ENTITY:OnTakeDamage can cause infinite loops.  
--- @param startPos GVector @The start position of the hull trace.
--- @param endPos GVector @The end position of the hull trace.
--- @param mins GVector @The minimum coordinates of the hull.
--- @param maxs GVector @The maximum coordinates of the hull.
--- @param damage number @The damage to be applied.
--- @param damageFlags number @Bitflag specifying the damage type, see Enums/DMG.
--- @param damageForce number @The force to be applied to the hit object.
--- @param damageAllNPCs boolean @Whether to apply damage to all hit NPCs or not.
--- @return GEntity @The hit entity
function GPlayer:TraceHullAttack(startPos, endPos, mins, maxs, damage, damageFlags, damageForce, damageAllNPCs)
end

--- Translates Enums/ACT according to the holdtype of players currently held weapon.  
--- @param act number @The initial Enums/ACT
--- @return number @Translated Enums/ACT
function GPlayer:TranslateWeaponActivity(act)
end

--- Unlocks the player movement if locked previously.  
--- Will disable godmode for the player if locked previously.  
function GPlayer:UnLock()
end

--- Stops the player from spectating another entity.  
function GPlayer:UnSpectate()
end

--- Unfreezes all objects the player has frozen with their Physics Gun. Same as double pressing R while holding Physics Gun.  
function GPlayer:UnfreezePhysicsObjects()
end

--- 🛑 **DEPRECATED**:   
--- **This function has collisions,** where more than one player can have the same UniqueID. It is **highly** recommended to use Player:SteamID64 or Player:SteamID instead, which are guaranteed to be unique to each player.  
--- Returns a 32 bit integer that remains constant for a player across joins/leaves and across different servers. This can be used when a string is inappropriate - e.g. in a database primary key.  
--- ℹ **NOTE**: In Singleplayer, this function will always return 1.  
--- @return number @The player's Unique ID
function GPlayer:UniqueID()
end

--- 🛑 **DEPRECATED**: This is based on Player:UniqueID which is deprecated and vulnerable to collisions.  
--- Returns a table that will stay allocated for the specific player serveside between connects until the server shuts down. On client it has no such special behavior.  
--- ℹ **NOTE**: This table is not synchronized (networked) between client and server.  
--- @param key any @Unique table key.
--- @return table @The table that contains any info you have put in it.
function GPlayer:UniqueIDTable(key)
end

--- Returns the player's ID.  
--- You can use Global.Player() to get the player by their ID.  
--- @return number @The player's user ID
function GPlayer:UserID()
end

--- Simulates a push on the client's screen. This **adds** view punch velocity, and does not touch the current view punch angle, for which you can use Player:SetViewPunchAngles.  
--- @param PunchAngle GAngle @The angle in which to push the player's screen.
function GPlayer:ViewPunch(PunchAngle)
end

--- Resets the player's view punch (and the view punch velocity, read more at Player:ViewPunch) effect back to normal.  
--- @param tolerance? number @Reset all ViewPunch below this threshold.
function GPlayer:ViewPunchReset(tolerance)
end

--- Returns the players voice volume, how loud the player's voice communication currently is, as a normal number. Doesn't work on local player unless the voice_loopback convar is set to 1.  
--- @return number @The voice volume.
function GPlayer:VoiceVolume()
end

