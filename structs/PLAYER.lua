--- @meta

--- This page describes all **default** fields for a player class.  
--- @class SPLAYER
--- @field DisplayName string @The 'nice' name of the player class for display in User Interface and such.
--- @field WalkSpeed? number @How fast to move when not running
--- @field RunSpeed? number @How fast to move when running/sprinting
--- @field SlowWalkSpeed? number @How fast to move when slow walking, which is activated via the <key>+WALK</key> keybind.
--- @field CrouchedWalkSpeed? number @Multiply walk speed by this when crouching
--- @field DuckSpeed? number @How fast to go from not ducking, to ducking
--- @field UnDuckSpeed? number @How fast to go from ducking, to not ducking
--- @field JumpPower? number @How powerful a jump should be
--- @field CanUseFlashlight? boolean @Can the player use the flashlight
--- @field MaxHealth? number @Max health we can have
--- @field MaxArmor? number @Max armor the player can have
--- @field StartHealth? number @How much health we start with
--- @field StartArmor? number @How much armour we start with
--- @field DropWeaponOnDie? boolean @Do we drop our weapon when we die
--- @field TeammateNoCollide? boolean @Do we collide with teammates or run straight through them
--- @field AvoidPlayers? boolean @Automatically swerves around other players
--- @field UseVMHands? boolean @Uses viewmodel hands
local PLAYER = {}

--- Called when the player's class was changed from this class.  
function PLAYER:ClassChanged()
end

--- Called when the player dies  
function PLAYER:Death()
end

--- Called from GM:FinishMove.  
--- ⚠ **WARNING**: This hook will not work if the current gamemode overrides GM:FinishMove and does not call this hook.  
--- ℹ **NOTE**: This hook is run after the drive.FinishMove has been called.  
--- @param mv GCMoveData 
--- @return boolean @Return true to prevent default action
function PLAYER:FinishMove(mv)
end

--- Called on player spawn to determine which hand model to use  
--- @return table @A table containing info about view model hands model to be set
function PLAYER:GetHandsModel()
end

--- Called when the class object is created  
function PLAYER:Init()
end

--- Called on spawn to give the player their default loadout  
function PLAYER:Loadout()
end

--- Called from GM:Move.  
--- ⚠ **WARNING**: This hook will not work if the current gamemode overrides GM:Move and does not call this hook.  
--- ℹ **NOTE**: This hook is run after the drive.Move has been called.  
--- @param mv GCMoveData @Movement information
--- @return boolean @Return true to prevent default action
function PLAYER:Move(mv)
end

--- Called after the viewmodel has been drawn  
--- @param viewmodel GEntity @The viewmodel
--- @param weapon GEntity @The weapon
function PLAYER:PostDrawViewModel(viewmodel, weapon)
end

--- Called before the viewmodel is drawn  
--- @param viewmodel GEntity @The viewmodel
--- @param weapon GEntity @The weapon
function PLAYER:PreDrawViewModel(viewmodel, weapon)
end

--- Called when we need to set player model from the class.  
--- ℹ **NOTE**: This will only be called if you have not overridden GM:PlayerSetModel or call this function from it or anywhere else using player_manager.RunClass  
function PLAYER:SetModel()
end

--- Setup the network table accessors.  
function PLAYER:SetupDataTables()
end

--- Called when the player spawns  
function PLAYER:Spawn()
end

--- Called from GM:CreateMove.  
--- ⚠ **WARNING**: This hook will not work if the current gamemode overrides GM:SetupMove and does not call this hook.  
--- ℹ **NOTE**: This hook is run after the drive.StartMove has been called.  
--- @param mv GCMoveData 
--- @param cmd GCUserCmd 
--- @return boolean @Return true to prevent default action
function PLAYER:StartMove(mv, cmd)
end

--- Called when the player changes their weapon to another one causing their viewmodel model to change  
--- @param viewmodel GEntity @The viewmodel that is changing
--- @param old string @The old model
--- @param new string @The new model
function PLAYER:ViewModelChanged(viewmodel, old, new)
end
