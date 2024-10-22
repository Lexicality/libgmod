--- @meta

--- @class GPathFollower
--- Path object for a NextBot NPC and bots created by player.CreateNextbot. Returned by Global.Path.  
local GPathFollower = {}
--- If you created your path with type `"Chase"` this functions should be used in place of PathFollower:Update to cause the bot to chase the specified entity.  
--- @param bot GNextBot @The bot to update along the path
--- @param ent GEntity @The entity we want to chase
--- @param generator? function @A function that allows you to alter the path generation
function GPathFollower:Chase(bot, ent, generator)
end

--- Compute shortest path from bot to 'goal' via A* algorithm.  
--- @param bot GNextBot @The nextbot we're generating for
--- @param goal GVector @The target location, the goal.
--- @param generator? function @A function that allows you to alter the path generation
--- @return boolean @* If returns true, path was found to the goal position
function GPathFollower:Compute(bot, goal, generator)
end

--- Draws the path. This is meant for debugging - and uses debugoverlay.  
function GPathFollower:Draw()
end

--- Returns the first segment of the path.  
--- @return table @A table with Structures/PathSegment.
function GPathFollower:FirstSegment()
end

--- Returns the age since the path was built  
--- @return number @Path age
function GPathFollower:GetAge()
end

--- Returns all of the segments of the given path.  
--- @return table @A table of tables with Structures/PathSegment.
function GPathFollower:GetAllSegments()
end

--- The closest position along the path to a position  
--- @param position GVector @The point we're querying for
--- @return GVector @The closest position on the path
function GPathFollower:GetClosestPosition(position)
end

--- Returns the current goal data. Can return nil if the current goal is invalid, for example immediately after PathFollower:Update.  
--- @return table @A table with Structures/PathSegment.
function GPathFollower:GetCurrentGoal()
end

--- Returns the cursor data  
--- @return table @A table with 3 keys:
function GPathFollower:GetCursorData()
end

--- Returns the current progress along the path  
--- @return number @The current progress
function GPathFollower:GetCursorPosition()
end

--- Returns the path end position  
--- @return GVector @The end position
function GPathFollower:GetEnd()
end

--- Returns how close we can get to the goal to call it done.  
--- @return number @The distance we're setting it to
function GPathFollower:GetGoalTolerance()
end

--- @return GEntity 
function GPathFollower:GetHindrance()
end

--- Returns the total length of the path  
--- @return number @The length of the path
function GPathFollower:GetLength()
end

--- Returns the minimum range movement goal must be along path.  
--- @return number @The minimum look ahead distance
function GPathFollower:GetMinLookAheadDistance()
end

--- Returns the vector position of distance along path  
--- @param distance number @The distance along the path to query
--- @return GVector @The position
function GPathFollower:GetPositionOnPath(distance)
end

--- Returns the path start position  
--- @return GVector @The start position
function GPathFollower:GetStart()
end

--- Invalidates the current path  
function GPathFollower:Invalidate()
end

--- Returns true if the path is valid  
--- @return boolean @Wether the path is valid or not.
function GPathFollower:IsValid()
end

--- Returns the last segment of the path.  
--- @return table @A table with Structures/PathSegment.
function GPathFollower:LastSegment()
end

--- Moves the cursor by give distance.  
--- For a function that sets the distance, see PathFollower:MoveCursorTo.  
--- @param distance number @The distance to move the cursor (in relative world units)
function GPathFollower:MoveCursor(distance)
end

--- Sets the cursor position to given distance.  
--- For relative distance, see PathFollower:MoveCursor.  
--- @param distance number @The distance to move the cursor (in world units)
function GPathFollower:MoveCursorTo(distance)
end

--- Moves the cursor of the path to the closest position compared to given vector.  
--- @param pos GVector 
--- @param type? number @Seek type
--- @param alongLimit? number 
function GPathFollower:MoveCursorToClosestPosition(pos, type, alongLimit)
end

--- Moves the cursor to the end of the path  
function GPathFollower:MoveCursorToEnd()
end

--- Moves the cursor to the end of the path  
function GPathFollower:MoveCursorToStart()
end

--- Returns the next segment of the path.  
--- @return table @A table with Structures/PathSegment.
function GPathFollower:NextSegment()
end

--- Returns the previous segment of the path.  
--- @return table @A table with Structures/PathSegment.
function GPathFollower:PriorSegment()
end

--- Resets the age which is retrieved by PathFollower:GetAge to 0.  
function GPathFollower:ResetAge()
end

--- How close we can get to the goal to call it done  
--- @param distance number @The distance we're setting it to
function GPathFollower:SetGoalTolerance(distance)
end

--- Sets minimum range movement goal must be along path  
--- @param mindist number @The minimum look ahead distance
function GPathFollower:SetMinLookAheadDistance(mindist)
end

--- Move the bot along the path.  
--- @param bot GNextBot @The bot to update along the path
function GPathFollower:Update(bot)
end
