--- @meta

--- Don't move  
_G.MOVETYPE_NONE = 0
--- For players, in TF2 commander view, etc  
_G.MOVETYPE_ISOMETRIC = 1
--- Player only, moving on the ground  
_G.MOVETYPE_WALK = 2
--- Monster/NPC movement  
_G.MOVETYPE_STEP = 3
--- Fly, no gravity  
_G.MOVETYPE_FLY = 4
--- Fly, with gravity  
_G.MOVETYPE_FLYGRAVITY = 5
--- Physics movetype  
_G.MOVETYPE_VPHYSICS = 6
--- Doesn't collide with the world, but does push and crush entities.  
--- This is what is used by the engine for elevators, trains, doors, moving water, etc.  
--- In order to work properly, the entity needs to have specific Save Values/Internal Variables set which tell it how long it should be moving for.  
--- **Note:** This same process can be done for both position and angle.  
--- 1. You'll need to Get an existing Save Value called `ltime`  
--- 2. Calculate how long (in seconds) the entity will be moving before it reaches its destination.  
--- As a simple example, this can be done via `duration = distance / speed`  
--- 3. Set the Save Value for `m_flMoveDoneTime` to the value you retrieved for `ltime` plus the duration calculated in step 2.  
--- Put more simply: `m_flMoveDoneTime = ltime + duration`  
--- 4. Set the entity's velocity to move it to the destination at the speed used in step 2.  
--- Once the duration of the move has elapsed, the entity will stop moving.  If you have done your calculations correctly, it should stop exactly at the desired destination.  
--- ℹ **NOTE**: MOVETYPE_PUSH entities only move during Entity:Think so if you want smooth movement, you need to set Entity:NextThink to Global.CurTime, which instructs the entity to execute Entity:Think as quickly as possible.  
_G.MOVETYPE_PUSH = 7
--- Noclip  
_G.MOVETYPE_NOCLIP = 8
--- For players, when moving on a ladder  
_G.MOVETYPE_LADDER = 9
--- Spectator movetype. DO **NOT** use this to make player spectate  
_G.MOVETYPE_OBSERVER = 10
--- Custom movetype, can be applied to the player to prevent the default movement code from running, while still calling the related hooks  
_G.MOVETYPE_CUSTOM = 11

--- Enumerations used by Entity:SetMoveType and Entity:GetMoveType.  
--- @alias EMOVETYPE `MOVETYPE_NONE`|`MOVETYPE_ISOMETRIC`|`MOVETYPE_WALK`|`MOVETYPE_STEP`|`MOVETYPE_FLY`|`MOVETYPE_FLYGRAVITY`|`MOVETYPE_VPHYSICS`|`MOVETYPE_PUSH`|`MOVETYPE_NOCLIP`|`MOVETYPE_LADDER`|`MOVETYPE_OBSERVER`|`MOVETYPE_CUSTOM`
