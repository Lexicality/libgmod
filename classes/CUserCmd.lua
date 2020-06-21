--- @class GCUserCmd
--- A class used to store the player inputs, such as mouse movement, view angles, Enums/IN buttons pressed and analog movement, the data from this class is then transfered to a CMoveData during actual movement simulation.  
--- Can be modified during GM:CreateMove, GM:StartCommand and used in read only with GM:SetupMove and Player:GetCurrentCommand.  
local GCUserCmd = {}
--- Removes all keys from the command.  
function GCUserCmd:ClearButtons()
end

--- Clears the movement from the command.  
--- See also CUserCmd:SetForwardMove, CUserCmd:SetSideMove and  CUserCmd:SetUpMove.  
function GCUserCmd:ClearMovement()
end

--- Returns an increasing number representing the index of the user cmd.  
--- @return number @The command number
function GCUserCmd:CommandNumber()
end

--- Returns a bitflag indicating which buttons are pressed.  
--- @return number @Pressed buttons, see Enums/IN
function GCUserCmd:GetButtons()
end

--- The speed the client wishes to move forward with, negative if the clients wants to move backwards.  
--- @return number @The desired speed
function GCUserCmd:GetForwardMove()
end

--- Gets the current impulse from the client, usually 0.  
--- @return number @The impulse
function GCUserCmd:GetImpulse()
end

--- Returns the scroll delta as whole number.  
--- @return number @Scroll delta
function GCUserCmd:GetMouseWheel()
end

--- Returns the delta of the angular horizontal mouse movement of the player.  
--- @return number @xDelta
function GCUserCmd:GetMouseX()
end

--- Returns the delta of the angular vertical mouse movement of the player.  
--- @return number @yDelta
function GCUserCmd:GetMouseY()
end

--- The speed the client wishes to move sideways with, positive if it wants to move right, negative if it wants to move left.  
--- @return number @requestSpeed
function GCUserCmd:GetSideMove()
end

--- The speed the client wishes to move up with, negative if the clients wants to move down.  
--- @return number @requestSpeed
function GCUserCmd:GetUpMove()
end

--- Gets the direction the player is looking in.  
--- @return GAngle @requestDir
function GCUserCmd:GetViewAngles()
end

--- When players are not sending usercommands to the server (often due to lag), their last usercommand will be executed multiple times as a backup. This function returns true if that is happening.  
--- This will never return true clientside.  
--- @return boolean @isForced
function GCUserCmd:IsForced()
end

--- Returns true if the specified button(s) is pressed.  
--- @param key number @Bitflag representing which button to check, see Enums/IN.
--- @return boolean @Is key down or not
function GCUserCmd:KeyDown(key)
end

--- Removed a key bit from the current key bitflag.  
--- @param button number @Bitflag to be removed from the key bitflag, see Enums/IN.
function GCUserCmd:RemoveKey(button)
end

--- Forces the associated player to select a weapon. This is used internally in the default HL2 weapon selection HUD.  
--- This may not work immediately if the current command is in prediction. Use input.SelectWeapon to switch the weapon from the client when the next available command can do so.  
--- @param weapon GWeapon @The weapon entity to select.
function GCUserCmd:SelectWeapon(weapon)
end

--- Sets the buttons as a bitflag. See also CUserCmd:GetButtons.  
--- @param buttons number @Bitflag representing which buttons are "down", see Enums/IN.
function GCUserCmd:SetButtons(buttons)
end

--- Sets speed the client wishes to move forward with, negative if the clients wants to move backwards.  
--- See also CUserCmd:ClearMovement, CUserCmd:SetSideMove and CUserCmd:SetUpMove.  
--- @param speed number @The new speed to request
function GCUserCmd:SetForwardMove(speed)
end

--- Sets the impulse command to be sent to the server.  
--- For example, 101 is an impulse that will give the player all Half-Life 2 weapons with sv_cheats set to 1. Impulse 100 will toggle their flashlight.  
--- @param speed number @The impulse to send.
function GCUserCmd:SetImpulse(speed)
end

--- Sets the scroll delta.  
--- @param speed number @The scroll delta.
function GCUserCmd:SetMouseWheel(speed)
end

--- Sets the delta of the angular horizontal mouse movement of the player.  
--- See also CUserCmd:SetMouseY.  
--- @param speed number @Angular horizontal move delta.
function GCUserCmd:SetMouseX(speed)
end

--- Sets the delta of the angular vertical mouse movement of the player.  
--- See also CUserCmd:SetMouseX.  
--- @param speed number @Angular vertical move delta.
function GCUserCmd:SetMouseY(speed)
end

--- Sets speed the client wishes to move sidewards with, positive to move right, negative to move left.  
--- See also CUserCmd:SetForwardMove and  CUserCmd:SetUpMove.  
--- @param speed number @The new speed to request.
function GCUserCmd:SetSideMove(speed)
end

--- Sets speed the client wishes to move upwards with, negative to move down.  
--- See also CUserCmd:SetSideMove and  CUserCmd:SetForwardMove.  
--- @param speed number @The new speed to request.
function GCUserCmd:SetUpMove(speed)
end

--- Sets the direction the client wants to move in.  
--- @param viewAngle GAngle @New view angles.
function GCUserCmd:SetViewAngles(viewAngle)
end

--- Returns tick count since joining the server.  
--- @return number @The amount of ticks passed since joining the server.
function GCUserCmd:TickCount()
end

