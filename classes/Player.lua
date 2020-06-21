--- @class GPlayer : GEntity
--- This is a list of all methods only available for players. It is also possible to call Entity functions on the Player.  
local GPlayer = {}
--- Returns the player's AccountID aka SteamID3.  
--- For bots this will return values starting with 0 for the first bot, 1 for the second bot and so on.  
--- In singleplayer, this will return no value.  
--- @return number @Player's SteamID3 aka AccountID.
function GPlayer:AccountID()
end

--- Adds an entity to the players clean up list.  
--- @param type string @Cleanup type
--- @param ent GEntity @Entity to add
function GPlayer:AddCleanup(type, ent)
end

--- Adds an entity to the total count of entities of same class.  
--- @param str string @Entity type
--- @param ent GEntity @Entity
function GPlayer:AddCount(str, ent)
end

--- Add a certain amount to the player's death count  
--- @param count number @number of deaths to add
function GPlayer:AddDeaths(count)
end

--- Add a certain amount to the player's frag count (or kills count)  
--- @param count number @number of frags to add
function GPlayer:AddFrags(count)
end

--- Adds a entity to the players list of frozen objects.  
--- @param ent GEntity @Entity
--- @param physobj GPhysObj @Physics object belonging to ent
function GPlayer:AddFrozenPhysicsObject(ent, physobj)
end

--- Sets up the voting system for the player.  
--- This is a really barebone system. By calling this a vote gets started, when the player presses 0-9 the callback function gets called along with the key the player pressed. Use the draw callback to draw the vote panel.  
--- @param name string @Name of the vote
--- @param timeout number @Time until the vote expires
--- @param vote_callback function @The function to be run when the player presses 0-9 while a vote is active.
--- @param draw_callback function @Used to draw the vote panel.
function GPlayer:AddPlayerOption(name, timeout, vote_callback, draw_callback)
end

--- Plays a sequence directly from a sequence number, similar to Player:AnimRestartGesture. This function has the advantage to play sequences that haven't been bound to an existing Enums/ACT  
--- @param slot number @Gesture slot using Enums/GESTURE_SLOT
--- @param sequenceId number @The sequence ID to play, can be retrieved with Entity:LookupSequence.
--- @param cycle number @The cycle to start the animation at, ranges from 0 to 1.
--- @param autokill boolean @If the animation should not loop
function GPlayer:AddVCDSequenceToGestureSlot(slot, sequenceId, cycle, autokill)
end

--- Checks if the player is alive.  
--- @return boolean @Whether the player is alive
function GPlayer:Alive()
end

--- Sets if the player can toggle his flashlight. Function exists on both the server and client but has no effect when ran on the client.  
--- @param canFlashlight boolean @True allows flashlight toggling
function GPlayer:AllowFlashlight(canFlashlight)
end

--- Lets the player spray his decal without delay  
--- @param allow boolean @Allow or disallow
function GPlayer:AllowImmediateDecalPainting(allow)
end

--- Resets player gesture in selected slot.  
--- @param slot number @Slot to reset
function GPlayer:AnimResetGestureSlot(slot)
end

--- Restart a gesture on a player, within a gesture slot.  
--- @param slot number @Gesture slot using Enums/GESTURE_SLOT
--- @param activity number @The activity ( see Enums/ACT ) or sequence that should be played
--- @param autokill boolean @Whether the animation should be automatically stopped
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
--- @param minutes number @Duration of the ban in minutes (0 is permanent)
--- @param kick boolean @Whether to kick the player after banning them or not
function GPlayer:Ban(minutes, kick)
end

--- Returns true if the player's flashlight hasn't been disabled by Player:AllowFlashlight.  
--- @return boolean @Whether the player can use flashlight.
function GPlayer:CanUseFlashlight()
end

--- Prints a string to the chatbox of the client.  
--- @param message string @String to be printed
function GPlayer:ChatPrint(message)
end

--- Checks if the limit is hit or not. If it is, it will throw a notification saying so.  
--- @param limitType string @Limit type
--- @return boolean @Returns true if limit is not hit, false if it is hit
function GPlayer:CheckLimit(limitType)
end

--- Runs the concommand on the player. This does not work on bots.  
--- If you wish to directly modify the movement input of bots, use GM:StartCommand instead.  
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

--- Returns whether the player is crouching or not. (FL_DUCKING flag)  
--- @return boolean @Whether the player is crouching
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
--- @param draw boolean @Should draw
--- @param vm number @Which view model to show/hide, 0-2.
function GPlayer:DrawViewModel(draw, vm)
end

--- Show/Hide the player's weapon's worldmodel.  
--- @param draw boolean @Should draw
function GPlayer:DrawWorldModel(draw)
end

--- Drops the players' weapon of a specific class.  
--- @param class string @The class to drop.
--- @param target GVector @If set, launches the weapon at given position
--- @param velocity GVector @If set and previous argument is unset, launches the weapon with given velocity
function GPlayer:DropNamedWeapon(class, target, velocity)
end

--- Drops any object the player is currently holding with either gravitygun or +Use (E key)  
function GPlayer:DropObject()
end

--- Forces the player to drop the specified weapon  
--- @param weapon GWeapon @Weapon to be dropped
--- @param target GVector @If set, launches the weapon at given position
--- @param velocity GVector @If set and previous argument is unset, launches the weapon with given velocity
function GPlayer:DropWeapon(weapon, target, velocity)
end

--- Enters the player into specified vehicle  
--- @param vehicle GVehicle @Vehicle the player will enter
function GPlayer:EnterVehicle(vehicle)
end

--- Equips the player with the HEV suit.  
--- Allows the player to zoom, walk slowly, sprint, pickup armor batteries, use the health and armor stations and also shows the HUD.  
--- The player also emits a flatline sound on death, which can be overridden with GM:PlayerDeathSound.  
--- The player is automatically equipped with the suit on spawn, if you wish to stop that, use Player:RemoveSuit.  
function GPlayer:EquipSuit()
end

--- Makes the player exit the vehicle if they're in one.  
function GPlayer:ExitVehicle()
end

--- Enables/Disables the player's flashlight  
--- @param isOn boolean @Turns the flashlight on/off
function GPlayer:Flashlight(isOn)
end

--- Returns true if the player's flashlight is on.  
--- @return boolean @Whether the player's flashlight is on.
function GPlayer:FlashlightIsOn()
end

--- Returns the amount of kills a player has.  
--- @return number @kills
function GPlayer:Frags()
end

--- Freeze the player. Frozen players cannot move, look around, or attack. Key bindings are still called. Similar to Player:Lock but the player can still take damage.  
--- Adds or removes the FL_FROZEN flag from the player.  
--- <bug>Frozen bots will still be able to look around.</bug>  
--- @param frozen boolean @Whether the player should be frozen.
function GPlayer:Freeze(frozen)
end

--- Returns the player's active weapon.  
--- If used on a Global.LocalPlayer() and the player is spectating another player with `OBS_MODE_IN_EYE`, the weapon returned will be of the spectated player.  
--- @return GWeapon @The weapon the player is currently has equipped.
function GPlayer:GetActiveWeapon()
end

--- Returns the direction that the player is aiming.  
--- @return GVector @The direction vector of players aim
function GPlayer:GetAimVector()
end

--- Returns true if the players' model is allowed to rotate around the pitch and roll axis.  
--- @return boolean @Allowed
function GPlayer:GetAllowFullRotation()
end

--- Returns whether the player is allowed to use his weapons in a vehicle or not.  
--- @return boolean @Whether the player is allowed to use his weapons in a vehicle or not.
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

--- Gets total count of entities of same class.  
--- @param type string @Entity type to get count of.
--- @param minus number @If specified, it will reduce the counter by this value
function GPlayer:GetCount(type, minus)
end

--- Returns the crouched walk speed multiplier.  
--- See also Player:GetWalkSpeed and Player:SetCrouchedWalkSpeed.  
--- @return number @The crouched walk speed multiplier.
function GPlayer:GetCrouchedWalkSpeed()
end

--- Returns the last command which was sent by the specified player. This can only be called on the player which Global.GetPredictionPlayer() returns.  
--- * **BUG**: [This will fail in GM:StartCommand.](https://github.com/Facepunch/garrysmod-issues/issues/3302)  
--- @return GCUserCmd @Last user commands
function GPlayer:GetCurrentCommand()
end

--- Gets the **actual** view offset which equals the difference between the players actual position and their view when standing.  
--- Do not confuse with Player:GetViewOffset and Player:GetViewOffsetDucked  
--- @return GVector @The actual view offset.
function GPlayer:GetCurrentViewOffset()
end

--- Gets the entity the player is currently driving.  
--- @return GEntity @DriveEntity
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
--- The results of this function are cached every frame.  
--- See also Player:GetEyeTraceNoCursor  
--- @return table @Trace information, see Structures/TraceResult
function GPlayer:GetEyeTrace()
end

--- Returns the trace according to the players view direction, ignoring their mouse ( Holding C and moving the mouse in Sandbox ).  
--- The results of this function are cached every frame.  
--- See also Player:GetEyeTrace  
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

--- Returns the widget the player is hovering with his mouse.  
--- @return GEntity @The hovered widget.
function GPlayer:GetHoveredWidget()
end

--- Gets the bottom base and the top base size of the player's hull.  
--- @return GVector, GVector
function GPlayer:GetHull()
end

--- Gets the bottom base and the top base size of the player's crouch hull.  
--- @return GVector, GVector
function GPlayer:GetHullDuck()
end

--- Retrieves the value of a client-side ConVar. The ConVar must have a FCVAR_USERINFO flag for this to work.  
--- @param cVarName string @The name of the client-side ConVar
--- @return string @The value of the ConVar
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
--- @return number @The timescale multiplier, defaults to 1.
function GPlayer:GetLaggedMovementValue()
end

--- Returns the player's maximum movement speed.  
--- See also Player:SetMaxSpeed, Player:GetWalkSpeed and Player:GetRunSpeed.  
--- @return number @The maximum movement speed the player can go at.
function GPlayer:GetMaxSpeed()
end

--- Returns the player's name, this is an alias of Player:Nick.  
--- @return string @The player's name
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

--- Returns a **P**layer **Data** key-value pair from the SQL database. (sv.db when called on server,  cl.db when called on client)  
--- Internally uses the sql.  
--- @param key string @Name of the PData key
--- @param default any @Default value if PData key doesn't exist.
--- @return string @The data in the SQL database or the default value given.
function GPlayer:GetPData(key, default)
end

--- Returns a player model's color. The part of the model that is colored is determined by the model itself, and is different for each model. The format is Vector(r,g,b), and each color should be between 0 and 1.  
--- @return GVector @color
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
--- Having a pressed widget stops the player from firing his weapon to allow input to be passed onto the widget.  
--- @return GEntity @The pressed widget.
function GPlayer:GetPressedWidget()
end

--- Returns the weapon the player previously had equipped.  
--- @return GEntity @The previous weapon of the player
function GPlayer:GetPreviousWeapon()
end

--- <deprecated>You should use Player:GetViewPunchAngles instead.</deprecated>  
--- Returns players screen punch effect angle.  
--- @return GAngle @The punch angle
function GPlayer:GetPunchAngle()
end

--- Returns players death ragdoll. The ragdoll is created by Player:CreateRagdoll.  
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
--- @return GVector @aim pos
function GPlayer:GetShootPos()
end

--- Returns the player's slow walking speed, which is activated via `+walk` keybind.  
--- See Player:GetWalkSpeed for normal walking speed, Player:GetRunSpeed for sprinting speed and Player:GetLadderClimbSpeed for ladder climb speed.  
--- @return number @The new slow walking speed.
function GPlayer:GetSlowWalkSpeed()
end

--- Returns the maximum height player can step onto.  
--- @return number @The maximum height player can get up onto without jumping, in hammer units.
function GPlayer:GetStepSize()
end

--- Returns the player's HEV suit power.  
--- * **BUG**: [This will only work for the local player when used clientside.](https://github.com/Facepunch/garrysmod-issues/issues/3449)  
--- @return number @The current suit power.
function GPlayer:GetSuitPower()
end

--- Returns the number of seconds that the player has been timing out for. You can check if a player is timing out with Player:IsTimingOut.  
--- @return number @Timeout seconds.
function GPlayer:GetTimeoutSeconds()
end

--- Returns TOOL table of players current tool, or of the one specified.  
--- @param mode string @Classname of the tool to retrieve
--- @return table @TOOL table, or nil if the table wasn't found or the player doesn't have a tool gun.
function GPlayer:GetTool(mode)
end

--- Returns a player's unduck speed (in seconds)  
--- @return number @unduck speed
function GPlayer:GetUnDuckSpeed()
end

--- Returns the player's user group.  
--- @return string @The user group of the player
function GPlayer:GetUserGroup()
end

--- Gets the vehicle the player is driving, returns NULL ENTITY if the player is not driving.  
--- @return GVehicle @vehicle
function GPlayer:GetVehicle()
end

--- Returns the entity the player is using to see from (such as the player itself, the camera, or another entity).  
--- @return GEntity @The entity the player is using to see from
function GPlayer:GetViewEntity()
end

--- Returns the player's view model entity by the index.  
--- Each player has 3 view models by default, but only the first one is used.  
--- To use the other viewmodels in your SWEP, see Entity:SetWeaponModel.  
--- @param index number @optional index of the view model to return, can range from 0 to 2
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

--- Returns the player's normal walking speed. Not sprinting, not slow walking. (+walk)  
--- See also Player:SetWalkSpeed, Player:GetMaxSpeed and Player:GetRunSpeed.  
--- @return number @The normal walking speed.
function GPlayer:GetWalkSpeed()
end

--- Returns the weapon for the specified class  
--- @param className string @Class name of weapon
--- @return GWeapon @The weapon for the specified class.
function GPlayer:GetWeapon(className)
end

--- Returns a player's weapon color. The part of the model that is colored is determined by the model itself, and is different for each model. The format is Vector(r,g,b), and each color should be between 0 and 1.  
--- @return GVector @color
function GPlayer:GetWeaponColor()
end

--- Returns a table of the player's weapons.  
--- @return table @All the weapons the player currently has.
function GPlayer:GetWeapons()
end

--- Gives the player a weapon.  
--- @param weaponClassName string @Class name of weapon to give the player
--- @param bNoAmmo boolean @Set to true to not give any ammo on weapon spawn
--- @return GWeapon @The weapon given to the player, if one was given
function GPlayer:Give(weaponClassName, bNoAmmo)
end

--- Gives ammo to a player  
--- @param amount number @Amount of ammo
--- @param type string @Type of ammo
--- @param hidePopup boolean @Hide display popup when giving the ammo
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
--- * **BUG**: [This is not synced between the client and server. This will cause the client to always return false even in godmode.](https://github.com/Facepunch/garrysmod-issues/issues/2038)  
--- @return boolean @Whether the player has god mode or not.
function GPlayer:HasGodMode()
end

--- Returns if the player has the specified weapon  
--- @param className string @Class name of the weapon
--- @return boolean @True if the player has the weapon
function GPlayer:HasWeapon(className)
end

--- Returns the player's IP address and connection port in ip:port form  
--- @return string @The player's IP address and connection port
function GPlayer:IPAddress()
end

--- Returns if the player is in a vehicle  
--- @return boolean @Whether the player is in a vehicle.
function GPlayer:InVehicle()
end

--- Returns whether the player is an admin or not  
--- @return boolean @True if the player is an admin
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

--- Returns whether the players movement is currently frozen, contolled by Player:Freeze.  
--- @return boolean @Whether the players movement is currently frozen or not.
function GPlayer:IsFrozen()
end

--- Returns whether the player identity was confirmed by the steam network.  
--- @return boolean @Whether the player has been fully authenticated or not
function GPlayer:IsFullyAuthenticated()
end

--- Returns if a player is the host of the current session.  
--- @return boolean @True if the player is the listen server host, false otherwise
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

--- Returns whenever the player is heard by the local player.  
--- @return boolean @isSpeaking
function GPlayer:IsSpeaking()
end

--- Returns whether the player is currently sprinting or not.  
--- @return boolean @Is the player sprinting or not
function GPlayer:IsSprinting()
end

--- Returns whenever the player is equipped with the suit item.  
--- * **BUG**: [This will only work for the local player when used clientside.](https://github.com/Facepunch/garrysmod-issues/issues/3449)  
--- @return boolean @Is the suit equipped or not.
function GPlayer:IsSuitEquipped()
end

--- Returns whether the player is a superadmin.  
--- @return boolean @True if the player is a superadmin.
function GPlayer:IsSuperAdmin()
end

--- Returns true if the player is timing out (i.e. is losing connection), false otherwise.  
--- @return boolean @isTimingOut
function GPlayer:IsTimingOut()
end

--- Returns whether the player is typing in their chat.  
--- This may not work properly if the server uses a custom chatbox.  
--- @return boolean @Whether the player is typing in their chat or not.
function GPlayer:IsTyping()
end

--- Returns true/false if the player is in specified group or not.  
--- @param groupname string @Group to check the player for.
--- @return boolean @isInUserGroup
function GPlayer:IsUserGroup(groupname)
end

--- Returns if the player can be heard by the local player.  
--- @return boolean @isAudible
function GPlayer:IsVoiceAudible()
end

--- Returns if the player is in the context menu.  
--- @return boolean @Is the player world clicking or not.
function GPlayer:IsWorldClicking()
end

--- Gets whether a key is down. This is not networked to other players, meaning only the local client can see the keys they are pressing.  
--- @param key number @The key, see Enums/IN
--- @return boolean @isDown
function GPlayer:KeyDown(key)
end

--- Gets whether a key was down one tick ago.  
--- @param key number @The key, see Enums/IN
--- @return boolean @Is key down
function GPlayer:KeyDownLast(key)
end

--- Gets whether a key was just pressed this tick  
--- @param key number @Corresponds to an Enums/IN
--- @return boolean @Was pressed or not
function GPlayer:KeyPressed(key)
end

--- Gets whether a key was just released this tick  
--- @param key number @The key, see Enums/IN
--- @return boolean @Was released or not
function GPlayer:KeyReleased(key)
end

--- Kicks the player from the server.  
--- @param reason string @Reason to show for disconnection
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
--- Lag compensation only works for players and entities that have been enabled with Entity:SetLagCompensated  
--- Despite being defined shared, it can only be used server-side in a Predicted Hook.  
--- * **BUG**: [Lag compensation does not support pose parameters.](https://github.com/Facepunch/garrysmod-issues/issues/3683)  
--- @param lagCompensation boolean @The state of the lag compensation, true to enable and false to disable.
function GPlayer:LagCompensation(lagCompensation)
end

--- Returns the hitgroup where the player was last hit.  
--- @return number @Hitgroup, see Enums/HITGROUP
function GPlayer:LastHitGroup()
end

--- Shows "limit hit" notification in sandbox.  
--- @param type string @Type of hit limit
function GPlayer:LimitHit(type)
end

--- Stops a player from using any inputs, such as moving, turning, or attacking. Key binds are still called. Similar to Player:Freeze but the player takes no damage.  
--- Adds the FL_FROZEN and FL_GODMODE flags to the player.  
--- <bug>Frozen bots will still be able to look around.</bug>  
function GPlayer:Lock()
end

--- Returns the position of a Kinect bone.  
--- @param bone number @Bone to get the position of
--- @return GVector @Position of the bone.
function GPlayer:MotionSensorPos(bone)
end

--- Returns the players name. Identical to Player:Nick and Player:GetName.  
--- @return string @Player's Steam name
function GPlayer:Name()
end

--- Returns the player's nickname.  
--- @return string @Player's Steam name
function GPlayer:Nick()
end

--- Returns the packet loss of the client. It is not networked so it only returns 0 when run clientside.  
--- @return number @Packets lost
function GPlayer:PacketLoss()
end

--- Unfreezes the props player is looking at. This is essentially the same as pressing reload with the physics gun, including double press for unfreeze all.  
--- @return number @Number of props unfrozen.
function GPlayer:PhysgunUnfreeze()
end

--- This makes the player hold ( same as pressing `E` on a small prop ) the provided entity.  
--- @param entity GEntity @Entity to pick up.
function GPlayer:PickupObject(entity)
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
--- @param type number @Which type of message should be sent to the player (Enums/HUD)
--- @param message string @Message to be sent to the player
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

--- Removes a **P**layer **Data** key-value pair from the SQL database. (sv.db when called on server,  cl.db when called on client)  
--- Internally uses the sql.  
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
--- @param text string @The text to force the player to say.
--- @param teamOnly boolean @Whether to send this message to our own team only.
function GPlayer:Say(text, teamOnly)
end

--- Fades the screen  
--- @param flags number @Fade flags defined with Enums/SCREENFADE.
--- @param clr number @The color of the screenfade
--- @param fadeTime number @Fade(in/out) effect transition time ( From no fade to full fade and vice versa )
--- @param fadeHold number @Fade effect hold time
function GPlayer:ScreenFade(flags, clr, fadeTime, fadeHold)
end

--- Sets the active weapon of the player by its class name.  
--- @param className string @The class name of the weapon to switch to
function GPlayer:SelectWeapon(className)
end

--- Sends a hint to a player.  
--- @param name string @Name/class/index of the hint
--- @param delay number @Delay in seconds before showing the hint
function GPlayer:SendHint(name, delay)
end

--- Executes a simple Lua string on the player.  
--- @param script string @The script to execute.
function GPlayer:SendLua(script)
end

--- Sets the player's active weapon. You should use CUserCmd:SelectWeapon or Player:SelectWeapon, instead in most cases.  
--- @param weapon GWeapon @The weapon to equip.
function GPlayer:SetActiveWeapon(weapon)
end

--- Set if the players' model is allowed to rotate around the pitch and roll axis.  
--- @param Allowed boolean @Allowed to rotate
function GPlayer:SetAllowFullRotation(Allowed)
end

--- Allows player to use his weapons in a vehicle. You need to call this before entering a vehicle.  
--- * **BUG**: [Shooting in a vehicle fires two bullets.](https://github.com/Facepunch/garrysmod-issues/issues/1277)  
--- * **BUG**: [Weapon viewpunch does not decay while in a vehicle, leading to incorrect aim angles.](https://github.com/Facepunch/garrysmod-issues/issues/3261)  
--- @param allow boolean @Show we allow player to use his weapons in a vehicle or not.
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

--- Pushes the player away from another player whenever it's inside the other players bounding box.  
--- @param avoidPlayers boolean @Avoid or not avoid.
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

--- Applies the specified sound filter to the player.  
--- @param soundFilter number @The index of the sound filter to apply
--- @param fastReset boolean @If set to true the sound filter will be removed faster.
function GPlayer:SetDSP(soundFilter, fastReset)
end

--- Sets a player's death count  
--- @param deathcount number @Number of deaths (positive or negative)
function GPlayer:SetDeaths(deathcount)
end

--- Sets how quickly a player ducks.  
--- * **BUG**: [This will not work for values >= 1.](https://github.com/Facepunch/garrysmod-issues/issues/2722)  
--- @param duckSpeed number @How quickly the player will duck.
function GPlayer:SetDuckSpeed(duckSpeed)
end

--- Sets the angle of the player's view (may rotate body too if angular difference is large)  
--- @param angle GAngle @Angle to set the view to
function GPlayer:SetEyeAngles(angle)
end

--- Set a player's FOV (Field Of View) over a certain amount of time.  
--- @param fov number @the angle of perception (FOV)
--- @param time number @the time it takes to transition to the FOV expressed in a floating point.
--- @param requester GEntity @The requester or "owner" of the zoom event.
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
--- @param widget GEntity @The widget entity that the player is hovering.
function GPlayer:SetHoveredWidget(widget)
end

--- Sets the mins and maxs of the AABB of the players collision.  
--- * **BUG**: [Setting both the mins and maxs to Global.Vector(0,0,0) will crash the game.](https://github.com/Facepunch/garrysmod-issues/issues/3365)  
--- @param hullMins GVector @The min coordinates of the hull.
--- @param hullMaxs GVector @The max coordinates of the hull.
function GPlayer:SetHull(hullMins, hullMaxs)
end

--- Sets the mins and maxs of the AABB of the players collision when ducked.  
--- @param hullMins GVector @The min coordinates of the hull.
--- @param hullMaxs GVector @The max coordinates of the hull.
function GPlayer:SetHullDuck(hullMins, hullMaxs)
end

--- Sets the jump power, eg. the velocity the player will applied to when he jumps.  
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
--- @param timescale number @The timescale multiplier.
function GPlayer:SetLaggedMovementValue(timescale)
end

--- Sets the hitgroup where the player was last hit.  
--- @param hitgroup number @The hitgroup to set as the "last hit", see Enums/HITGROUP
function GPlayer:SetLastHitGroup(hitgroup)
end

--- Sets the maximum speed which the player can move at.  
--- @param walkSpeed number @The maximum speed.
function GPlayer:SetMaxSpeed(walkSpeed)
end

--- Sets if the player should be muted locally.  
--- @param mute boolean @Mute or unmute.
function GPlayer:SetMuted(mute)
end

--- Sets whenever the player should not collide with their teammates.  
--- * **BUG**: [This only works with Player:Team IDs 1-4. This also has major collision issues.](https://github.com/Facepunch/garrysmod-issues/issues/2757)  
--- @param shouldNotCollide boolean @True to disable, false to enable collision.
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

--- Writes a **P**layer **Data** key-value pair to the SQL database. (sv.db when called on server,  cl.db when called on client)  
--- Internally uses the sql.  
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
--- Having a pressed widget stops the player from firing his weapon to allow input to be passed onto the widget.  
--- @param pressedWidget GEntity @The widget the player is currently using.
function GPlayer:SetPressedWidget(pressedWidget)
end

--- Sets the render angles of a player.  
--- @param ang GAngle @The new render angles to set
function GPlayer:SetRenderAngles(ang)
end

--- Sets the player's sprint speed.  
--- See also Player:GetRunSpeed, Player:SetWalkSpeed and Player:SetMaxSpeed.  
--- @param runSpeed number @The new sprint speed when sv_friction is below 10
function GPlayer:SetRunSpeed(runSpeed)
end

--- Sets the player's slow walking speed, which is activated via `+walk` keybind.  
--- See Player:SetWalkSpeed for normal walking speed, Player:SetRunSpeed for sprinting speed and Player:SetLadderClimbSpeed for ladder climb speed.  
--- @param speed number @The new slow walking speed.
function GPlayer:SetSlowWalkSpeed(speed)
end

--- Sets the maximum height a player can step onto without jumping.  
--- @param stepHeight number @The new maximum height the player can step onto without jumping
function GPlayer:SetStepSize(stepHeight)
end

--- Sets the player's HEV suit power.  
--- * **BUG**: [This will only work for the local player when used clientside.](https://github.com/Facepunch/garrysmod-issues/issues/3449)  
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

--- Sets client's view punch. See Player:ViewPunch  
--- @param punchAngle GAngle @The angle to set.
function GPlayer:SetViewPunchAngles(punchAngle)
end

--- Sets the player's normal walking speed. Not sprinting, not slow walking `+walk`.  
--- There currently is no way to modify the slow walking `+walk` speed.  
--- See also Player:GetWalkSpeed, Player:SetCrouchedWalkSpeed, Player:SetMaxSpeed and Player:SetRunSpeed.  
--- * **BUG**: [Using a speed of 0 can lead to prediction errors.](https://github.com/Facepunch/garrysmod-issues/issues/2030)  
--- @param walkSpeed number @The new walk speed when sv_friction is below 10
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

--- Polls the engine to request if the player should be drawn at the time the function is called.  
--- @return boolean @shouldDraw
function GPlayer:ShouldDrawLocalPlayer()
end

--- Sets whether the player's current weapon should drop on death.  
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
--- @param ent GEntity @The entity picked up
function GPlayer:SimulateGravGunPickup(ent)
end

--- Starts spectate mode for given player. This will also affect the players movetype in some cases.  
--- @param mode number @Spectate mode, see Enums/OBS_MODE.
function GPlayer:Spectate(mode)
end

--- Makes the player spectate the entity  
--- To get the applied spectated entity, use Player:GetObserverTarget().  
--- * **BUG**: [The player's position will not update while spectating, causing area portals and other map optimisations to not work properly. You can fix this by setting the player's position to the spectated entity's each tick.](https://github.com/Facepunch/garrysmod-issues/issues/3267)  
--- @param entity GEntity @Entity to spectate.
function GPlayer:SpectateEntity(entity)
end

--- Makes a player spray their decal.  
--- @param sprayOrigin GVector @The location to spray from
--- @param sprayEndPos GVector @The location to spray to
function GPlayer:SprayDecal(sprayOrigin, sprayEndPos)
end

--- Disables the sprint on the player.  
--- * **BUG**: [Not working - use Player:SetRunSpeed or CMoveData:SetMaxSpeed in a GM:Move hook, instead.](https://github.com/Facepunch/garrysmod-issues/issues/2390)  
function GPlayer:SprintDisable()
end

--- Enables the sprint on the player.  
--- * **BUG**: [Not working - use Player:SetRunSpeed or CMoveData:SetMaxSpeed in a GM:Move hook, instead.](https://github.com/Facepunch/garrysmod-issues/issues/2390)  
function GPlayer:SprintEnable()
end

--- <deprecated>This appears to be a direct binding to internal functionality that is overridden by the engine every frame so calling these functions may not have any or expected effect.</deprecated>  
--- Doesn't appear to do anything.  
function GPlayer:StartSprinting()
end

--- <deprecated>This appears to be a direct binding to internal functionality that is overridden by the engine every frame so calling these functions may not have any or expected effect.</deprecated>  
--- When used in a GM:SetupMove hook, this function will force the player to walk, as well as preventing the player from sprinting.  
function GPlayer:StartWalking()
end

--- Returns the player's SteamID. In singleplayer, this will be STEAM_ID_PENDING serverside.  
--- For Bots this will return "BOT" on the server and on the client it returns "NULL".  
--- Use Player:AccountID for a shorter version of the SteamID.  
--- @return string @SteamID
function GPlayer:SteamID()
end

--- Returns the player's 64-bit SteamID aka CommunityID.  
--- <note>For bots, this will return 90071996842377216 (equivalent to STEAM_0:0:0) for the first bot to join.  
--- For each additional bot, the number increases by 1. So the next bot will be 90071996842377217 (STEAM_0:1:0) then 90071996842377218 (STEAM_0:0:1) and so on.</note>  
--- Use Player:AccountID for a shorter version of the SteamID.  
--- @return string @Player's 64bit SteamID aka CommunityID.
function GPlayer:SteamID64()
end

--- <deprecated>This appears to be a direct binding to internal functionality that is overridden by the engine every frame so calling these functions may not have any or expected effect.</deprecated>  
--- When used in a GM:SetupMove hook, this function will prevent the player from sprinting.  
--- When +walk is engaged, the player will still be able to sprint to half speed (normal run speed) as opposed to full sprint speed without this function.  
function GPlayer:StopSprinting()
end

--- <deprecated>This appears to be a direct binding to internal functionality that is overridden by the engine every frame so calling these functions may not have any or expected effect.</deprecated>  
--- When used in a GM:SetupMove hook, this function behaves unexpectedly by preventing the player from sprinting similar to Player:StopSprinting.  
function GPlayer:StopWalking()
end

--- Turns off the zoom mode of the player. (+zoom console command)  
--- Basically equivalent of entering "-zoom" into player's console.  
function GPlayer:StopZooming()
end

--- Removes all ammo from the player.  
function GPlayer:StripAmmo()
end

--- Removes the specified weapon class from a certain player  
--- @param weapon string @The weapon class to remove
function GPlayer:StripWeapon(weapon)
end

--- Removes all weapons from a certain player  
function GPlayer:StripWeapons()
end

--- Prevents a hint from showing up.  
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
--- @return number 
function GPlayer:TimeConnected()
end

--- Performs a trace hull and applies damage to the entities hit, returns the first entity hit.  
--- @param startPos GVector @The start position of the hull trace.
--- @param endPos GVector @The end position of the hull trace.
--- @param mins GVector @The minimum coordinates of the hull.
--- @param maxs GVector @The maximum coordinates of the hull.
--- @param damage number @The damage to be applied.
--- @param damageFlags GVector @Bitflag specifying the damage type, see Enums/DMG.
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

--- Returns a 32 bit integer that remains constant for a player across joins/leaves and across different servers. This can be used when a string is inappropriate - e.g. in a database primary key.  
--- @return number @The player's Unique ID
function GPlayer:UniqueID()
end

--- Returns a table that will stay allocated for the specific player between connects until the server shuts down. Note, that this table is not synchronized between client and server.  
--- @param key any @Unique table key.
--- @return table @The table that contains any info you have put in it.
function GPlayer:UniqueIDTable(key)
end

--- Returns the player's ID.  
--- You can use Global.Player() to get the player by their ID.  
--- @return number @The player's user ID
function GPlayer:UserID()
end

--- Simulates a push on the client's screen.  
--- @param PunchAngle GAngle @The angle in which to push the player's screen.
function GPlayer:ViewPunch(PunchAngle)
end

--- Resets the player's view punch ( Player:ViewPunch ) effect back to normal.  
--- @param tolerance number @Reset all ViewPunch below this threshold.
function GPlayer:ViewPunchReset(tolerance)
end

--- Returns the players voice volume, how loud the player's voice communication currently is, as a normal number. Doesn't work on local player unless the voice_loopback convar is set to 1.  
--- @return number @The voice volume.
function GPlayer:VoiceVolume()
end

