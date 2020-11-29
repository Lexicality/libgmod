--- @class GPlayerClass
--- @field Player GPlayer
local PLAYER = {}

PLAYER.DisplayName = "Default Class"
--- How fast to move when not running
PLAYER.WalkSpeed = 400
--- How fast to move when running
PLAYER.RunSpeed = 600
--- Multiply move speed by this when crouching
PLAYER.CrouchedWalkSpeed = 0.3
--- How fast to go from not ducking, to ducking
PLAYER.DuckSpeed = 0.3
--- How fast to go from ducking, to not ducking
PLAYER.UnDuckSpeed = 0.3
--- How powerful our jump should be
PLAYER.JumpPower = 200
--- Can we use the flashlight
PLAYER.CanUseFlashlight = true
--- Max health we can have
PLAYER.MaxHealth = 100
--- How much health we start with
PLAYER.StartHealth = 100
--- How much armour we start with
PLAYER.StartArmor = 0
--- Do we drop our weapon when we die
PLAYER.DropWeaponOnDie = false
--- Do we collide with teammates or run straight through them
PLAYER.TeammateNoCollide = true
--- Automatically swerves around other players
PLAYER.AvoidPlayers = true
--- Uses viewmodel hands
PLAYER.UseVMHands = true

--- Set up the network table accessors
function PLAYER:SetupDataTables()
end

--- Called when the class object is created (shared)
function PLAYER:Init()
end

--- Called serverside only when the player spawns
function PLAYER:Spawn()
end

--- Called on spawn to give the player their default loadout
function PLAYER:Loadout()
end

--- Called to set the player's model
function PLAYER:SetModel()
end

--- Called when the player dies
--- @param inflictor GEntity
--- @param attacker GEntity
function PLAYER:Death(inflictor, attacker)
end

-- Clientside only

--- Setup the player's view
--- @param view table
function PLAYER:CalcView(view)
end

--- Creates the user command on the client
--- @param cmd GCUserCmd
--- @return boolean|nil
function PLAYER:CreateMove(cmd)
end

--- Return true if we should draw the local player
--- @return boolean|nil
function PLAYER:ShouldDrawLocal()
end

-- Shared

--- Copies from the user command to the move
--- @param cmd GCUserCmd
--- @param mv GCMoveData
--- @return boolean|nil
function PLAYER:StartMove(cmd, mv)
end

--- Runs the move (can run multiple times for the same client)
--- @param mv GCMoveData
--- @return boolean|nil
function PLAYER:Move(mv)
end

--- Copy the results of the move back to the Player
--- @param mv GCMoveData
--- @return boolean|nil
function PLAYER:FinishMove(mv)
end

--- Called when the player changes their weapon to another one causing their viewmodel model to change
--- @param vm GEntity @The viewmodel that is changing
--- @param old string @The old model
--- @param new string @The new model
function PLAYER:ViewModelChanged(vm, old, new)
end

--- Called before the viewmodel is being drawn (clientside)
--- @param vm GEntity @The viewmodel
--- @param weapon GEntity @The weapon
function PLAYER:PreDrawViewModel(vm, weapon)
end

--- Called after the viewmodel has been drawn (clientside)
--- @param vm GEntity @The viewmodel
--- @param weapon GEntity @The weapon
function PLAYER:PostDrawViewModel(vm, weapon)
end

--- Called on player spawn to determine which hand model to use
--- @return table|nil @A table containing model, skin and body
function PLAYER:GetHandsModel()
end
