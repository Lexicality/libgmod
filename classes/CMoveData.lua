--- @class GCMoveData
--- A class used to store the inputs from CUserCmd and other information related to the current movement simulation, such as velocity, position and so on.  
--- This can only be accessed during GM:SetupMove , GM:Move , GM:PlayerTick and GM:FinishMove.  
local GCMoveData = {}
--- Adds keys to the move data, as if player pressed them.  
--- @param keys number @Keys to add, see Enums/IN
function GCMoveData:AddKey(keys)
end

--- Gets the aim angle. Seems to be same as CMoveData:GetAngles.  
--- @return GAngle @Aiming angle
function GCMoveData:GetAbsMoveAngles()
end

--- Gets the aim angle. On client is the same as Entity:GetAngles.  
--- @return GAngle @Aiming angle
function GCMoveData:GetAngles()
end

--- Gets which buttons are down  
--- @return number @An integer representing which buttons are down, see Enums/IN
function GCMoveData:GetButtons()
end

--- Returns the radius that constrains the players movement.  
--- @return number @The constraint radius
function GCMoveData:GetConstraintRadius()
end

--- Returns the players forward speed.  
--- @return number @speed
function GCMoveData:GetForwardSpeed()
end

--- Gets the number passed to "impulse" console command  
--- @return number @The impulse
function GCMoveData:GetImpulseCommand()
end

--- Returns the maximum client speed of the player  
--- @return number @The maximum client speed
function GCMoveData:GetMaxClientSpeed()
end

--- Returns the maximum speed of the player.  
--- @return number @The maximum speed
function GCMoveData:GetMaxSpeed()
end

--- Returns the angle the player is moving at. For more info, see CMoveData:SetMoveAngles.  
--- @return GAngle @The move direction
function GCMoveData:GetMoveAngles()
end

--- Gets the aim angle. Only works clientside, server returns same as CMoveData:GetAngles.  
--- @return GAngle @The aim angle
function GCMoveData:GetOldAngles()
end

--- Get which buttons were down last frame  
--- @return number @An integer representing which buttons were down, see Enums/IN
function GCMoveData:GetOldButtons()
end

--- Gets the player's position.  
--- @return GVector @The player's position.
function GCMoveData:GetOrigin()
end

--- Returns the strafe speed of the player.  
--- @return number @speed
function GCMoveData:GetSideSpeed()
end

--- Returns the vertical speed of the player. ( Z axis of CMoveData:GetVelocity )  
--- @return number @Vertical speed
function GCMoveData:GetUpSpeed()
end

--- Gets the players velocity.  
--- * **BUG**: [This will return Vector(0,0,0) sometimes when walking on props.](https://github.com/Facepunch/garrysmod-issues/issues/3413)  
--- @return GVector @The players velocity
function GCMoveData:GetVelocity()
end

--- Returns whether the key is down or not  
--- @param key number @The key to test, see Enums/IN
--- @return boolean @Is the key down or not
function GCMoveData:KeyDown(key)
end

--- Returns whether the key was pressed. If you want to check if the key is held down, try CMoveData:KeyDown  
--- @param key number @The key to test, see Enums/IN
--- @return boolean @Was the key pressed or not.
function GCMoveData:KeyPressed(key)
end

--- Returns whether the key was released  
--- @param key number @A key to test, see Enums/IN
--- @return boolean @Was the key released or not.
function GCMoveData:KeyReleased(key)
end

--- Returns whether the key was down or not.  
--- Unlike CMoveData:KeyDown, it will return false if CMoveData:KeyPressed is true and it will return true if CMoveData:KeyReleased is true.  
--- @param key number @The key to test, see Enums/IN
--- @return boolean @Was the key down or not
function GCMoveData:KeyWasDown(key)
end

--- Sets absolute move angles.( ? ) Doesn't seem to do anything.  
--- @param ang GAngle @New absolute move angles
function GCMoveData:SetAbsMoveAngles(ang)
end

--- Sets angles.  
--- * **BUG**: [This function does nothing.](https://github.com/Facepunch/garrysmod-issues/issues/2382)  
--- @param ang GAngle @The angles.
function GCMoveData:SetAngles(ang)
end

--- Sets the pressed buttons on the move data  
--- @param buttons number @A number representing which buttons are down, see Enums/IN
function GCMoveData:SetButtons(buttons)
end

--- Sets the radius that constrains the players movement.  
--- It is unknown what this function does as changing its values doesn't affect player movement.  
--- @param radius number @The new constraint radius
function GCMoveData:SetConstraintRadius(radius)
end

--- Sets players forward speed.  
--- @param speed number @New forward speed
function GCMoveData:SetForwardSpeed(speed)
end

--- Sets the impulse command. This isn't actually utilised in the engine anywhere.  
--- @param impulse number @The impulse to set
function GCMoveData:SetImpulseCommand(impulse)
end

--- Sets the maximum player speed. Player won't be able to run or sprint faster then this value.  
--- This also automatically sets CMoveData:SetMaxSpeed when used in the GM:SetupMove hook. You must set it manually in the GM:Move hook.  
--- This must be called on both client and server to avoid prediction errors.  
--- This will **not** reduce speed in air.  
--- @param maxSpeed number @The new maximum speed
function GCMoveData:SetMaxClientSpeed(maxSpeed)
end

--- Sets the maximum speed of the player. This must match with CMoveData:SetMaxClientSpeed both, on server and client.  
--- Doesn't seem to be doing anything on it's own, use CMoveData:SetMaxClientSpeed instead.  
--- @param maxSpeed number @The new maximum speed
function GCMoveData:SetMaxSpeed(maxSpeed)
end

--- Sets the serverside move angles, making the movement keys act as if player was facing that direction.  
--- * **BUG**: [This does nothing clientside.](https://github.com/Facepunch/garrysmod-issues/issues/1181)  
--- @param dir GAngle @The aim direction.
function GCMoveData:SetMoveAngles(dir)
end

--- Sets old aim angles. ( ? ) Doesn't seem to be doing anything.  
--- @param aimAng GAngle @The old angles
function GCMoveData:SetOldAngles(aimAng)
end

--- Sets the 'old' pressed buttons on the move data. These buttons are used to work out which buttons have been released, which have just been pressed and which are being held down.  
--- @param buttons number @A number representing which buttons were down, see Enums/IN
function GCMoveData:SetOldButtons(buttons)
end

--- Sets the players position.  
--- @param pos GVector @The position
function GCMoveData:SetOrigin(pos)
end

--- Sets players strafe speed.  
--- @param speed number @Strafe speed
function GCMoveData:SetSideSpeed(speed)
end

--- Sets vertical speed of the player. ( Z axis of CMoveData:SetVelocity )  
--- @param speed number @Vertical speed to set
function GCMoveData:SetUpSpeed(speed)
end

--- Sets the player's velocity  
--- @param velocity GVector @The velocity to set
function GCMoveData:SetVelocity(velocity)
end

