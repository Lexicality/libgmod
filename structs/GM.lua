--- @meta

--- Information about a gamemode.  
--- While some of the fields may be serverside or clientside only, it is recommended to provide them on both so addons could use their values.  
--- @class SGM
--- @field Name string @The fancy name of your gamemode.
--- @field Author string @The name/contact info of the gamemode author.
--- @field Email string @The contact email associated with the gamemode.
--- @field Website string @The website associated with the gamemode.
--- @field FolderName string @The name of the gamemode folder, automatically set.
--- @field Folder string @The name of the gamemode folder prepended with "gamemodes/" (such as "gamemodes/sandbox"), automatically set.
--- @field TeamBased boolean @Set this to true if your gamemode is team-based
--- @field ThisClass string @The name of the gamemode folder prepended with "gamemode_" (such as "gamemode_sandbox"), automatically set.
--- @field BaseClass table @The table of the base gamemode to derive from, set automatically by Global.DeriveGamemode
--- @field IsSandboxDerived boolean @Whether the gamemode is Sandbox, or derived from Sandbox
_G.GM = {}

--- Called when a map I/O event occurs.  
--- See also Entity:Fire and Entity:Input for functions to fire Inputs on entities.  
--- @param ent GEntity @Entity that receives the input
--- @param input string @The input name
--- @param activator GEntity @Activator of the input
--- @param caller GEntity @Caller of the input
--- @param value any @Data provided with the input
--- @return boolean @Return true to prevent this input from being processed
function GM:AcceptInput(ent, input, activator, caller, value)
end

--- Adds a death notice entry.  
--- @param attacker string @The name of the attacker
--- @param attackerTeam number @The team of the attacker
--- @param inflictor string @Class name of the entity inflicting the damage
--- @param victim string @Name of the victim
--- @param victimTeam number @Team of the victim
function GM:AddDeathNotice(attacker, attackerTeam, inflictor, victim, victimTeam)
end

--- Allows you to adjust the mouse sensitivity.  
--- @param defaultSensitivity number @The old sensitivity
--- @param localFOV number @Player's current FOV.
--- @param defaultFOV number @Default FOV.
--- @return number @A fraction of the normal sensitivity (0.5 would be half as sensitive)
function GM:AdjustMouseSensitivity(defaultSensitivity, localFOV, defaultFOV)
end

--- Called when a player tries to pick up something using the "use" key, return to override.  
--- This hook will not be called if `sv_playerpickupallowed` is set to 0.  
--- See GM:GravGunPickupAllowed for the Gravity Gun pickup variant.  
--- See GM:PhysgunPickup for the Physics Gun pickup variant.  
--- @param ply GPlayer @The player trying to pick up something.
--- @param ent GEntity @The Entity the player attempted to pick up.
--- @return boolean @Allow the player to pick up the entity or not.
function GM:AllowPlayerPickup(ply, ent)
end

--- This hook is used to calculate animations for a player.  
--- ⚠ **WARNING**: This hook must return the same values at the same time on both, client **and** server. On client for players to see the animations, on server for hit detection to work properly.  
--- @param ply GPlayer @The player to apply the animation.
--- @param vel GVector @The velocity of the player.
--- @return number @Enums/ACT for the activity the player should use
--- @return number @Sequence for the player to use
function GM:CalcMainActivity(ply, vel)
end

--- Called from GM:CalcView when player is in driving a vehicle.  
--- This hook may not be called in gamemodes that override GM:CalcView.  
--- @param veh GVehicle @The vehicle the player is driving
--- @param ply GPlayer @The vehicle driver
--- @param view table @The view data containing players FOV, view position and angles, see Structures/CamData
--- @return table @The modified view table containing new values, see Structures/CamData
function GM:CalcVehicleView(veh, ply, view)
end

--- Allows override of the default view.  
--- @param ply GPlayer @The local player.
--- @param origin GVector @The player's view position.
--- @param angles GAngle @The player's view angles.
--- @param fov number @Field of view.
--- @param znear number @Distance to near clipping plane.
--- @param zfar number @Distance to far clipping plane.
--- @return table @View data table
function GM:CalcView(ply, origin, angles, fov, znear, zfar)
end

--- Allows overriding the position and angle of the viewmodel.  
--- @param wep GWeapon @The weapon entity
--- @param vm GEntity @The viewmodel entity
--- @param oldPos GVector @Original position (before viewmodel bobbing and swaying)
--- @param oldAng GAngle @Original angle (before viewmodel bobbing and swaying)
--- @param pos GVector @Current position
--- @param ang GAngle @Current angle
--- @return GVector @New position
--- @return GAngle @New angle
function GM:CalcViewModelView(wep, vm, oldPos, oldAng, pos, ang)
end

--- Called whenever a players tries to create an undo.  
--- @param ply GPlayer @The player who tried to create something.
--- @param undo table @The undo table as a Structures/Undo.
--- @return boolean @Return false to disallow creation of the undo.
function GM:CanCreateUndo(ply, undo)
end

--- Called when a variable is about to be edited on an Entity (called by `Edit Properties...` menu), to determine if the edit should be permitted.  
--- See Editable entities for more details about the system.  
--- By default, Sandbox will also call ENTITY:CanEditVariables if no hook returns a value.  
--- @param ent GEntity @The entity being edited.
--- @param ply GPlayer @The player doing the editing.
--- @param key string @The name of the variable.
--- @param value string @The new value, as a string which will later be converted to its appropriate type.
--- @param editor table @The edit table defined in Entity:NetworkVar.
--- @return boolean @Return `false` to disallow editing.
function GM:CanEditVariable(ent, ply, key, value, editor)
end

--- Determines if the player can exit the vehicle on their own. Player:ExitVehicle will bypass this hook.  
--- See GM:CanPlayerEnterVehicle for the opposite hook.  
--- See also GM:PlayerLeaveVehicle for a hook that will be called whenever a player exits any vehicle for any reason.  
--- @param veh GVehicle @The vehicle entity
--- @param ply GPlayer @The player
--- @return boolean @True if the player can exit the vehicle.
function GM:CanExitVehicle(veh, ply)
end

--- Determines whether or not a given player player can enter the given vehicle. Player:EnterVehicle will still call this hook.  
--- Called just before GM:PlayerEnteredVehicle. See also GM:CanExitVehicle.  
--- @param player GPlayer @The player that wants to enter a vehicle.
--- @param vehicle GVehicle @The vehicle in question.
--- @param role number @The seat number.
--- @return boolean @`false` if the player is not allowed to enter the vehicle.
function GM:CanPlayerEnterVehicle(player, vehicle, role)
end

--- Determines if the player can kill themselves using the `kill` or `explode` console commands.  
--- @param player GPlayer @The player
--- @return boolean @`true` if the player should be allowed to suicide, `false` if not.
function GM:CanPlayerSuicide(player)
end

--- Determines if the player can unfreeze the entity.  
--- @param player GPlayer @The player
--- @param entity GEntity @The entity
--- @param phys GPhysObj @The physics object of the entity
--- @return boolean @True if they can unfreeze.
function GM:CanPlayerUnfreeze(player, entity, phys)
end

--- Controls if a property can be used or not.  
--- @param ply GPlayer @Player, that tried to use the property
--- @param property string @Class of the property that is tried to use, for example - bonemanipulate
--- @param ent GEntity @The entity, on which property is tried to be used on
--- @return boolean @Return false to disallow using that property
function GM:CanProperty(ply, property, ent)
end

--- Called whenever a players tries to undo.  
--- @param ply GPlayer @The player who tried to undo something.
--- @param undo SUndo @The undo table as a Structures/Undo.
--- @return boolean @Return false to disallow the undo.
function GM:CanUndo(ply, undo)
end

--- Called when a message is printed to the chat box. Note, that this isn't working with player messages even though there are arguments for it.  
--- For player messages see GM:PlayerSay and GM:OnPlayerChat  
--- @param index number @The index of the player.
--- @param name string @The name of the player.
--- @param text string @The text that is being sent.
--- @param type string @Chat filter type
--- @return boolean @Return true to suppress the chat message.
function GM:ChatText(index, name, text, type)
end

--- Called whenever the content of the user's chat input box is changed.  
--- @param text string @The new contents of the input box
function GM:ChatTextChanged(text)
end

--- Called when a non local player connects to allow the Lua system to check the password.  
--- The default behaviour in the base gamemodes emulates what would normally happen. If sv_password is set and its value matches the password passed in by the client - then they are allowed to join. If it isn't set it lets them in too.  
--- @param steamID64 string @The 64bit Steam ID of the joining player, use util.SteamIDFrom64 to convert it to a `STEAM_0:` one.
--- @param ipAddress string @The IP of the connecting client
--- @param svPassword string @The current value of sv_password (the password set by the server)
--- @param clPassword string @The password provided by the client
--- @param name string @The name of the joining player
--- @return boolean @If the hook returns false then the player is disconnected
--- @return string @If returning false in the first argument, then this should be the disconnect message
function GM:CheckPassword(steamID64, ipAddress, svPassword, clPassword, name)
end

--- Called when a player's sign on state changes.  
--- 🦟 **BUG**: [You cannot get a valid player object from the userID at any point during this hook.](https://github.com/Facepunch/garrysmod-issues/issues/4899)  
--- @param userID number @The userID of the player whose sign on state has changed.
--- @param oldState number @The previous sign on state
--- @param newState number @The new/current sign on state
function GM:ClientSignOnStateChanged(userID, oldState, newState)
end

--- Called when derma menus are closed with Global.CloseDermaMenus.  
function GM:CloseDermaMenus()
end

--- Called whenever an entity becomes a clientside ragdoll.  
--- See GM:CreateEntityRagdoll for serverside ragdolls.  
--- @param entity GEntity @The Entity that created the ragdoll
--- @param ragdoll GEntity @The ragdoll being created.
function GM:CreateClientsideRagdoll(entity, ragdoll)
end

--- Called when a serverside ragdoll of an entity has been created.  
--- See GM:CreateClientsideRagdoll for clientside ragdolls.  
--- @param owner GEntity @Entity that owns the ragdoll
--- @param ragdoll GEntity @The ragdoll entity
function GM:CreateEntityRagdoll(owner, ragdoll)
end

--- Allows you to change the players movements before they're sent to the server.  
--- See Game Movement for an explanation on the move system.  
--- ℹ **NOTE**: Due to this hook being clientside only, it could be overridden by the user allowing them to completely skip your logic, it is recommended to use GM:StartCommand in a shared file instead.  
--- @param cmd GCUserCmd @The User Command data
--- @return boolean @Return true to:
function GM:CreateMove(cmd)
end

--- Teams are created within this hook using team.SetUp.  
--- This hook is called before GM:PreGamemodeLoaded.  
function GM:CreateTeams()
end

--- Called upon an animation event, this is the ideal place to call player animation functions such as Player:AddVCDSequenceToGestureSlot, Player:AnimRestartGesture and so on.  
--- @param ply GPlayer @Player who is being animated
--- @param event number @Animation event
--- @param data? number @The data for the event
--- @return number @The translated activity to send to the weapon
function GM:DoAnimationEvent(ply, event, data)
end

--- Handles the player's death.  
--- This hook is **not** called if the player is killed by Player:KillSilent. See GM:PlayerSilentDeath for that.  
--- * GM:PlayerDeath is called after this hook  
--- * GM:PostPlayerDeath is called after that  
--- ℹ **NOTE**: Player:Alive will return false in this hook.  
--- @param ply GPlayer @The player
--- @param attacker GEntity @The entity that killed the player
--- @param dmg GCTakeDamageInfo @Damage info
function GM:DoPlayerDeath(ply, attacker, dmg)
end

--- This hook is called every frame to draw all of the current death notices.  
--- @param x number @X position to draw death notices as a ratio
--- @param y number @Y position to draw death notices as a ratio
function GM:DrawDeathNotice(x, y)
end

--- Called every frame before drawing the in-game monitors ( Breencast, in-game TVs, etc ), but doesn't seem to be doing anything, trying to render 2D or 3D elements fail.  
function GM:DrawMonitors()
end

--- Called after all other 2D draw hooks are called. Draws over all VGUI Panels and HUDs.  
--- Unlike GM:HUDPaint, this hook is called with the game paused and while the Camera SWEP is equipped.  
--- Does not get called when `r_drawvgui` is disabled.  
--- 🟥 **NOTE**: Provides a 2D rendering context  
function GM:DrawOverlay()
end

--- Allows you to override physgun effects rendering.  
--- ℹ **NOTE**: This is still called when `physgun_drawbeams` is set to `0`, because this hook is also capable of overriding physgun sprite effects, while the convar does not.  
--- @param ply GPlayer @Physgun owner
--- @param physgun GWeapon @The physgun
--- @param enabled boolean @Is the beam enabled
--- @param target GEntity @Entity we are grabbing
--- @param physBone number @ID of the physics bone (PhysObj) we are grabbing at
--- @param hitPos GVector @Beam hit position relative to the physics bone (PhysObj) we are grabbing.
--- @return boolean @Return false to hide default effects
function GM:DrawPhysgunBeam(ply, physgun, enabled, target, physBone, hitPos)
end

--- Called right before an entity stops driving. Overriding this hook will cause it to not call drive.End and the player will not stop driving.  
--- @param ent GEntity @The entity being driven
--- @param ply GPlayer @The player driving the entity
function GM:EndEntityDriving(ent, ply)
end

--- Called whenever a sound has been played. This will not be called clientside if the server played the sound without the client also calling Entity:EmitSound.  
--- @param data table @Information about the played sound
--- @return boolean @* Return `true` to apply all changes done to the data table
function GM:EntityEmitSound(data)
end

--- Called every time a bullet is about to be fired from an entity, which allows to completely modify the bullet structure before the bullet is actually fired.  
--- See GM:PostEntityFireBullets if you wish to hook the final bullet values, such as the aim direction post spread calculations.  
--- ⚠ **WARNING**: This hook is called directly from Entity:FireBullets. Due to this, you cannot call Entity:FireBullets inside this hook or an infinite loop will occur crashing the game.  
--- @param entity GEntity @The entity that fired the bullet
--- @param data SBullet @The bullet data
--- @return boolean @* Return `true` to apply all changes done to the bullet table
function GM:EntityFireBullets(entity, data)
end

--- Called when a key-value pair is set on an entity on map spawn. Is **not** called by Entity:SetKeyValue.  
--- See ENTITY:KeyValue for a scripted entities hook, and its scripted weapon alternative: WEAPON:KeyValue.  
--- @param ent GEntity @Entity that the keyvalue is being set on
--- @param key string @Key of the key/value pair
--- @param value string @Value of the key/value pair
--- @return string @If set, the value of the key-value pair will be overridden by this string.
function GM:EntityKeyValue(ent, key, value)
end

--- Called when an NW2Var is changed.  
--- 🦟 **BUG**: [If a NW2Var is set on an entity that is based on a Lua Entity could result in the NW2Var being mixed up with other ones and being updated multiple times.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ℹ **NOTE**: This hook is fired before the client value is actually changed. Calling the GetNW2 function for the specified variable name within this hook will return the old value, not the current/updated one.  
--- This hook gets called for all NW2Vars on all Entities in a full update. The old value will be nil in this case.  
--- If this hook seems to be called for no apparent reason, check if it's caused by a full update.  
--- @param ent GEntity @The owner entity of changed NW2Var
--- @param name string @The name if changed NW2Var
--- @param oldval any @The old value of the NW2Var
--- @param newval any @The new value of the NW2Var
function GM:EntityNetworkedVarChanged(ent, name, oldval, newval)
end

--- Called right before removal of an entity.  
--- ⚠ **WARNING**: This hook is called clientside during full updates due to how networking works in the Source Engine.  
--- This can happen when the client briefly loses connection to the server, and can be simulated via `cl_fullupdate` for testing purposes.  
--- @param ent GEntity @Entity being removed
--- @param fullUpdate boolean @Whether the removal is happening due to a full update clientside
function GM:EntityRemoved(ent, fullUpdate)
end

--- Called when an entity is about to take damage. You can modify all parts of the damage info in this hook or completely block the damage event.  
--- See GM:PostEntityTakeDamage if you wish to hook the final damage event.  
--- ⚠ **WARNING**: Applying damage from this hook to the entity taking damage will lead to infinite loop/crash.  
--- @param target GEntity @The entity taking damage
--- @param dmg GCTakeDamageInfo @Detailed information about the damage event.
--- @return boolean @Return true to completely block the damage event
function GM:EntityTakeDamage(target, dmg)
end

--- This hook polls the entity the player use action should be applied to.  
--- ℹ **NOTE**: The default behavior of this hook is in [CBasePlayer::FindUseEntity](https://github.com/ValveSoftware/source-sdk-2013/blob/0d8dceea4310fde5706b3ce1c70609d72a38efdf/mp/src/game/shared/baseplayer_shared.cpp#L1068-L1270). Despite CBasePlayer::FindUseEntity being defined shared, it is only called serverside in practice, so this hook will be only called serverside, as well. It is possible for modules to call it clientside, so the Lua code should still be treated as shared.  
--- @param ply GPlayer @The player who initiated the use action.
--- @param defaultEnt GEntity @The entity that was chosen by the engine.
--- @return GEntity @The entity to use instead of default entity
function GM:FindUseEntity(ply, defaultEnt)
end

--- Runs when user cancels/finishes typing.  
function GM:FinishChat()
end

--- Called after GM:Move, applies all the changes from the CMoveData to the player.  
--- See Game Movement for an explanation on the move system.  
--- @param ply GPlayer @Player
--- @param mv GCMoveData @Movement data
--- @return boolean @Return true to suppress default engine behavior, i.e
function GM:FinishMove(ply, mv)
end

--- Called to allow override of the default Derma skin for all panels.  
--- ℹ **NOTE**: This hook is only called on Lua start up, changing its value (or adding new hooks) after it has been already called will not have any effect.  
--- @return string @A **case sensitive** Derma skin name to be used as default, registered previously via derma.DefineSkin
function GM:ForceDermaSkin()
end

--- Called when the mouse has been double clicked on any panel derived from CGModBase, such as the panel used by gui.EnableScreenClicker and the panel used by Panel:ParentToHUD.  
--- By default this hook calls GM:GUIMousePressed.  
--- @param mouseCode number @The code of the mouse button pressed, see Enums/MOUSE
--- @param aimVector GVector @A normalized vector pointing in the direction the client has clicked
function GM:GUIMouseDoublePressed(mouseCode, aimVector)
end

--- Called whenever a players presses a mouse key on the context menu in Sandbox or on any panel derived from CGModBase, such as the panel used by gui.EnableScreenClicker and the panel used by Panel:ParentToHUD.  
--- See GM:VGUIMousePressed for a hook that is called on all VGUI elements.  
--- @param mouseCode number @The key that the player pressed using Enums/MOUSE.
--- @param aimVector GVector @A normalized direction vector local to the camera
function GM:GUIMousePressed(mouseCode, aimVector)
end

--- Called whenever a players releases a mouse key on the context menu in Sandbox or on any panel derived from CGModBase, such as the panel used by gui.EnableScreenClicker and the panel used by Panel:ParentToHUD.  
--- @param mouseCode number @The key the player released, see Enums/MOUSE
--- @param aimVector GVector @A normalized direction vector local to the camera
function GM:GUIMouseReleased(mouseCode, aimVector)
end

--- Called when game content has been changed, for example an addon or a mountable game was (un)mounted.  
function GM:GameContentChanged()
end

--- An internal function used to get an untranslated string to show in the kill feed as the entity's name. See GM:SendDeathNotice  
--- @param name string @The name of the entity.
--- @return string @The untranslated name for given NPC
function GM:GetDeathNoticeEntityName(name)
end

--- Called when a player takes damage from falling, allows to override the damage.  
--- @param ply GPlayer @The player
--- @param speed number @The fall speed
--- @return number @New fall damage
function GM:GetFallDamage(ply, speed)
end

--- Called when the game(server) needs to update the text shown in the server browser as the gamemode. Runs at a ~2s interval, runs even when the server is hibernating.  
--- ℹ **NOTE**: This hook (and the `sv_gamename_override` command) may not work on some popular gamemodes like DarkRP or Trouble Terrorist Town. This is not a bug, it's just how it works. See [here](https://github.com/Facepunch/garrysmod-issues/issues/4637#issuecomment-677884989) for more information.  
--- Also, it **only** works on dedicated servers and is called at regular intervals (about one second) **even** if the server has no players and the hibernation function is enabled.  
--- @return string @The text to be shown in the server browser as the gamemode.
function GM:GetGameDescription()
end

--- Allows you to modify the Source Engine's motion blur shaders.  
--- @param horizontal number @The amount of horizontal blur.
--- @param vertical number @The amount of vertical  blur.
--- @param forward number @The amount of forward/radial blur.
--- @param rotational number @The amount of rotational blur.
--- @return number @New amount of horizontal blur.
--- @return number @New amount of vertical blur.
--- @return number @New amount of forward/radial blur.
--- @return number @New amount of rotational blur.
function GM:GetMotionBlurValues(horizontal, vertical, forward, rotational)
end

--- Called to determine preferred carry angles for the entity. It works for both, +use pickup and gravity gun pickup.  
--- ⚠ **WARNING**: Due to nature of the gravity gun coding in multiplayer, this hook **MAY** seem to not work ( but rest assured it does ), due to clientside prediction not knowing the carry angles. The +use pickup doesn't present this issue as it doesn't predict the player carrying the object clientside ( as you may notice by the prop lagging behind in multiplayer )  
--- ℹ **NOTE**: This hook can **not** override preferred carry angles of props such as the sawblade and the harpoon.  
--- @param ent GEntity @The entity to generate carry angles for
--- @param ply GPlayer @The player who is holding the object
--- @return GAngle @The preferred carry angles for the entity.
function GM:GetPreferredCarryAngles(ent, ply)
end

--- Returns the color for the given entity's team. This is used in chat and deathnotice text.  
--- @param ent GEntity @Entity
--- @return table @Team Global.Color
function GM:GetTeamColor(ent)
end

--- Returns the team color for the given team index.  
--- @param team number @Team index
--- @return table @Team Global.Color
function GM:GetTeamNumColor(team)
end

--- Override this hook to disable/change ear-grabbing in your gamemode. By default, it is not called anywhere on the server.  
--- @param ply GPlayer @Player
function GM:GrabEarAnimation(ply)
end

--- Called when an entity is released by a gravity gun.  
--- See GM:PhysgunDrop for the Physics Gun drop variant.  
--- @param ply GPlayer @Player who is wielding the gravity gun
--- @param ent GEntity @The entity that has been dropped
function GM:GravGunOnDropped(ply, ent)
end

--- Called when an entity is picked up by a gravity gun.  
--- See GM:OnPlayerPhysicsPickup for the player `+use` pickup variant.  
--- See GM:OnPhysgunPickup for the Physics Gun pickup variant.  
--- @param ply GPlayer @The player wielding the gravity gun
--- @param ent GEntity @The entity that has been picked up by the gravity gun
function GM:GravGunOnPickedUp(ply, ent)
end

--- Called every tick to poll whether a player is allowed to pick up an entity with the gravity gun or not.  
--- See GM:AllowPlayerPickup for the +USE pickup variant.  
--- See GM:PhysgunPickup for the Physics Gun pickup variant.  
--- Calls ENTITY:GravGunPickupAllowed on the entity being hovered every frame in Sandbox-derived gamemodes.  
--- @param ply GPlayer @The player wielding the gravity gun
--- @param ent GEntity @The entity the player is attempting to pick up
--- @return boolean @Return true to allow entity pick up
function GM:GravGunPickupAllowed(ply, ent)
end

--- Called when an entity is about to be punted with the gravity gun (primary fire).  
--- By default this function makes ENTITY:GravGunPunt work in Sandbox derived gamemodes.  
--- @param ply GPlayer @The player wielding the gravity gun
--- @param ent GEntity @The entity the player is attempting to punt
--- @return boolean @Return true to allow and false to disallow.
function GM:GravGunPunt(ply, ent)
end

--- Called when the client has picked up ammo. Override to disable default HUD notification.  
--- @param itemName string @Name of the item (ammo) picked up
--- @param amount number @Amount of the item (ammo) picked up
function GM:HUDAmmoPickedUp(itemName, amount)
end

--- Renders the HUD pick-up history. Override to hide default or draw your own HUD.  
function GM:HUDDrawPickupHistory()
end

--- Called every frame to render the scoreboard.  
--- It is recommended to use Derma and VGUI for this job instead of this hook. Called right after GM:HUDPaint.  
--- 🟥 **NOTE**: Provides a 2D rendering context  
function GM:HUDDrawScoreBoard()
end

--- Called from GM:HUDPaint to draw player info when you hover over a player with your crosshair or mouse.  
--- @return boolean @Should the player info be drawn.
function GM:HUDDrawTargetID()
end

--- Called when an item has been picked up. Override to disable the default HUD notification.  
--- @param itemName string @Name of the picked up item
function GM:HUDItemPickedUp(itemName)
end

--- Called whenever the HUD should be drawn.  
--- This is the ideal place to draw custom HUD elements.  
--- To prevent the default game HUD from drawing, use GM:HUDShouldDraw.  
--- This hook does **not** get called when the Camera SWEP is held, or when the `esc` menu is open.  
--- If you need to draw in those situations, use GM:DrawOverlay instead.  
--- 🟥 **NOTE**: Provides a 2D rendering context  
function GM:HUDPaint()
end

--- Called before GM:HUDPaint when the HUD background is being drawn.  
--- Just like GM:HUDPaint, this hook will not be called when the main menu is visible. GM:PostDrawHUD does not have this behavior.  
--- Things rendered in this hook will **always** appear behind things rendered in GM:HUDPaint.  
--- 🟥 **NOTE**: Provides a 2D rendering context  
function GM:HUDPaintBackground()
end

--- Called when the Gamemode is about to draw a given element on the client's HUD (heads-up display).  
--- ⚠ **WARNING**: This hook is called HUNDREDS of times per second (more than 5 times per frame on average). You shouldn't be performing any computationally intensive operations.  
--- @param name string @The name of the HUD element
--- @return boolean @Return false to prevent the given element from being drawn on the client's screen.
function GM:HUDShouldDraw(name)
end

--- Called when a weapon has been picked up. Override to disable the default HUD notification.  
--- @param weapon GWeapon @The picked up weapon
function GM:HUDWeaponPickedUp(weapon)
end

--- Called to handle player armor reduction, when player receives damage.  
--- ⁉ **VALIDATE**: Clarify hook order with other damage hooks.  
--- @param ply GPlayer @The player that took damage.
--- @param dmginfo GCTakeDamageInfo @The taken damage.
function GM:HandlePlayerArmorReduction(ply, dmginfo)
end

--- Allows to override player driving animations.  
--- @param ply GPlayer @Player to process
--- @return boolean @Return true if we've changed/set the animation, false otherwise
function GM:HandlePlayerDriving(ply)
end

--- Allows to override player crouch animations.  
--- @param ply GPlayer @The player
--- @param velocity GVector @Players velocity
--- @return boolean @Return true if we've changed/set the animation, false otherwise
function GM:HandlePlayerDucking(ply, velocity)
end

--- Called every frame by the player model animation system. Allows to override player jumping animations.  
--- @param ply GPlayer @The player
--- @param velocity GVector @Players velocity
--- @return boolean @Return true if we've changed/set the animation, false otherwise
function GM:HandlePlayerJumping(ply, velocity)
end

--- Called every frame by the player model animation system. Allows to override player landing animations.  
--- @param ply GPlayer @The player
--- @param velocity GVector @Players velocity
--- @param onGround boolean @Was the player on ground?
--- @return boolean @Return true if we've changed/set the animation, false otherwise
function GM:HandlePlayerLanding(ply, velocity, onGround)
end

--- Allows to override player noclip animations.  
--- @param ply GPlayer @The player
--- @param velocity GVector @Players velocity
--- @return boolean @Return true if we've changed/set the animation, false otherwise
function GM:HandlePlayerNoClipping(ply, velocity)
end

--- Allows to override player swimming animations.  
--- @param ply GPlayer @The player
--- @param velocity GVector @Players velocity
--- @return boolean @Return true if we've changed/set the animation, false otherwise
function GM:HandlePlayerSwimming(ply, velocity)
end

--- Allows to override player flying ( in mid-air, not noclipping ) animations.  
--- @param ply GPlayer @The player
--- @param velocity GVector @Players velocity
--- @return boolean @Return true if we've changed/set the animation, false otherwise
function GM:HandlePlayerVaulting(ply, velocity)
end

--- Hides the team selection panel.  
function GM:HideTeam()
end

--- Called after all the entities are initialized. Starting from this hook Global.LocalPlayer will return valid object.  
--- ℹ **NOTE**: At this point the client only knows about the entities that are within the spawnpoints' [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community"). For instance, if the server sends an entity that is not within this PVS, the client will receive it as NULL entity.  
function GM:InitPostEntity()
end

--- Called after the gamemode loads and starts.  
--- No entities would be present at the time this hook is called, please see GM:InitPostEntity for a one time fire hook after all map entities have been initialized.  
function GM:Initialize()
end

--- Allows you to modify the supplied User Command with mouse input. This could be used to make moving the mouse do funky things to view angles.  
--- @param cmd GCUserCmd @User command.
--- @param x number @The amount of mouse movement across the X axis this frame.
--- @param y number @The amount of mouse movement across the Y axis this frame.
--- @param ang GAngle @The current view angle.
--- @return boolean @Return true if we modified something.
function GM:InputMouseApply(cmd, x, y, ang)
end

--- Check if a player can spawn at a certain spawnpoint.  
--- @param ply GPlayer @The player who is spawned
--- @param spawnpoint GEntity @The spawnpoint entity (on the map).
--- @param makeSuitable boolean @If this is true, it'll kill any players blocking the spawnpoint.
--- @return boolean @Return true to indicate that the spawnpoint is suitable (Allow for the player to spawn here), false to prevent spawning.
function GM:IsSpawnpointSuitable(ply, spawnpoint, makeSuitable)
end

--- Called whenever a player pressed a key included within the IN keys.  
--- For a more general purpose function that handles all kinds of input, see GM:PlayerButtonDown.  
--- See GM:KeyRelease for the key release event.  
--- Despite being a predicted hook, it will still be called in singleplayer for your convenience.  
--- ⚠ **WARNING**: Due to this being a predicted hook, Global.ParticleEffects created only serverside from this hook will not be networked to the client, so make sure to do that on both realms.  
--- @param ply GPlayer @The player pressing the key
--- @param key number @The key that the player pressed using Enums/IN.
function GM:KeyPress(ply, key)
end

--- Runs when a IN key was released by a player.  
--- For a more general purpose function that handles all kinds of input, see GM:PlayerButtonUp.  
--- See GM:KeyPress for the key press event.  
--- Despite being a predicted hook, it will still be called in singleplayer for your convenience.  
--- @param ply GPlayer @The player releasing the key
--- @param key number @The key that the player released using Enums/IN.
function GM:KeyRelease(ply, key)
end

--- Override this gamemode function to disable mouth movement when talking on voice chat. By default, it is not called anywhere on the server.  
--- @param ply GPlayer @Player in question
function GM:MouthMoveAnimation(ply)
end

--- The Move hook is called for you to manipulate the player's MoveData.  
--- You shouldn't adjust the player's position in any way in the move hook. This is because due to prediction errors, the netcode might run the move hook multiple times as packets arrive late. Therefore you should only adjust the movedata construct in this hook.  
--- Generally you shouldn't have to use this hook - if you want to make a custom move type you should look at the drive system.  
--- This hook is called after GM:PlayerTick.  
--- See Game Movement for an explanation on the move system.  
--- @param ply GPlayer @Player
--- @param mv GCMoveData @Movement information
--- @return boolean @Return true to suppress default engine action.
function GM:Move(ply, mv)
end

--- Returning true in this hook will cause it to render depth buffers defined with render.GetResolvedFullFrameDepth.  
--- @return boolean @Render depth buffer
function GM:NeedsDepthPass()
end

--- Called when an entity has been created over the network.  
--- @param ent GEntity @Created entity
function GM:NetworkEntityCreated(ent)
end

--- Called when a player's SteamID has been validated by Steam.  
--- See also GM:PlayerAuthed and Player:IsFullyAuthenticated.  
--- ℹ **NOTE**: This hook doesn't work intentionally in singleplayer [because the SteamID is not validated](https://github.com/Facepunch/garrysmod-issues/issues/4906#issuecomment-819337130) in that case. This also applies to `sv_lan 1` servers for every duplicate `-multirun` client.  
--- @param name string @Player name
--- @param steamID string @Player SteamID
--- @param ownerID string @SteamID64 of the game license owner, in case Family Sharing is used
function GM:NetworkIDValidated(name, steamID, ownerID)
end

--- Called whenever this entity changes its transmission state for this Global.LocalPlayer, such as exiting or re entering the [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community").  
--- ℹ **NOTE**: This is the best place to handle the reset of Entity:SetPredictable, as this would be usually called when the player lags and requests a full packet update.  
--- When the entity stops transmitting, Entity:IsDormant will only return true **after** this hook.  
--- @param entity GEntity @The entity that changed its transmission state.
--- @param shouldtransmit boolean @`True` if we started transmitting to this client and `false` if we stopped.
function GM:NotifyShouldTransmit(entity, shouldtransmit)
end

--- Called when a player has achieved an achievement. You can get the name and other information from an achievement ID with the achievements library.  
--- @param ply GPlayer @The player that earned the achievement
--- @param achievement number @The index of the achievement
function GM:OnAchievementAchieved(ply, achievement)
end

--- Called when the local player presses TAB while having their chatbox opened.  
--- ⚠ **WARNING**: This function now uses player.Iterator. This means it can't run all the time, as an error in the GM:OnEntityCreated or GM:EntityRemoved hooks is likely to interrupt it. Make sure that no addon causes an error in these hooks.  
--- @param text string @The currently typed into chatbox text
--- @return string @What should be placed into the chatbox instead of what currently is when player presses tab
function GM:OnChatTab(text)
end

--- Called when the player cleans up something.  
--- @param name string @The name of the cleanup type
--- @return boolean @Return false to suppress the cleanup notification.
function GM:OnCleanup(name)
end

--- Called on the server when a Lua error occurs on a client and is sent to the server.  
--- This hook allows server-side code to detect and log client-side errors.  
--- See GM:OnLuaError for a hook that captures Lua errors directly within its [realm](States).  
--- ⚠ **WARNING**: Note that the stack argument can contain a table with 0 values.  
--- ℹ **NOTE**: Warning: the hook "protects" against lua error spam. If it has 5 errors in less than 1 second, the hook will not receive any of these 4 errors.  
--- @param error string @The error that occurred
--- @param ply GPlayer @The player whose client caused the error.
--- @param stack table @The Lua error stack trace
--- @param name string @Title of the addon that is creating the Lua errors, or "ERROR" if addon is not found.
function GM:OnClientLuaError(error, ply, stack, name)
end

--- Called when a caption/subtitle has been emitted to the closed caption box.  
--- @param soundScript string @The name of the soundscript, or `customLuaToken` if it's from gui.AddCaption
--- @param duration number @How long the caption should stay for
--- @param fromPlayer boolean @Is this caption coming from the player?
--- @param fullText string @The caption
--- @return boolean @Return `true` to prevent the caption from appearing
function GM:OnCloseCaptionEmit(soundScript, duration, fromPlayer, fullText)
end

--- Called when the context menu keybind (+menu_context) is released, which by default is C.  
--- This hook will not run if input.IsKeyTrapping returns true.  
--- See also GM:OnContextMenuOpen.  
function GM:OnContextMenuClose()
end

--- Called when the context menu keybind (`+menu_context`) is pressed, which by default is `C`.  
--- See also GM:OnContextMenuClose.  
function GM:OnContextMenuOpen()
end

--- Called when the crazy physics detection detects an entity with crazy physics, i.e. position being far outside of the map, velocities being near or at infinity, etc. The primary reason for this system is to prevent program crashes in physics engine.  
--- @param ent GEntity @The entity that was detected as crazy
--- @param physobj GPhysObj @The physics object that is going crazy
function GM:OnCrazyPhysics(ent, physobj)
end

--- Called when a player has been hurt by an explosion. Override to disable default sound effect.  
--- @param ply GPlayer @Player who has been hurt
--- @param dmginfo GCTakeDamageInfo @Damage info from explosion
function GM:OnDamagedByExplosion(ply, dmginfo)
end

--- Called as soon as the entity is created. Very little of the entity's properties will be initialized at this stage. (keyvalues, classname, flags, anything), especially on the serverside.  
--- ℹ **NOTE**: Some entities on initial map spawn are passed through this hook, and then removed in the same frame. This is used by the engine to precache things like models and sounds, so always check their validity with Global.IsValid. Will not require Global.IsValid check if you create your hook after GM:InitPostEntity.  
--- ⚠ **WARNING**: Removing the created entity during this event can lead to unexpected problems. Use Global.SafeRemoveEntityDelayed( entity, 0 ) to safely remove the entity.  
--- @param entity GEntity @The entity
function GM:OnEntityCreated(entity)
end

--- Called when the Entity:WaterLevel of an entity is changed.  
--- 0 - The entity isn't in water.  
--- 1 - Slightly submerged (at least to the feet).  
--- 2 - The majority of the entity is submerged (at least to the waist).  
--- 3 - Completely submerged.  
--- ⚠ **WARNING**: This hook can be considered a physics callback, so changing collision rules (Entity:SetSolidFlags) in it may lead to a crash!  
--- @param entity GEntity @The entity.
--- @param old number @Previous water level.
--- @param new number @The new water level.
function GM:OnEntityWaterLevelChanged(entity, old, new)
end

--- Called when the gamemode is loaded.  
--- Global.LocalPlayer() returns NULL at the time this is run.  
function GM:OnGamemodeLoaded()
end

--- Called when a Lua error occurs.  
--- If you want to retrieve client errors on the server side, you can use this hook: GM:OnClientLuaError  
--- ℹ **NOTE**: On the server realm, this hook will only account for server-side errors, not client-side ones.  
--- @param error string @The error that occurred.
--- @param realm string @Where the Lua error took place, "client", or "server"
--- @param stack table @The Lua error stack trace
--- @param name string @Title of the addon that is creating the Lua errors, or nil if addon is not found.
--- @param id string @Steam Workshop ID of the addon creating Lua errors, if it is an addon.
function GM:OnLuaError(error, realm, stack, name, id)
end

--- Called whenever an NPC drops an item upon its death, such as health kits, armor batteries, etc.  
--- It will NOT be called for dropped weapons, with exception of Half-Life: Source NPCs, since they don't use actual weapon entities and create a weapon entity on death.  
--- GM:PlayerDroppedWeapon works for NPC weapon drops already. (Yes, it's not a typo)  
--- It will also not be called for live grenades spawned by Zombine.  
--- @param npc GNPC @The killed NPC
--- @param item GEntity @The item that got dropped by the NPC.
function GM:OnNPCDropItem(npc, item)
end

--- Called whenever an NPC is killed.  
--- @param npc GNPC @The killed NPC
--- @param attacker GEntity @The NPCs attacker, the entity that gets the kill credit, for example a player or an NPC.
--- @param inflictor GEntity @Death inflictor
function GM:OnNPCKilled(npc, attacker, inflictor)
end

--- Called when the pause menu is attempting to be opened. Allows you to prevent the main menu from being opened that time.  
--- The user can hold `SHIFT` to not call this hook. If the main menu is blocked multiple times in short succession, a warning will be displayed to the end user on how to bypass the hook.  
--- @return boolean @Should the menu be allowed to open?
function GM:OnPauseMenuShow()
end

--- Called when a player freezes an entity with the physgun.  
--- @param weapon GEntity @The weapon that was used to freeze the entity.
--- @param physobj GPhysObj @Physics object of the entity.
--- @param ent GEntity @The target entity.
--- @param ply GPlayer @The player who tried to freeze the entity.
--- @return boolean @Return `false` to block the unfreeze
function GM:OnPhysgunFreeze(weapon, physobj, ent, ply)
end

--- Called to when a player has successfully picked up an entity with their Physics Gun.  
--- Not to be confused with GM:PhysgunPickup which is called multiple times to ask if the player should be able to pick up an entity.  
--- See GM:GravGunOnPickedUp for the Gravity Gun pickup variant.  
--- See GM:OnPlayerPhysicsPickup for the player `+use` pickup variant.  
--- @param ply GPlayer @The player that has picked up something using the physics gun.
--- @param ent GEntity @The entity that was picked up.
function GM:OnPhysgunPickup(ply, ent)
end

--- Called when a player reloads with the physgun. Override this to disable default unfreezing behavior.  
--- @param physgun GWeapon @The physgun in question
--- @param ply GPlayer @The player wielding the physgun
--- @return boolean @Whether the player can reload with the physgun or not
function GM:OnPhysgunReload(physgun, ply)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Use GM:PlayerChangedTeam instead, which works for every Player:SetTeam call.  
--- Called when a player has changed team using GM:PlayerJoinTeam.  
--- ⚠ **WARNING**: This hook will not work with hook.Add and it is only called manually from GM:PlayerJoinTeam by the base gamemode  
--- @param ply GPlayer @Player who has changed team
--- @param oldTeam number @Index of the team the player was originally in
--- @param newTeam number @Index of the team the player has changed to
function GM:OnPlayerChangedTeam(ply, oldTeam, newTeam)
end

--- Called whenever a player sends a chat message. For the serverside equivalent, see GM:PlayerSay.  
--- ℹ **NOTE**: The input (or suppression) of this hook is based on the output from GM:PlayerSay. Chat events suppressed serverside do not call this hook.  
--- @param ply GPlayer @The player
--- @param text string @The message's text
--- @param teamChat boolean @Is the player typing in team chat?
--- @param isDead boolean @Is the player dead?
--- @return boolean @Should the message be suppressed?
function GM:OnPlayerChat(ply, text, teamChat, isDead)
end

--- Called when a player makes contact with the ground after a jump or a fall.  
--- @param player GEntity @Player
--- @param inWater boolean @Did the player land in water?
--- @param onFloater boolean @Did the player land on an object floating in the water?
--- @param speed number @The speed at which the player hit the ground
--- @return boolean @Return true to suppress default action
function GM:OnPlayerHitGround(player, inWater, onFloater, speed)
end

--- Called when a player jumps.  
--- @param player GEntity @Player
--- @param speed number @The velocity/impulse of the jump
function GM:OnPlayerJump(player, speed)
end

--- Called when a player +use drops an entity.  
--- @param ply GPlayer @The player that dropped the object
--- @param ent GEntity @The object that was dropped.
--- @param thrown boolean @Whether the object was throw or simply let go of.
function GM:OnPlayerPhysicsDrop(ply, ent, thrown)
end

--- Called when a player +use pickups up an entity. This will be called after the entity passes though GM:AllowPlayerPickup.  
--- See GM:GravGunOnPickedUp for the Gravity Gun pickup variant.  
--- See GM:OnPhysgunPickup for the Physics Gun pickup variant.  
--- @param ply GPlayer @The player that picked up the object
--- @param ent GEntity @The object that was picked up.
function GM:OnPlayerPhysicsPickup(ply, ent)
end

--- Called when gamemode has been reloaded by auto refresh.  
--- ℹ **NOTE**: It seems that this event can be triggered more than once for a single refresh event.  
function GM:OnReloaded()
end

--- Called when the player's screen resolution of the game changes.  
--- Global.ScrW and Global.ScrH will return the new values when this hook is called.  
--- @param oldWidth number @The previous width of the game's window.
--- @param oldHeight number @The previous height of the game's window.
--- @param newWidth number @The new/current width of the game's window.
--- @param newHeight number @The new/current height of the game's window.
function GM:OnScreenSizeChanged(oldWidth, oldHeight, newWidth, newHeight)
end

--- Called when a player releases the `+menu` bind on their keyboard, which is bound to Q by default.  
function GM:OnSpawnMenuClose()
end

--- Called when a player presses the `+menu` bind on their keyboard, which is bound to `Q` by default.  
function GM:OnSpawnMenuOpen()
end

--- Called when a DTextEntry gets focus.  
--- This hook is run from DTextEntry:OnGetFocus and PANEL:OnMousePressed of DTextEntry.  
--- @param panel GPanel @The panel that got focus
function GM:OnTextEntryGetFocus(panel)
end

--- Called when a DTextEntry loses focus.  
--- @param panel GPanel @The panel that lost focus
function GM:OnTextEntryLoseFocus(panel)
end

--- Called when the player undoes something.  
--- @param name string @The name of the undo action
--- @param customText string @The custom text for the undo, set by undo.SetCustomUndoText
--- @return boolean @Return false to suppress the undo notification.
function GM:OnUndo(name, customText)
end

--- Called when the player changes their weapon to another one - and their viewmodel model changes.  
--- 🦟 **BUG**: [This is not always called clientside.](https://github.com/Facepunch/garrysmod-issues/issues/2473)  
--- @param viewmodel GEntity @The viewmodel that is changing
--- @param oldModel string @The old model
--- @param newModel string @The new model
function GM:OnViewModelChanged(viewmodel, oldModel, newModel)
end

--- Called when a player drops an entity with the Physgun.  
--- See GM:GravGunOnDropped for the Gravity Gun drop variant.  
--- @param player GPlayer @The player who dropped an entity
--- @param entity GEntity @The dropped entity
function GM:PhysgunDrop(player, entity)
end

--- Called to determine if a player should be able to pick up an entity with the Physics Gun.  
--- See GM:OnPhysgunPickup for a hook which is called when a player has successfully picked up an entity.  
--- See GM:GravGunPickupAllowed for the Gravity Gun pickup variant.  
--- See GM:AllowPlayerPickup for the +USE pickup variant.  
--- @param player GPlayer @The player that is picking up using the Physics Gun.
--- @param entity GEntity @The entity that is being picked up.
--- @return boolean @Returns whether the player can pick up the entity or not.
function GM:PhysgunPickup(player, entity)
end

--- Called after player's reserve ammo count changes.  
--- @param ply GPlayer @The player whose ammo is being affected.
--- @param ammoID number @The ammo type ID.
--- @param oldCount number @The old ammo count.
--- @param newCount number @The new ammo count.
function GM:PlayerAmmoChanged(ply, ammoID, oldCount, newCount)
end

--- Called after the player gets their Player:UniqueID set for the first time. This hook will also be called in singleplayer.  
--- See GM:NetworkIDValidated for a hook that is called with the player's SteamID is validated by Steam.  
--- @param ply GPlayer @The player
--- @param steamid string @The player's SteamID
--- @param uniqueid string @The player's UniqueID
function GM:PlayerAuthed(ply, steamid, uniqueid)
end

--- Runs when a bind has been pressed. Allows to block commands.  
--- ℹ **NOTE**: By using the "alias" console command, this hook can be effectively circumvented. To prevent this use input.TranslateAlias.  
--- To stop the user from using `+attack`, `+left` and any other movement commands of the sort, please look into using GM:StartCommand instead.  
--- 🦟 **BUG**: [The third argument will always be true.](https://github.com/Facepunch/garrysmod-issues/issues/1176)  
--- 🦟 **BUG**: [This does not run for function keys binds (F1-F12).](https://github.com/Facepunch/garrysmod-issues/issues/2888)  
--- @param ply GPlayer @The player who used the command; this will always be equal to Global.LocalPlayer.
--- @param bind string @The bind command.
--- @param pressed boolean @If the bind was activated or deactivated.
--- @param code number @The button code
--- @return boolean @Return `true` to prevent the bind.
function GM:PlayerBindPress(ply, bind, pressed, code)
end

--- Called when a player presses a button.  
--- This will not be called if player has a panel opened with keyboard input enabled, use PANEL:OnKeyCodePressed instead.  
--- See GM:KeyPress for an alternative that uses Enums/IN.  
--- See GM:PlayerButtonUp for the "key release" event.  
--- @param ply GPlayer @Player who pressed the button
--- @param button EBUTTON_CODE @The button, see Enums/BUTTON_CODE
function GM:PlayerButtonDown(ply, button)
end

--- Called when a player releases a button.  
--- This will not be called if player has a panel opened with keyboard input enabled, use PANEL:OnKeyCodeReleased instead.  
--- See GM:KeyRelease for an alternative that uses Enums/IN.  
--- See GM:PlayerButtonDown for the "key press" event.  
--- @param ply GPlayer @Player who released the button
--- @param button EBUTTON_CODE @The button, see Enums/BUTTON_CODE
function GM:PlayerButtonUp(ply, button)
end

--- Decides whether a player can hear another player using voice chat.  
--- ⚠ **WARNING**: This hook is called game.MaxPlayers * game.MaxPlayers times every 0.3 seconds if at least 1 player is talking, if no one is talking its called every 5 seconds.  
--- You should ensure that your code is efficient, or this will definitely influence performance.  
--- @param listener GPlayer @The listening player.
--- @param talker GPlayer @The talking player.
--- @return boolean @Return `true` if the listener should hear the talker, `false` if they shouldn't.
--- @return boolean @3D sound
function GM:PlayerCanHearPlayersVoice(listener, talker)
end

--- Returns whether or not a player is allowed to join a team  
--- ⚠ **WARNING**: This hook will not work with hook.Add and it is only called manually from GM:PlayerJoinTeam by the base gamemode  
--- @param ply GPlayer @Player attempting to switch teams
--- @param team number @Index of the team
--- @return boolean @Allowed to switch
function GM:PlayerCanJoinTeam(ply, team)
end

--- Returns whether or not a player is allowed to pick an item up. (ammo, health, armor)  
--- This will typically only work for base game entities, unless mod authors that implement similar entities also manually call this hook.  
--- See GM:PlayerCanPickupWeapon for a hook that controls weapon pickups.  
--- @param ply GPlayer @Player attempting to pick up
--- @param item GEntity @The item the player is attempting to pick up
--- @return boolean @Allow pick up
function GM:PlayerCanPickupItem(ply, item)
end

--- Returns whether or not a player is allowed to pick up a weapon.  
--- If this returns `false`, Player:Give won't work.  
--- See GM:PlayerCanPickupItem for a hook that affects things like health kits, armor batteries and ammo entities.  
--- See GM:WeaponEquip for a hook that is called when a player successfully picks up a weapon after passing this hook.  
--- @param ply GPlayer @The player attempting to pick up the weapon.
--- @param weapon GWeapon @The weapon entity in question.
--- @return boolean @`false` to disallow pickup.
function GM:PlayerCanPickupWeapon(ply, weapon)
end

--- Returns whether or not the player can see the other player's chat.  
--- ℹ **NOTE**: The **speaker** parameter does not have to be a valid Player object which happens when console messages are displayed for example.  
--- @param text string @The chat text
--- @param teamOnly boolean @If the message is team-only
--- @param listener GPlayer @The player receiving the message
--- @param speaker GPlayer @The player sending the message.
--- @return boolean @Can see other player's chat
function GM:PlayerCanSeePlayersChat(text, teamOnly, listener, speaker)
end

--- Called when a player has changed team using Player:SetTeam.  
--- ⚠ **WARNING**: Avoid calling Player:SetTeam in this hook as it may cause an infinite loop!  
--- ⚠ **WARNING**: Player:Team inside this hook will return `oldTeam`.  
--- @param ply GPlayer @Player whose team has changed.
--- @param oldTeam number @Index of the team the player was originally in
--- @param newTeam number @Index of the team the player has changed to.
function GM:PlayerChangedTeam(ply, oldTeam, newTeam)
end

--- Called whenever a player is about to spawn something to see if they hit a limit for whatever they are spawning.  
--- ℹ **NOTE**: This hook will not be called in singleplayer, as singleplayer does not have limits.  
--- @param ply GPlayer @The player who is trying to spawn something.
--- @param limitName string @The limit's name.
--- @param current number @The amount of whatever player is trying to spawn that the player already has spawned.
--- @param defaultMax number @The default maximum count, as dictated by the `sbox_max<limitname>` convar on the server
--- @return boolean @Return `false` to indicate the limit was hit, or nothing otherwise
function GM:PlayerCheckLimit(ply, limitName, current, defaultMax)
end

--- Executes when a player connects to the server. Called before the player has been assigned a UserID and entity. See the player_connect gameevent for a version of this hook called after the player entity has been created.  
--- ℹ **NOTE**: This is only called clientside for listen server hosts.  
--- ℹ **NOTE**: This is not called clientside for the local player.  
--- @param name string @The player's name.
--- @param ip string @The player's IP address
function GM:PlayerConnect(name, ip)
end

--- Called when a player is killed by Player:Kill or any other normal means.  
--- This hook is **not** called if the player is killed by Player:KillSilent. See GM:PlayerSilentDeath for that.  
--- * GM:DoPlayerDeath is called **before** this hook.  
--- * GM:PostPlayerDeath is called **after** this hook.  
--- See Player:LastHitGroup if you need to get the last hit hitgroup of the player.  
--- ℹ **NOTE**: Player:Alive will return false in this hook.  
--- @param victim GPlayer @The player who died
--- @param inflictor GEntity @Item used to kill the victim
--- @param attacker GEntity @Player or entity that killed the victim
function GM:PlayerDeath(victim, inflictor, attacker)
end

--- Returns whether or not the default death sound should be muted.  
--- @param ply GPlayer @The player
--- @return boolean @Mute death sound
function GM:PlayerDeathSound(ply)
end

--- Called every think while the player is dead. The return value will determine if the player respawns.  
--- Overwriting this function will prevent players from respawning by pressing space or clicking.  
--- 🦟 **BUG**: [This hook is not called for players with the FL_FROZEN flag applied.](https://github.com/Facepunch/garrysmod-issues/issues/1577)  
--- @param ply GPlayer @The player affected in the hook.
--- @return boolean @<note>This hook does not define a return value
function GM:PlayerDeathThink(ply)
end

--- Called when a player leaves the server. See the player_disconnect gameevent for a shared version of this hook.  
--- 🦟 **BUG**: [This is not called in single-player or listen servers for the host.](https://github.com/Facepunch/garrysmod-issues/issues/3523)  
--- @param ply GPlayer @the player
function GM:PlayerDisconnected(ply)
end

--- Called to update the player's animation during a drive.  
--- @param ply GPlayer @The driving player
function GM:PlayerDriveAnimate(ply)
end

--- Called when a weapon is dropped by a player via Player:DropWeapon. Despite its name, this hook is also called for NPC weapon drops.  
--- Also called when a weapon is removed from a player via Player:StripWeapon.  
--- See also GM:WeaponEquip for a hook when a player picks up a weapon.  
--- The weapon's Entity:GetOwner will be NULL at the time this hook is called.  
--- WEAPON:OnDrop will be called before this hook is.  
--- @param owner GPlayer|GNPC @The player or NPC who owned this weapon before it was dropped.
--- @param wep GWeapon @The weapon that was dropped.
function GM:PlayerDroppedWeapon(owner, wep)
end

--- Called when player stops using voice chat.  
--- @param ply GPlayer @Player who stopped talking
function GM:PlayerEndVoice(ply)
end

--- Called when a player enters a vehicle.  
--- Called just after GM:CanPlayerEnterVehicle.  
--- See also GM:PlayerLeaveVehicle.  
--- @param ply GPlayer @Player who entered vehicle.
--- @param veh GVehicle @Vehicle the player entered.
--- @param role number @The seat number.
function GM:PlayerEnteredVehicle(ply, veh, role)
end

--- Called before firing clientside animation events on a player model.  
--- See GM:PlayerHandleAnimEvent for the serverside version.  
--- @param ply GPlayer @The player who has triggered the event.
--- @param pos GVector @Position of the effect
--- @param ang GAngle @Angle of the effect
--- @param event number @The event ID of happened even
--- @param name string @Name of the event
--- @return boolean @Return true to disable the effect
function GM:PlayerFireAnimationEvent(ply, pos, ang, event, name)
end

--- Called whenever a player steps. Return true to mute the normal sound.  
--- See GM:PlayerStepSoundTime for a related hook about footstep frequency.  
--- ℹ **NOTE**: This hook is called on all clients.  
--- @param ply GPlayer @The stepping player
--- @param pos GVector @The position of the step
--- @param foot number @Foot that is stepped
--- @param sound string @Sound that is going to play
--- @param volume number @Volume of the footstep
--- @param filter GCRecipientFilter @The Recipient filter of players who can hear the footstep
--- @return boolean @Prevent default step sound
function GM:PlayerFootstep(ply, pos, foot, sound, volume, filter)
end

--- Called when a player freezes an object.  
--- @param ply GPlayer @Player who has frozen an object
--- @param ent GEntity @The frozen object
--- @param physobj GPhysObj @The frozen physics object of the frozen entity ( For ragdolls )
function GM:PlayerFrozeObject(ply, ent, physobj)
end

--- Called before firing serverside animation events on the player models.  
--- See GM:PlayerFireAnimationEvent for the clientside version.  
--- @param ply GPlayer @The player who has triggered the event.
--- @param event number @The event ID of happened even
--- @param eventTime number @The absolute time this event occurred using Global.CurTime.
--- @param cycle number @The frame this event occurred as a number between 0 and 1.
--- @param type number @Event type
--- @param options string @Name or options of this event.
function GM:PlayerHandleAnimEvent(ply, event, eventTime, cycle, type, options)
end

--- Called when a player gets hurt.  
--- @param victim GPlayer @Victim
--- @param attacker GEntity @Attacker Entity
--- @param healthRemaining number @Remaining Health
--- @param damageTaken number @Damage Taken
function GM:PlayerHurt(victim, attacker, healthRemaining, damageTaken)
end

--- Called when the player spawns for the first time.  
--- See GM:PlayerSpawn for a hook called every player spawn.  
--- ℹ **NOTE**: This hook is called before the player has fully loaded, when the player is still in seeing the `Starting Lua` screen. For example, trying to use the Entity:GetModel function will return the default model (`models/player.mdl`).  
--- @param player GPlayer @The player who spawned.
--- @param transition boolean @If `true`, the player just spawned from a map transition.
function GM:PlayerInitialSpawn(player, transition)
end

--- Makes the player join a specified team. This is a convenience function that calls Player:SetTeam and runs the GM:OnPlayerChangedTeam hook.  
--- @param ply GPlayer @Player to force
--- @param team number @The team to put player into
function GM:PlayerJoinTeam(ply, team)
end

--- Called when a player leaves a vehicle for any reason, including Player:ExitVehicle.  
--- See GM:PlayerEnteredVehicle for the opposite hook.  
--- ℹ **NOTE**: For vehicles with exit animations, this will be called **at the end** of the animation, **not at the start**!  
--- @param ply GPlayer @Player who left a vehicle.
--- @param veh GVehicle @Vehicle the player left.
function GM:PlayerLeaveVehicle(ply, veh)
end

--- Called to give players the default set of weapons.  
--- ℹ **NOTE**: This function may not work in your custom gamemode if you have overridden your GM:PlayerSpawn and you do not use self.BaseClass.PlayerSpawn or hook.Call.  
--- @param ply GPlayer @Player to give weapons to.
function GM:PlayerLoadout(ply)
end

--- Called when a player tries to switch noclip mode.  
--- @param ply GPlayer @The person who entered/exited noclip
--- @param desiredState boolean @Represents the noclip state (on/off) the user will enter if this hook allows them to.
--- @return boolean @Return false to disallow the switch.
function GM:PlayerNoClip(ply, desiredState)
end

--- Called after the player's think, just after GM:FinishMove.  
--- ℹ **NOTE**: On the client side, it is only called for the local player.  
--- @param ply GPlayer @The player
function GM:PlayerPostThink(ply)
end

--- Request a player to join the team. This function will check if the team is available to join or not.  
--- This hook is called when the player runs "changeteam" in the console.  
--- To prevent the player from changing teams, see GM:PlayerCanJoinTeam  
--- @param ply GPlayer @The player to try to put into a team
--- @param team number @Team to put the player into if the checks succeeded
function GM:PlayerRequestTeam(ply, team)
end

--- Called when a player dispatched a chat message. For the clientside equivalent, see GM:OnPlayerChat.  
--- ℹ **NOTE**: It may be more reliable to use gameevent/player_say to read messages serverside because addons commonly return values in this hook to change chat messages.  
--- @param sender GPlayer @The player which sent the message.
--- @param text string @The message's content.
--- @param teamChat boolean @Return false when the message is for everyone, true when the message is for the sender's team.
--- @return string @What to show instead of original text
function GM:PlayerSay(sender, text, teamChat)
end

--- Called to determine a spawn point for a player to spawn at.  
--- ℹ **NOTE**: The spawn point entity will also impact the player's eye angle. For example, if the entity is upside down, the player's view will be as well.  
--- @param ply GPlayer @The player who needs a spawn point
--- @param transition boolean @If true, the player just spawned from a map transition (`trigger_changelevel`)
--- @return GEntity @The spawn point entity to spawn the player at
function GM:PlayerSelectSpawn(ply, transition)
end

--- Find a team spawn point entity for this player.  
--- @param team number @Players team
--- @param ply GPlayer @The player
--- @return GEntity @The entity to use as a spawn point.
function GM:PlayerSelectTeamSpawn(team, ply)
end

--- Called whenever view model hands needs setting a model. By default this calls PLAYER:GetHandsModel and if that fails, sets the hands model according to his player model.  
--- @param ply GPlayer @The player whose hands needs a model set
--- @param ent GEntity @The hands to set model of
function GM:PlayerSetHandsModel(ply, ent)
end

--- Called whenever a player spawns and must choose a model. A good place to assign a model to a player.  
--- ℹ **NOTE**: This function may not work in your custom gamemode if you have overridden your GM:PlayerSpawn and you do not use self.BaseClass.PlayerSpawn in it, or hook.Call this hook from GM:PlayerSpawn.  
--- @param ply GPlayer @The player being chosen
function GM:PlayerSetModel(ply)
end

--- Returns true if the player should take damage from the given attacker.  
--- ⚠ **WARNING**: Applying damage from this hook to the player taking damage will lead to infinite loop/crash.  
--- @param ply GPlayer @The player
--- @param attacker GEntity @The attacker
--- @return boolean @Allow damage
function GM:PlayerShouldTakeDamage(ply, attacker)
end

--- Allows to suppress player taunts.  
--- @param ply GPlayer @Player who tried to taunt
--- @param act number @Act ID of the taunt player tries to do, see Enums/ACT
--- @return boolean @Return false to disallow player taunting
function GM:PlayerShouldTaunt(ply, act)
end

--- Called when the player is killed by Player:KillSilent.  
--- The player is already considered dead when this hook is called.  
--- * See GM:PlayerDeath for a hook which handles all other death causes.  
--- * GM:PostPlayerDeath is called **after** this hook.  
--- ℹ **NOTE**: Player:Alive will return true in this hook.  
--- @param ply GPlayer @The player who was killed
function GM:PlayerSilentDeath(ply)
end

--- Called whenever a player spawns, including respawns.  
--- See GM:PlayerInitialSpawn for a hook called only the first time a player spawns.  
--- See the player_spawn gameevent for a shared version of this hook.  
--- ⚠ **WARNING**: By default, in "base" derived gamemodes, this hook will also call GM:PlayerLoadout and GM:PlayerSetModel, which may override your Entity:SetModel and Player:Give calls. Consider using the other hooks or a 0-second timer.  
--- @param player GPlayer @The player who spawned.
--- @param transition boolean @If true, the player just spawned from a map transition
function GM:PlayerSpawn(player, transition)
end

--- Called to spawn the player as a spectator.  
--- @param ply GPlayer @The player to spawn as a spectator
function GM:PlayerSpawnAsSpectator(ply)
end

--- Determines if the player can spray using the `impulse 201` console command.  
--- @param sprayer GPlayer @The player.
--- @return boolean @Return `false` to allow spraying, return `true` to prevent spraying.
function GM:PlayerSpray(sprayer)
end

--- Called when player starts taunting.  
--- @param ply GPlayer @The player who is taunting
--- @param act number @The sequence ID of the taunt
--- @param length number @Length of the taunt
function GM:PlayerStartTaunt(ply, act, length)
end

--- Called when a player starts using voice chat.  
--- ℹ **NOTE**: Set mp_show_voice_icons to 0, if you want disable icons above player.  
--- @param ply GPlayer @Player who started using voice chat.
--- @param plyIndex number @The player index
--- @return boolean @Set true to hide player's `CHudVoiceStatus`.
function GM:PlayerStartVoice(ply, plyIndex)
end

--- Allows you to override the time between footsteps.  
--- See GM:PlayerFootstep for a related hook about footstep sounds themselves.  
--- ℹ **NOTE**: This hook is called on all clients.  
--- @param ply GPlayer @Player who is walking
--- @param type number @The type of footsteps, see Enums/STEPSOUNDTIME
--- @param walking boolean @Is the player walking or not ( +walk? )
--- @return number @Time between footsteps, in ms
function GM:PlayerStepSoundTime(ply, type, walking)
end

--- Called whenever a player attempts to either turn on or off their flashlight, returning false will deny the change.  
--- ℹ **NOTE**: Also gets called when using Player:Flashlight.  
--- @param ply GPlayer @The player who attempts to change their flashlight state.
--- @param enabled boolean @The new state the player requested, true for on, false for off.
--- @return boolean @Can toggle the flashlight or not
function GM:PlayerSwitchFlashlight(ply, enabled)
end

--- Called when a player attempts to switch their weapon.  
--- Primary usage of this hook is to prevent/allow weapon switching, **not** to detect weapon switching. It will not be called for Player:SetActiveWeapon.  
--- @param player GPlayer @The player switching weapons.
--- @param oldWeapon GWeapon @The previous weapon
--- @param newWeapon GWeapon @The weapon the player switched to
--- @return boolean @Return `true` to prevent weapon switch.
function GM:PlayerSwitchWeapon(player, oldWeapon, newWeapon)
end

--- The Move hook is called for you to manipulate the player's CMoveData. This hook is called moments before GM:Move and GM:PlayerNoClip.  
--- ⚠ **WARNING**: This hook will not run when inside a vehicle. GM:VehicleMove will be called instead.  
--- @param player GPlayer @The player
--- @param mv GCMoveData @The current movedata for the player.
function GM:PlayerTick(player, mv)
end

--- Called when a player has been hit by a trace and damaged (such as from a bullet). Returning true overrides the damage handling and prevents GM:ScalePlayerDamage from being called.  
--- @param ply GPlayer @The player that has been hit
--- @param dmginfo GCTakeDamageInfo @The damage info of the bullet
--- @param dir GVector @Normalized vector direction of the bullet's path
--- @param trace STraceResult @The trace of the bullet's path, see Structures/TraceResult
--- @return boolean @Override engine handling
function GM:PlayerTraceAttack(ply, dmginfo, dir, trace)
end

--- Called when a player unfreezes an object.  
--- @param ply GPlayer @Player who has unfrozen an object
--- @param ent GEntity @The unfrozen object
--- @param physobj GPhysObj @The frozen physics object of the unfrozen entity ( For ragdolls )
function GM:PlayerUnfrozeObject(ply, ent, physobj)
end

--- Triggered when the player presses use on an object. Continuously runs until USE is released but will not activate other Entities until the USE key is released; dependent on activation type of the Entity.  
--- @param ply GPlayer @The player pressing the "use" key.
--- @param ent GEntity @The entity which the player is looking at / activating USE on.
--- @return boolean @Return `false` if the player is not allowed to USE the entity
function GM:PlayerUse(ply, ent)
end

--- Called when it's time to populate the context menu menu bar at the top.  
--- @param menubar GPanel @The DMenuBar itself.
function GM:PopulateMenuBar(menubar)
end

--- Called right after the map has cleaned up (usually because game.CleanUpMap was called)  
--- See also GM:PreCleanupMap.  
function GM:PostCleanupMap()
end

--- Called right after the 2D skybox has been drawn - allowing you to draw over it.  
--- 🧱 **NOTE**: Provides a 3D rendering context  
function GM:PostDraw2DSkyBox()
end

--- Called after rendering effects. This is where halos are drawn. Called just before GM:PreDrawHUD.  
--- 🟥 **NOTE**: Provides a 2D rendering context  
function GM:PostDrawEffects()
end

--- Called after GM:PreDrawHUD,  GM:HUDPaintBackground and GM:HUDPaint but before  GM:DrawOverlay.  
--- Unlike GM:HUDPaint(Background) hooks, this will still be called when the main menu is visible. And so will be GM:PreDrawHUD  
--- 🟥 **NOTE**: Provides a 2D rendering context  
function GM:PostDrawHUD()
end

--- Called after drawing opaque entities.  
--- See also GM:PostDrawTranslucentRenderables and GM:PreDrawOpaqueRenderables.  
--- 🧱 **NOTE**: Provides a 3D rendering context  
--- @param bDrawingDepth boolean @Whether the current draw is writing depth.
--- @param bDrawingSkybox boolean @Whether the current draw is drawing the 3D or 2D skybox
--- @param isDraw3DSkybox boolean @Whether the current draw is drawing the 3D.
function GM:PostDrawOpaqueRenderables(bDrawingDepth, bDrawingSkybox, isDraw3DSkybox)
end

--- Called after the player hands are drawn.  
--- See GM:PostDrawViewModel for the view model alternative.  
--- See GM:PreDrawPlayerHands for a hook that is called just before view model hands are drawn.  
--- @param hands GEntity @This is the gmod_hands entity.
--- @param vm GEntity @This is the view model entity.
--- @param ply GPlayer @The the owner of the view model.
--- @param weapon GWeapon @This is the weapon that is from the view model.
function GM:PostDrawPlayerHands(hands, vm, ply, weapon)
end

--- Called after drawing the 3D skybox. This will not be called if skybox rendering was prevented via the GM:PreDrawSkyBox hook.  
--- See also GM:PostDraw2DSkyBox.  
--- 🧱 **NOTE**: Provides a 3D rendering context  
function GM:PostDrawSkyBox()
end

--- Called after all translucent entities are drawn.  
--- See also GM:PostDrawOpaqueRenderables and  GM:PreDrawTranslucentRenderables.  
--- 🧱 **NOTE**: Provides a 3D rendering context  
--- 🦟 **BUG**: [This is still called when r_drawentities or r_drawopaquerenderables is disabled.](https://github.com/Facepunch/garrysmod-issues/issues/3295)  
--- 🦟 **BUG**: [This is not called when r_drawtranslucentworld is disabled.](https://github.com/Facepunch/garrysmod-issues/issues/3296)  
--- @param bDrawingDepth boolean @Whether the current call is writing depth.
--- @param bDrawingSkybox boolean @Whether the current draw is drawing the 3D or 2D skybox
--- @param isDraw3DSkybox boolean @Whether the current draw is drawing the 3D.
function GM:PostDrawTranslucentRenderables(bDrawingDepth, bDrawingSkybox, isDraw3DSkybox)
end

--- Called after view model is drawn.  
--- The render FOV in this hook is different from the main view, as view models are usually rendered with a different FOV. Every render operation will only be accurate with the view model entity.  
--- See GM:PreDrawViewModel for a hook that is called just before a view model is drawn.  
--- For view model hands alternative, see GM:PostDrawPlayerHands.  
--- 🧱 **NOTE**: Provides a 3D rendering context  
--- @param viewmodel GEntity @Players view model
--- @param player GPlayer @The owner of the weapon/view model
--- @param weapon GWeapon @The weapon the player is currently holding
function GM:PostDrawViewModel(viewmodel, player, weapon)
end

--- Called every time a bullet pellet (i.e. this hook is called multiple times for a shotgun shot) is fired from an entity. Notably this hook will have the final damage and aim direction for the bullet pellet.  
--- See GM:EntityFireBullets if you wish to modify the bullets before they are fired.  
--- ⚠ **WARNING**: This hook is called directly from Entity:FireBullets. Due to this, you cannot call Entity:FireBullets inside this hook or an infinite loop will occur crashing the game.  
--- @param entity GEntity @The entity that fired the bullet
--- @param data SFiredBullet @A table of data about the bullet that was fired
--- @return boolean @Return `false` to suppress the bullet.
function GM:PostEntityFireBullets(entity, data)
end

--- Called when an entity receives a damage event, after passing damage filters, etc.  
--- See GM:EntityTakeDamage if you wish to prevent damage events, or otherwise alter them.  
--- ⚠ **WARNING**: Applying damage from this hook to the entity taking damage will lead to infinite loop/crash.  
--- @param ent GEntity @The entity that took the damage.
--- @param dmginfo GCTakeDamageInfo @Detailed information about the damage event.
--- @param wasDamageTaken boolean @Whether the entity actually took the damage
function GM:PostEntityTakeDamage(ent, dmginfo, wasDamageTaken)
end

--- Called after the gamemode has loaded.  
function GM:PostGamemodeLoaded()
end

--- Called right after GM:DoPlayerDeath, GM:PlayerDeath and GM:PlayerSilentDeath.  
--- This hook will be called for all deaths, including Player:KillSilent  
--- ℹ **NOTE**: Player:Alive will return false in this hook.  
--- @param ply GPlayer @The player
function GM:PostPlayerDeath(ply)
end

--- Called after a player in your [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community") was drawn.  
--- 🧱 **NOTE**: Provides a 3D rendering context  
--- @param ply GPlayer @The player that was drawn.
--- @param flags number @The STUDIO_ flags for this render operation.
function GM:PostPlayerDraw(ply, flags)
end

--- Allows you to suppress post processing effect drawing.  
--- @param effect_name string @The classname of Post Processing effect
--- @return boolean @Return true/false depending on whether this post process should be allowed
function GM:PostProcessPermitted(effect_name)
end

--- Called after the frame has been rendered.  
function GM:PostRender()
end

--- Called after the VGUI has been drawn.  
--- 🟥 **NOTE**: Provides a 2D rendering context  
function GM:PostRenderVGUI()
end

--- Called just after performing an undo.  
--- @param undo table @The undo table
--- @param count number @The amount of props/actions undone
function GM:PostUndo(undo, count)
end

--- Called right before the map cleans up (usually because game.CleanUpMap was called)  
--- See also GM:PostCleanupMap.  
function GM:PreCleanupMap()
end

--- Called just after GM:PreDrawViewModel and can technically be considered "PostDrawAllViewModels".  
--- 🧱 **NOTE**: Provides a 3D rendering context  
function GM:PreDrawEffects()
end

--- Called just after GM:PostDrawEffects. Drawing anything in it seems to work incorrectly.  
function GM:PreDrawHUD()
end

--- Called before rendering the halos. This is the place to call halo.Add. This hook is actually running inside of GM:PostDrawEffects.  
--- 🧱 **NOTE**: Provides a 3D rendering context  
function GM:PreDrawHalos()
end

--- Called before all opaque entities are drawn.  
--- See also GM:PreDrawTranslucentRenderables and  GM:PostDrawOpaqueRenderables.  
--- 🧱 **NOTE**: Provides a 3D rendering context  
--- @param isDrawingDepth boolean @Whether the current draw is writing depth.
--- @param isDrawSkybox boolean @Whether the current draw is drawing the 3D or 2D skybox
--- @param isDraw3DSkybox boolean @Whether the current draw is drawing the 3D.
--- @return boolean @Return true to prevent opaque renderables from drawing.
function GM:PreDrawOpaqueRenderables(isDrawingDepth, isDrawSkybox, isDraw3DSkybox)
end

--- Called before the player hands are drawn.  
--- See GM:PreDrawViewModel for the view model alternative.  
--- See GM:PostDrawPlayerHands for a hook that is called just before view model hands are drawn.  
--- @param hands GEntity @This is the gmod_hands entity before it is drawn.
--- @param vm GEntity @This is the view model entity before it is drawn.
--- @param ply GPlayer @The the owner of the view model.
--- @param weapon GWeapon @This is the weapon that is from the view model.
--- @return boolean @Return true to prevent the viewmodel hands from rendering
function GM:PreDrawPlayerHands(hands, vm, ply, weapon)
end

--- Called before the 3D sky box is drawn. This will not be called for maps with no 3D skybox, or when the 3d skybox is disabled. (`r_3dsky 0`)  
--- See also GM:PostDrawSkyBox  
--- 🧱 **NOTE**: Provides a 3D rendering context  
--- @return boolean @Return true to disable skybox drawing (both 2D and 3D skybox)
function GM:PreDrawSkyBox()
end

--- Called before all the translucent entities are drawn.  
--- See also GM:PreDrawOpaqueRenderables and  GM:PostDrawTranslucentRenderables.  
--- 🧱 **NOTE**: Provides a 3D rendering context  
--- 🦟 **BUG**: [This is still called when r_drawentities or r_drawopaquerenderables is disabled.](https://github.com/Facepunch/garrysmod-issues/issues/3295)  
--- 🦟 **BUG**: [This is not called when r_drawtranslucentworld is disabled.](https://github.com/Facepunch/garrysmod-issues/issues/3296)  
--- @param isDrawingDepth boolean @Whether the current draw is writing depth.
--- @param isDrawSkybox boolean @Whether the current draw is drawing the 3D or 2D skybox
--- @param isDraw3DSkybox boolean @Whether the current draw is drawing the 3D.
--- @return boolean @Return true to prevent translucent renderables from drawing.
function GM:PreDrawTranslucentRenderables(isDrawingDepth, isDrawSkybox, isDraw3DSkybox)
end

--- Called before the view model has been drawn.  
--- By default this hook also calls WEAPON:PreDrawViewModel, so you can use that if developing a scripted weapon.  
--- See GM:PostDrawViewModel for a hook that runs immediately after rendering a view model.  
--- See GM:PreDrawViewModels for a hook that runs before **all** view models are drawn within a frame.  
--- For view model hands, see GM:PreDrawPlayerHands.  
--- 🧱 **NOTE**: Provides a 3D rendering context  
--- @param vm GEntity @This is the view model entity before it is drawn
--- @param ply GPlayer @The owner of the view model.
--- @param weapon GWeapon @This is the weapon that is from the view model.
--- @return boolean @Return true to prevent the default view model rendering
function GM:PreDrawViewModel(vm, ply, weapon)
end

--- Called just before all view models (there are 3 per player, see Player:GetViewModel) and entities with `RENDERGROUP_VIEWMODEL` are drawn.  
--- See GM:PreDrawViewModel and GM:PostDrawViewModel for hooks that run for specific view models.  
--- You can use GM:PreDrawEffects as a "`PostDrawViewModels`" hook as it is called just after the all the view model(s) are drawn.  
--- 🧱 **NOTE**: Provides a 3D rendering context  
function GM:PreDrawViewModels()
end

--- Called before the gamemode is loaded.  
function GM:PreGamemodeLoaded()
end

--- Called before the player is drawn.  
--- @param player GPlayer @The player that is about to be drawn.
--- @param flags number @The STUDIO_ flags for this render operation.
--- @return boolean @Prevent default player rendering
function GM:PrePlayerDraw(player, flags)
end

--- Called by scripted_ents.Register.  
--- @param ent table @The entity table to be registered.
--- @param class string @The class name to be assigned.
--- @return boolean @Return `false` to prevent the entity from being registered
function GM:PreRegisterSENT(ent, class)
end

--- Called when a Scripted Weapon (SWEP) is about to be registered, allowing addons to alter the weapon's SWEP table with custom data for later usage. Called internally from weapons.Register.  
--- @param swep table @The SWEP table to be registered.
--- @param class string @The class name to be assigned.
--- @return boolean @Return `false` to prevent the weapon from being registered
function GM:PreRegisterSWEP(swep, class)
end

--- Called before the renderer is about to start rendering the next frame.  
--- @return boolean @Return true to prevent all rendering
function GM:PreRender()
end

--- Called just before performing an undo.  
--- @param undo table @The undo table
function GM:PreUndo(undo)
end

--- This will prevent `IN_ATTACK` from sending to server when player tries to shoot from C menu.  
--- @return boolean @Return true to prevent screen clicks.
function GM:PreventScreenClicks()
end

--- Called when a prop has been destroyed.  
--- @param attacker GPlayer @The person who broke the prop
--- @param prop GEntity @The entity that has been broken by the attacker.
function GM:PropBreak(attacker, prop)
end

--- Render the scene. Used by the `Stereoscopy` post-processing effect.  
--- ℹ **NOTE**: Materials rendered in this hook require `$ignorez` parameter to draw properly.  
--- @param origin GVector @View origin
--- @param angles GAngle @View angles
--- @param fov number @View FOV
--- @return boolean @Return `true` to override drawing the scene.
function GM:RenderScene(origin, angles, fov)
end

--- Used to render post processing effects.  
--- 🟥 **NOTE**: Provides a 2D rendering context  
function GM:RenderScreenspaceEffects()
end

--- Called when the game is reloaded from a Source Engine save system ( not the Sandbox saves or dupes ).  
--- See GM:Saved for a hook that is called when such a save file is created.  
function GM:Restored()
end

--- Called when the game is saved using the Source Engine save system (not the Sandbox saves or dupes).  
--- See GM:Restored for a hook that is called when such a save file is loaded.  
--- See also the saverestore for relevant functions.  
function GM:Saved()
end

--- Called when an NPC takes damage.  
--- ℹ **NOTE**: This hook is called only when a specific hit group of the NPC is hit. In cases where the hitgroup doesn't matter, you should use GM:EntityTakeDamage instead!  
--- @param npc GNPC @The NPC that takes damage
--- @param hitgroup number @The hitgroup (hitbox) enum where the NPC took damage
--- @param dmginfo GCTakeDamageInfo @Damage info
function GM:ScaleNPCDamage(npc, hitgroup, dmginfo)
end

--- This hook allows you to change how much damage a player receives when one takes damage to a specific body part.  
--- ℹ **NOTE**: This is called only for bullet damage a player receives, you should use GM:EntityTakeDamage instead if you need to detect **ALL** damage.  
--- @param ply GPlayer @The player taking damage.
--- @param hitgroup number @The hitgroup where the player took damage
--- @param dmginfo GCTakeDamageInfo @The damage info.
--- @return boolean @Return true to prevent damage that this hook is called for, stop blood particle effects and blood decals
function GM:ScalePlayerDamage(ply, hitgroup, dmginfo)
end

--- Called when player released the scoreboard button (`TAB` by default).  
function GM:ScoreboardHide()
end

--- Called when player presses the scoreboard button (`TAB` by default).  
--- @return boolean @Return true to prevent default scoreboard from showing.
function GM:ScoreboardShow()
end

--- An internal function used to send a death notice event to all clients.  
--- @param attacker GEntity|string|nil @The entity that caused the death.
--- @param inflictor string @The attacker's weapon class name or the attacker itself if no weapon was equipped.
--- @param victim GEntity|string @The entity that died.
--- @param flags number @Death notice flags
function GM:SendDeathNotice(attacker, inflictor, victim, flags)
end

--- Sets player run and sprint speeds.  
--- 🦟 **BUG**: [Using a speed of `0` can lead to prediction errors, and can cause players to move at `sv_maxvelocity`](https://github.com/Facepunch/garrysmod-issues/issues/2030)  
--- ⚠ **WARNING**: This is not a hook. Treat this as a utility function to set the player's speed.  
--- @param ply GPlayer @The player to set the speed of.
--- @param walkSpeed number @The walk speed.
--- @param runSpeed number @The run speed.
function GM:SetPlayerSpeed(ply, walkSpeed, runSpeed)
end

--- SetupMove is called before the engine process movements. This allows us to override the players movement.  
--- See Game Movement for an explanation on the move system.  
--- @param ply GPlayer @The player whose movement we are about to process
--- @param mv GCMoveData @The move data to override/use
--- @param cmd GCUserCmd @The command data
function GM:SetupMove(ply, mv, cmd)
end

--- Allows you to add extra positions to the player's [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community"). This is the place to call Global.AddOriginToPVS.  
--- @param ply GPlayer @The player
--- @param viewEntity GEntity @Players Player:GetViewEntity
function GM:SetupPlayerVisibility(ply, viewEntity)
end

--- Allows you to use render.Fog* functions to manipulate skybox fog.  
--- This will not be called for maps with no 3D skybox, or when the 3d skybox is disabled. (`r_3dsky 0`)  
--- @param scale number @The scale of 3D skybox
--- @return boolean @Return true to tell the engine that fog is set up
function GM:SetupSkyboxFog(scale)
end

--- Allows you to use render.Fog* functions to manipulate world fog.  
--- @return boolean @Return true to tell the engine that fog is set up
function GM:SetupWorldFog()
end

--- Called to decide whether a pair of entities should collide with each other. This is only called if Entity:SetCustomCollisionCheck was used on one or both entities.  
--- Where applicable, consider using constraint.NoCollide or a [logic_collision_pair](https://developer.valvesoftware.com/wiki/Logic_collision_pair) entity instead - they are considerably easier to use and may be more appropriate in some situations.  
--- ⚠ **WARNING**: This hook **must** return the same value consistently for the same pair of entities.  
--- If an entity changed in such a way that its collision rules change, you **must** call Entity:CollisionRulesChanged on that entity immediately - **not in this hook and not in physics callbacks.**  
--- As long as you religiously follow the rules set by the examples this hook will work reliably without breaking, even a small mistake might break physics.  
--- 🦟 **BUG**: [This hook can cause all physics to break under certain conditions.](https://github.com/Facepunch/garrysmod-issues/issues/642)  
--- @param ent1 GEntity @The first entity in the collision poll.
--- @param ent2 GEntity @The second entity in the collision poll.
--- @return boolean @Whether the entities should collide.
function GM:ShouldCollide(ent1, ent2)
end

--- Called to determine if the Global.LocalPlayer should be drawn.  
--- If you're using this hook to draw a player for a GM:CalcView hook, then you may want to consider using the `drawviewer` variable you can use in your Structures/CamData table instead.  
--- ℹ **NOTE**: This hook has an internal cache that is reset at the start of every frame. This will prevent this hook from running in certain cases. This cache is reset in cam.Start and in a future update in render.RenderView when rendering extra views.  
--- @param ply GPlayer @The player.
--- @return boolean @`true` to draw the player, `false` to hide.
function GM:ShouldDrawLocalPlayer(ply)
end

--- Called when a player executes `gm_showhelp` console command. (Default bind is `F1`)  
--- @param ply GPlayer @Player who executed the command
function GM:ShowHelp(ply)
end

--- Called when a player executes `gm_showspare1` console command ( Default bind is `F3` ).  
--- @param ply GPlayer @Player who executed the command.
function GM:ShowSpare1(ply)
end

--- Called when a player executes `gm_showspare2` console command ( Default bind is `F4` ).  
--- @param ply GPlayer @Player who executed the command.
function GM:ShowSpare2(ply)
end

--- Called when a player executes `gm_showteam` console command. ( Default bind is `F2` )  
--- @param ply GPlayer @Player who executed the command
function GM:ShowTeam(ply)
end

--- Called whenever the Lua environment is about to be shut down, for example on map change, or when the server is going to shut down.  
function GM:ShutDown()
end

--- Called when the Spawnmenu is Created.  
function GM:SpawnMenuCreated()
end

--- Called when spawn icon is generated.  
--- @param lastmodel string @File path of previously generated model.
--- @param imagename string @File path of the generated icon.
--- @param modelsleft number @Amount of models left to generate.
function GM:SpawniconGenerated(lastmodel, imagename, modelsleft)
end

--- Runs when the user tries to open the chat box.  
--- ⚠ **WARNING**: Returning `true` won't stop the chatbox from taking VGUI focus. chat.Close may be of use to mitigate that, or usage of GM:PlayerBindPress.  
--- @param isTeamChat boolean @Whether the message was sent through team chat.
--- @return boolean @Return true to hide the default chat box.
function GM:StartChat(isTeamChat)
end

--- Allows you to change the players inputs before they are processed by the server. This function is also called for bots, making it the best solution to control them.  
--- This is basically a shared version of GM:CreateMove.  
--- ℹ **NOTE**: This hook is predicted, but not by usual means, it is called when a CUserCmd is generated on the client, and on the server when it is received, so it is necessary for this hook to be called clientside even on singleplayer  
--- @param ply GPlayer @The player
--- @param ucmd GCUserCmd @The usercommand
function GM:StartCommand(ply, ucmd)
end

--- Called right before an entity starts driving. Overriding this hook will cause it to not call drive.Start and the player will not begin driving the entity.  
--- @param ent GEntity @The entity that is going to be driven
--- @param ply GPlayer @The player that is going to drive the entity
function GM:StartEntityDriving(ent, ply)
end

--- Called every rendered frame on client, except when the game is paused.  
--- Called every  game tick on the server. This will be the same as GM:Tick on the server when there is no lag, but will only be called once every processed server frame during lag.  
--- Global.CurTime is guaranteed to be different with each call to this hook on the server.  
--- See GM:Tick for a hook that runs every tick on both the client and server.  
--- ℹ **NOTE**: On server, this hook **WILL NOT** run if the server is empty, unless you set the ConVar `sv_hibernate_think` to `1`.  
function GM:Think()
end

--- Called every game tick. engine.TickCount is guaranteed to be different between each call.  
--- Server side, this is similar to GM:Think (See that page for details).  
--- The default tickrate is `66.6666` (15 millisecond intervals). It can be changed via the `-tickrate` [command line option](Command_Line_Parameters).  
--- See engine.TickInterval for a function to retrieve this data at runtime.  
--- ℹ **NOTE**: This hook **WILL NOT** run if the server is empty, unless you set the ConVar `sv_hibernate_think` to 1  
function GM:Tick()
end

--- ℹ **NOTE**: Isn't called when CalcMainActivity returns a valid override sequence id  
--- Allows you to translate player activities.  
--- @param ply GPlayer @The player
--- @param act number @The activity
--- @return number @The new, translated activity
function GM:TranslateActivity(ply, act)
end

--- Animation updates (pose params etc) should be done here.  
--- @param ply GPlayer @The player to update the animation info for.
--- @param velocity GVector @The player's velocity.
--- @param maxSeqGroundSpeed number @Speed of the animation - used for playback rate scaling.
function GM:UpdateAnimation(ply, velocity, maxSeqGroundSpeed)
end

--- Called when user clicks on a VGUI panel.  
--- @param button number @The button that was pressed, see Enums/MOUSE
--- @return boolean @Return true if the mouse click should be ignored or not.
function GM:VGUIMousePressAllowed(button)
end

--- Called when a mouse button is pressed on a VGUI element or menu.  
--- @param pnl GPanel @Panel that currently has focus.
--- @param mouseCode number @The key that the player pressed using Enums/MOUSE.
function GM:VGUIMousePressed(pnl, mouseCode)
end

--- Called when a variable is edited on an Entity (called by Edit Properties... menu). See Editable Entities for more information.  
--- ⚠ **WARNING**: This hook is called to change a variable and not after a variable was changed  
--- @param ent GEntity @The entity being edited
--- @param ply GPlayer @The player doing the editing
--- @param key string @The name of the variable
--- @param val string @The new value, as a string which will later be converted to its appropriate type
--- @param editor table @The edit table defined in Entity:NetworkVar
function GM:VariableEdited(ent, ply, key, val, editor)
end

--- Called when you are driving a vehicle. This hook works just like GM:Move.  
--- This hook is called before GM:Move and will be called when GM:PlayerTick is not.  
--- @param ply GPlayer @Player who is driving the vehicle
--- @param veh GVehicle @The vehicle being driven
--- @param mv GCMoveData @Move data
function GM:VehicleMove(ply, veh, mv)
end

--- Called as a weapon entity is picked up by a player. (Including Player:Give)  
--- Contrary to the name of the hook, it is **not called** when the player switches their active weapon to another.  
--- See also GM:PlayerDroppedWeapon and GM:PlayerCanPickupWeapon.  
--- ℹ **NOTE**: At the time when this hook is called Entity:GetOwner will return `NULL`. The owner is set on the next frame.  
--- ℹ **NOTE**: This will not be called when picking up a weapon you already have as the weapon will be removed and WEAPON:EquipAmmo will be called instead.  
--- @param weapon GWeapon @The equipped weapon.
--- @param owner GPlayer @The player that is picking up the weapon.
function GM:WeaponEquip(weapon, owner)
end
