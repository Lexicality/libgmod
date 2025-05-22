--- @meta

--- Information about Scripted Weapons (SWEPs),  
--- used by SANDBOX:PlayerGiveSWEP and in SWEP creation.  
--- For list of callbacks, see WEAPON Hooks.  
--- While some of the fields may be serverside or clientside only, it is recommended to provide them on both so  
--- addons could use their values.  
--- @class SSWEP : GWeapon
--- @field ClassName string @Entity class name of the SWEP (file or folder name of your SWEP)
--- @field ClassNameOverride string @If set, overrides the classname of the SWEP.
--- @field Category? string @The spawn menu category that this weapon
--- @field Spawnable? boolean @Whether or not this weapon can be obtained through the
--- @field AdminOnly? boolean @If spawnable, this variable determines whether only
--- @field PrintName? string @The name of the SWEP displayed in the spawn menu.
--- @field Base? string @The weapon's base script, relative to `lua/weapons`.
--- @field m_WeaponDeploySpeed? number @The deploy speed multiplier
--- @field Owner GEntity @<deprecated notag="true">Use Entity:GetOwner() instead.</deprecated>
--- @field Weapon GWeapon @<deprecated notag="true">Use `SWEP` instead
--- @field Author string @The SWEP's author.
--- @field Contact string @The contact information regarding the SWEP's author.
--- @field Purpose string @The purpose of the SWEP.
--- @field Instructions string @The instructions regarding the SWEP's usage.
--- @field ViewModel? string @Relative path to the SWEP's view model.
--- @field ViewModelFlip? boolean @Used primarily for Counter Strike: Source view models, this variable is used to flip them back to normal.
--- @field ViewModelFlip1? boolean @Behaves similarly to `ViewModelFlip`, but for the second view model.
--- @field ViewModelFlip2? boolean @Behaves similarly to `ViewModelFlip`, but for the third view model.
--- @field ViewModelFOV? number @The field of view percieved whilst wielding this `SWEP`.
--- @field WorldModel? string @Relative path to the SWEP's world model.
--- @field AutoSwitchFrom? boolean @Whether this weapon can be autoswitched
--- @field AutoSwitchTo? boolean @Whether this weapon can be autoswitched to
--- @field Weight? number @Determines the priority of the weapon when
--- @field BobScale? number @The scale of the viewmodel bob (viewmodel movement
--- @field SwayScale? number @The scale of the viewmodel sway (viewmodel
--- @field BounceWeaponIcon? boolean @Should the weapon icon bounce in weapon
--- @field DrawWeaponInfoBox? boolean @Should draw the weapon selection info
--- @field DrawAmmo? boolean @Should we draw the default HL2 ammo counter?
--- @field DrawCrosshair? boolean @Should we draw the default crosshair?
--- @field RenderGroup number @The SWEP render group, see Enums/RENDERGROUP
--- @field Slot? number @Slot in the weapon selection menu, starts with `0`
--- @field SlotPos? number @Position in the slot, should be in the range `0-128`
--- @field SpeechBubbleLid? number @Internal variable for drawing the info box in weapon selection
--- @field WepSelectIcon? number @Path to
--- @field CSMuzzleFlashes? boolean @Should we use Counter-Strike muzzle
--- @field CSMuzzleX? boolean @Use the X shape muzzle flash instead of the
--- @field Primary table @Primary attack settings
--- @field Secondary table @Secondary attack settings, has same fields as Primary attack settings
--- @field UseHands? boolean @Makes the player models hands bonemerged onto
--- @field Folder string @The folder from where the weapon was loaded
--- @field AccurateCrosshair? boolean @Makes the default SWEP crosshair be
--- @field DisableDuplicator? boolean @Disable the ability for players to duplicate this
--- @field ScriptedEntityType? string @Sets the spawnmenu content icon type
--- @field m_bPlayPickupSound? boolean @If set to false, the weapon will not play the
--- @field IconOverride? string @If set,
_G.SWEP = {}

--- Called when another entity fires an event to this entity.  
--- @param inputName string @The name of the input that was triggered.
--- @param activator GEntity @The initial cause for the input getting triggered.
--- @param called GEntity @The entity that directly trigger the input.
--- @param data string @The data passed.
--- @return boolean @Should we suppress the default action for this input?
function SWEP:AcceptInput(inputName, activator, called, data)
end

--- Allows you to adjust the mouse sensitivity. This hook only works if you haven't overridden GM:AdjustMouseSensitivity.  
--- @return number @Sensitivity scale
function SWEP:AdjustMouseSensitivity()
end

--- Returns how much of primary ammo the player has.  
--- @return number @The amount of primary ammo player has
function SWEP:Ammo1()
end

--- Returns how much of secondary ammo the player has.  
--- @return number @The amount of secondary ammo player has
function SWEP:Ammo2()
end

--- Allows you to adjust player view while this weapon in use.  
--- This hook is called from the default implementation of GM:CalcView which is [here](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/gamemodes/base/gamemode/cl_init.lua#L387-L395). Therefore, it will not be called if any other hook added to `CalcView` returns any value, or if the current gamemode overrides the default hook and does not call the SWEP function.  
--- @param ply GPlayer @The owner of weapon
--- @param pos GVector @Current position of players view
--- @param ang GAngle @Current angles of players view
--- @param fov number @Current FOV of players view
--- @return GVector @New position of players view
--- @return GAngle @New angle of players view
--- @return number @New FOV of players view
function SWEP:CalcView(ply, pos, ang, fov)
end

--- Allows overriding the position and angle of the viewmodel. This hook only works if you haven't overridden GM:CalcViewModelView.  
--- @param ViewModel GEntity @The viewmodel entity
--- @param OldEyePos GVector @Original position (before viewmodel bobbing and swaying)
--- @param OldEyeAng GAngle @Original angle (before viewmodel bobbing and swaying)
--- @param EyePos GVector @Current position
--- @param EyeAng GAngle @Current angle
--- @return GVector @New position
--- @return GAngle @New angle
function SWEP:CalcViewModelView(ViewModel, OldEyePos, OldEyeAng, EyePos, EyeAng)
end

--- Called when a Citizen NPC is looking around to a (better) weapon to pickup.  
--- @return boolean @Return true to allow this weapon to be picked up by NPCs.
function SWEP:CanBePickedUpByNPCs()
end

--- Helper function for checking for no ammo.  
--- @return boolean @Can use primary attack
function SWEP:CanPrimaryAttack()
end

--- Helper function for checking for no ammo.  
--- @return boolean @Can use secondary attack
function SWEP:CanSecondaryAttack()
end

--- Allows you to use any numbers you want for the ammo display on the HUD.  
--- Can be useful for weapons that don't use standard ammo.  
--- @return table @The new ammo display settings
function SWEP:CustomAmmoDisplay()
end

--- Called when player has just switched to this weapon.  
--- ℹ **NOTE**: Due to this hook being predicted, it is not called clientside in singleplayer at all, and in multiplayer it will not be called clientside if the weapon is switched with Player:SelectWeapon or the "use" console command, however it will be called clientside with the default weapon selection menu and when using CUserCmd:SelectWeapon  
--- @return boolean @Return true to allow switching away from this weapon using `lastinv` command
function SWEP:Deploy()
end

--- Called when the crosshair is about to get drawn, and allows you to override it.  
--- This function will **not** be called if `SWEP.DrawCrosshair` is set to false or if player is affected by Player:CrosshairDisable.  
--- @param x number @X coordinate of the crosshair.
--- @param y number @Y coordinate of the crosshair.
--- @return boolean @Return true to override the default crosshair.
function SWEP:DoDrawCrosshair(x, y)
end

--- Called so the weapon can override the impact effects it makes.  
--- ℹ **NOTE**: If the bullet was fired in a predicted environment, the hook will not be called on the `CLIENT` realm.  
--- ℹ **NOTE**: This hook will also be called when `WEAPON:GetOwner():FireBullets` is called. While in `MULTIPLAYER`, this hook will be called on the respective state, but in `SINGLEPLAYER`, this hook will always be called on the `CLIENT` realm even if `FireBullets` was called on the `SERVER`.  
--- @param tr table @A Structures/TraceResult from player's eyes to the impact point
--- @param damageType number @The damage type of bullet
--- @return boolean @Return true to not do the default thing - which is to call `UTIL_ImpactTrace` in C++
function SWEP:DoImpactEffect(tr, damageType)
end

--- This hook allows you to draw on screen while this weapon is in use.  
--- If you want to draw a custom crosshair, consider using WEAPON:DoDrawCrosshair instead.  
function SWEP:DrawHUD()
end

--- This hook allows you to draw on screen while this weapon is in use. This hook is called **before** WEAPON:DrawHUD and is equivalent of GM:HUDPaintBackground.  
function SWEP:DrawHUDBackground()
end

--- This hook draws the selection icon in the weapon selection menu.  
--- @param x number @X coordinate of the selection panel
--- @param y number @Y coordinate of the selection panel
--- @param width number @Width of the selection panel
--- @param height number @Height of the selection panel
--- @param alpha number @Alpha value of the selection panel
function SWEP:DrawWeaponSelection(x, y, width, height, alpha)
end

--- Called when we are about to draw the world model.  
--- @param flags number @The STUDIO_ flags for this render operation.
function SWEP:DrawWorldModel(flags)
end

--- Called when we are about to draw the translucent world model.  
--- @param flags number @The STUDIO_ flags for this render operation.
function SWEP:DrawWorldModelTranslucent(flags)
end

--- Called when a player or NPC has picked the weapon up.  
--- @param NewOwner GEntity @The one who picked the weapon up
function SWEP:Equip(NewOwner)
end

--- The player has picked up the weapon and has taken the ammo from it.  
--- The weapon will be removed immediately after this call.  
--- @param ply GPlayer @The player who picked up the weapon
function SWEP:EquipAmmo(ply)
end

--- Called before firing animation events, such as muzzle flashes or shell ejections.  
--- This will only be called serverside for 3000-range events, and clientside for 5000-range  and other events.  
--- @param pos GVector @Position of the effect.
--- @param ang GAngle @Angle of the effect.
--- @param event number @The event ID of happened even
--- @param options string @Name or options of the event.
--- @param source GEntity @The source entity
--- @return boolean @Return true to disable the effect.
function SWEP:FireAnimationEvent(pos, ang, event, options, source)
end

--- This hook allows you to freeze players screen.  
--- ℹ **NOTE**: Player will still be able to move or shoot  
--- @return boolean @Return true to freeze moving the view
function SWEP:FreezeMovement()
end

--- This hook is for NPCs, you return what they should try to do with it.  
--- ⚠ **WARNING**: Calling NPC:CapabilitiesGet in this hook on the same entity can cause infinite loops since that function adds the result of WEAPON:GetCapabilities on top of the return value.  
--- @return ECAP @A number defining what NPC should do with the weapon
function SWEP:GetCapabilities()
end

--- Called when the weapon is used by NPCs to determine how accurate the bullets fired should be.  
--- The inaccuracy is simulated by changing the NPC:GetAimVector based on the value returned from this hook.  
--- @param proficiency number @How proficient the NPC is with this gun
--- @return number @An amount of degrees the bullets should deviate from the NPC's NPC:GetAimVector
function SWEP:GetNPCBulletSpread(proficiency)
end

--- Called when the weapon is used by NPCs to tell the NPC how to use this weapon. Controls how long the NPC can or should shoot continuously.  
--- @return number @Minimum amount of bullets per burst
--- @return number @Maximum amount of bullets per burst
--- @return number @Delay between each shot, aka firerate
function SWEP:GetNPCBurstSettings()
end

--- Called when the weapon is used by NPCs to tell the NPC how to use this weapon. Controls amount of time the NPC can rest (not shoot) between bursts.  
--- @return number @Minimum amount of time the NPC can rest (not shoot) between bursts in seconds
--- @return number @Maximum amount of time the NPC can rest (not shoot) between bursts in seconds
function SWEP:GetNPCRestTimes()
end

--- Allows you to override where the tracer effect comes from. ( Visual bullets )  
--- @return GVector @The new position to start tracer effect from
function SWEP:GetTracerOrigin()
end

--- This hook allows you to adjust view model position and angles.  
--- @param EyePos GVector @Current position
--- @param EyeAng GAngle @Current angle
--- @return GVector @New position
--- @return GAngle @New angle
function SWEP:GetViewModelPosition(EyePos, EyeAng)
end

--- This hook determines which parts of the HUD to draw.  
--- @param element string @The HUD element in question
--- @return boolean @Return false to hide this HUD element
function SWEP:HUDShouldDraw(element)
end

--- Called when weapon tries to holster.  
--- ℹ **NOTE**: This will only be called serverside when using Player:SelectWeapon as that function immediately switches the weapon out of prediction.  
--- 🦟 **BUG**: [This is called twice for every holster clientside, one in Prediction and one not.](https://github.com/Facepunch/garrysmod-issues/issues/2854)  
--- 🦟 **BUG**: [Before WEAPON:OnRemove is called, this function is only called serverside.](https://github.com/Facepunch/garrysmod-issues/issues/3133)  
--- @param weapon GEntity @The weapon we are trying switch to.
--- @return boolean @Return true to allow weapon to holster
function SWEP:Holster(weapon)
end

--- Called when the weapon entity is created.  
--- ℹ **NOTE**: Entity:GetOwner will return NULL at this point because the weapon is not equpped by a player or NPC yet. Use WEAPON:Equip or WEAPON:Deploy if you need the owner to be valid.  
--- 🦟 **BUG**: [This is not called serverside after a quicksave.](https://github.com/Facepunch/garrysmod-issues/issues/3015)  
function SWEP:Initialize()
end

--- Called when the engine sets a value for this scripted weapon.  
--- See GM:EntityKeyValue for a hook that works for all entities.  
--- See ENTITY:KeyValue for an  hook that works for scripted entities.  
--- @param key string @The key that was affected.
--- @param value string @The new value.
--- @return boolean @Return true to suppress this KeyValue or return false or nothing to apply this key value.
function SWEP:KeyValue(key, value)
end

--- Called when weapon is dropped by Player:DropWeapon.  
--- See also WEAPON:OwnerChanged.  
--- @param owner GEntity @The entity that dropped the weapon.
function SWEP:OnDrop(owner)
end

--- Called whenever the weapons Lua script is reloaded.  
function SWEP:OnReloaded()
end

--- Called when the swep is about to be removed.  
function SWEP:OnRemove()
end

--- Called when the weapon entity is reloaded from a Source Engine save (not the Sandbox saves or dupes) or on a changelevel (for example Half-Life 2 campaign level transitions).  
--- For the duplicator callbacks, see ENTITY:OnDuplicated.  
--- See also saverestore for relevant functions.  
function SWEP:OnRestore()
end

--- Called when weapon is dropped or picked up by a new player. This can be called clientside for all players on the server if the weapon has no owner and is picked up.  
--- See also WEAPON:OnDrop.  
function SWEP:OwnerChanged()
end

--- Called after the view model has been drawn while the weapon in use. This hook is called from the default implementation of GM:PostDrawViewModel, and as such, will not occur if it has been overridden.  
--- WEAPON:ViewModelDrawn is an alternative hook which is always called before GM:PostDrawViewModel.  
--- @param vm GEntity @This is the view model entity after it is drawn
--- @param weapon GWeapon @This is the weapon that is from the view model (same as self)
--- @param ply GPlayer @The owner of the view model
function SWEP:PostDrawViewModel(vm, weapon, ply)
end

--- Allows you to modify viewmodel while the weapon in use before it is drawn. This hook only works if you haven't overridden GM:PreDrawViewModel.  
--- @param vm GEntity @This is the view model entity before it is drawn.
--- @param weapon GWeapon @This is the weapon that is from the view model.
--- @param ply GPlayer @The the owner of the view model.
function SWEP:PreDrawViewModel(vm, weapon, ply)
end

--- Called when primary attack button ( +attack ) is pressed.  
--- When in singleplayer, this function is only called in the server realm. When in multiplayer, the hook will be called on both the server and the client in order to allow for Prediction.  
--- You can force the hook to always be called on client like this:  
--- ```  
--- if ( game.SinglePlayer() ) then self:CallOnClient( "PrimaryAttack" ) end  
--- ```  
--- Note that due to prediction, in multiplayer SWEP:PrimaryAttack is called multiple times per one "shot" with the gun. To work around that, use Global.IsFirstTimePredicted.  
function SWEP:PrimaryAttack()
end

--- A convenience function that draws the weapon info box, used in WEAPON:DrawWeaponSelection.  
--- @param x number @The x co-ordinate of box position
--- @param y number @The y co-ordinate of box position
--- @param alpha number @Alpha value for the box
function SWEP:PrintWeaponInfo(x, y, alpha)
end

--- Called when the reload key ( +reload ) is pressed.  
function SWEP:Reload()
end

--- Called every frame just before GM:RenderScene.  
--- Used by the Tool Gun to render view model screens (TOOL:DrawToolScreen).  
--- ℹ **NOTE**: Materials rendered in this hook require $ignorez parameter to draw properly.  
function SWEP:RenderScreen()
end

--- Called when secondary attack button ( +attack2 ) is pressed.  
--- For issues with this hook being called rapidly on the client side, see the global function Global.IsFirstTimePredicted.  
function SWEP:SecondaryAttack()
end

--- Sets the hold type of the weapon. This must be called on **both** the server and the client to work properly.  
--- **NOTE:** You should avoid calling this function and call Weapon:SetHoldType now.  
--- @param name string @Name of the hold type
function SWEP:SetWeaponHoldType(name)
end

--- Called when the SWEP should set up its  Data Tables.  
function SWEP:SetupDataTables()
end

--- A convenient function to shoot bullets.  
--- @param damage number @The damage of the bullet
--- @param num_bullets number @Amount of bullets to shoot
--- @param aimcone number @Spread of bullets
--- @param ammo_type? string @Ammo type of the bullets
--- @param force? number @Force of the bullets
--- @param tracer? number @Show a tracer on every x bullets
function SWEP:ShootBullet(damage, num_bullets, aimcone, ammo_type, force, tracer)
end

--- A convenience function to create shoot effects.  
function SWEP:ShootEffects()
end

--- Called to determine if the view model should be drawn or not.  
--- @return boolean @Return true to draw the view model, false otherwise.
function SWEP:ShouldDrawViewModel()
end

--- Should this weapon be dropped when its owner dies?  
--- This only works if the player has Player:ShouldDropWeapon set to true.  
--- @return boolean @Return true to drop the weapon, false otherwise
function SWEP:ShouldDropOnDie()
end

--- A convenience function to remove primary ammo from clip.  
--- @param amount number @Amount of primary ammo to remove
function SWEP:TakePrimaryAmmo(amount)
end

--- A convenience function to remove secondary ammo from clip.  
--- @param amount number @How much of secondary ammo to remove
function SWEP:TakeSecondaryAmmo(amount)
end

--- Called when the weapon thinks.  
--- This hook won't be called during the deploy animation and when using Weapon:DefaultReload.  
--- Despite being a predicted hook, this hook is called clientside in single player (for your convenience), however it will not be recognized as a predicted hook via Player:GetCurrentCommand, and will run more often in this case.  
--- This hook will be called before Player movement is processed on the client, and after on the server.  
--- ℹ **NOTE**: This hook only runs while the weapon is in players hands. It does not run while it is carried by an NPC.  
--- 🦟 **BUG**: [This will not be run during deploy animations after a serverside-only deploy. This usually happens after picking up and dropping an object with +use.](https://github.com/Facepunch/garrysmod-issues/issues/2855)  
function SWEP:Think()
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Use Weapon:Think instead.  
--- Alias of Weapon:Think.  
function SWEP:Tick()
end

--- Translate a player's Activity into a weapon's activity, depending on how you want the player to be holding the weapon.  
--- For example, ACT_MP_RUN becomes ACT_HL2MP_RUN_PISTOL.  
--- @param act EACT @The activity to translate
--- @return EACT @The translated activity
function SWEP:TranslateActivity(act)
end

--- Allows to change players field of view while player holds the weapon.  
--- ℹ **NOTE**: This hook must be defined shared and return same value on both to properly affect Area Portals.  
--- @param fov number @The current/default FOV.
--- @return number @The target FOV.
function SWEP:TranslateFOV(fov)
end

--- Called straight after the view model has been drawn. This is called before GM:PostDrawViewModel and WEAPON:PostDrawViewModel.  
--- @param ViewModel GEntity @Players view model
function SWEP:ViewModelDrawn(ViewModel)
end
