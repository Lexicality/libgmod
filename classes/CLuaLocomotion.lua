--- @class GCLuaLocomotion
--- This class is essentially what controls a NextBot NPC. You can access it in a NextBot NPC by using **self.loco** variable.  
local GCLuaLocomotion = {}
--- Sets the location we want to get to  
--- @param goal GVector @The vector we want to get to
--- @param goalweight number @If unsure then set this to 1
function GCLuaLocomotion:Approach(goal, goalweight)
end

--- Removes the stuck status from the bot  
function GCLuaLocomotion:ClearStuck()
end

--- Sets the direction we want to face  
--- @param goal GVector @The vector we want to face
function GCLuaLocomotion:FaceTowards(goal)
end

--- Returns the acceleration speed  
--- @return number @Current acceleration speed
function GCLuaLocomotion:GetAcceleration()
end

--- Returns the current acceleration as a vector  
--- @return GVector @Current acceleration
function GCLuaLocomotion:GetCurrentAcceleration()
end

--- Gets the height the bot is scared to fall from  
--- @return number @Current death drop height
function GCLuaLocomotion:GetDeathDropHeight()
end

--- Gets the deceleration speed  
--- @return number @Current deceleration speed
function GCLuaLocomotion:GetDeceleration()
end

--- Returns the locomotion's gravity.  
--- @return number @The gravity.
function GCLuaLocomotion:GetGravity()
end

--- Return unit vector in XY plane describing our direction of motion - even if we are currently not moving  
--- @return GVector @A vector representing the X and Y movement
function GCLuaLocomotion:GetGroundMotionVector()
end

--- Gets the height of the bot's jump  
--- @return number @Current jump height
function GCLuaLocomotion:GetJumpHeight()
end

--- Returns maximum jump height of this CLuaLocomotion.  
--- @return number @The maximum jump height.
function GCLuaLocomotion:GetMaxJumpHeight()
end

--- Returns the max rate at which the NextBot can visually rotate.  
--- @return number @Maximum yaw rate
function GCLuaLocomotion:GetMaxYawRate()
end

--- Returns the NextBot this locomotion is associated with.  
--- @return GNextBot @The nextbot
function GCLuaLocomotion:GetNextBot()
end

--- Gets the max height the bot can step up  
--- @return number @Current step height
function GCLuaLocomotion:GetStepHeight()
end

--- Returns the current movement velocity as a vector  
--- @return GVector @Current velocity
function GCLuaLocomotion:GetVelocity()
end

--- Returns whether this CLuaLocomotion can reach and/or traverse/move in given CNavArea.  
--- @param area GCNavArea @The area to test
--- @return boolean @Whether this CLuaLocomotion can traverse given CNavArea.
function GCLuaLocomotion:IsAreaTraversable(area)
end

--- Returns true if we're trying to move.  
--- @return boolean @Whether we're trying to move or not.
function GCLuaLocomotion:IsAttemptingToMove()
end

--- Returns true of the locomotion engine is jumping or climbing  
--- @return boolean @Whether we're climbing or jumping or not
function GCLuaLocomotion:IsClimbingOrJumping()
end

--- Returns whether the nextbot this locomotion is attached to is on ground or not.  
--- @return boolean @Whether the nextbot is on ground or not.
function GCLuaLocomotion:IsOnGround()
end

--- Returns true if we're stuck  
--- @return boolean @Whether we're stuck or not
function GCLuaLocomotion:IsStuck()
end

--- Returns whether or not the target in question is on a ladder or not.  
--- @return boolean @If the target is on a ladder or not.
function GCLuaLocomotion:IsUsingLadder()
end

--- Makes the bot jump  
function GCLuaLocomotion:Jump()
end

--- @param landingGoal GVector 
--- @param landingForward GVector 
function GCLuaLocomotion:JumpAcrossGap(landingGoal, landingForward)
end

--- Sets the acceleration speed  
--- @param speed number @Speed acceleration (default is 400)
function GCLuaLocomotion:SetAcceleration(speed)
end

--- Sets the height the bot is scared to fall from.  
--- @param height number @Height (default is 200)
function GCLuaLocomotion:SetDeathDropHeight(height)
end

--- Sets the deceleration speed.  
--- @param deceleration number @New deceleration speed (default is 400)
function GCLuaLocomotion:SetDeceleration(deceleration)
end

--- Sets movement speed.  
--- @param speed number @The new desired speed
function GCLuaLocomotion:SetDesiredSpeed(speed)
end

--- Sets the locomotion's gravity.  
--- ℹ **NOTE**: With values 0 or below, or even lower positive values, the nextbot will start to drift sideways, use CLuaLocomotion:SetVelocity to counteract this.  
--- @param gravity number @New gravity to set
function GCLuaLocomotion:SetGravity(gravity)
end

--- Sets the height of the bot's jump  
--- @param height number @Height (default is 58)
function GCLuaLocomotion:SetJumpHeight(height)
end

--- Sets the max rate at which the NextBot can visually rotate. This will not affect moving or pathing.  
--- @param yawRate number @Desired new maximum yaw rate
function GCLuaLocomotion:SetMaxYawRate(yawRate)
end

--- Sets the max height the bot can step up  
--- @param height number @Height (default is 18)
function GCLuaLocomotion:SetStepHeight(height)
end

--- Sets the current movement velocity  
--- @param velocity GVector 
function GCLuaLocomotion:SetVelocity(velocity)
end

