--- @class GCNavLadder
--- An object that represents a ladder for Nextbots.  
local GCNavLadder = {}
--- Connects this ladder to a CNavArea with a one way connection. ( From this ladder to the target area ).  
--- See CNavArea:ConnectTo for making the connection from area to ladder.  
--- @param area GCNavArea @The area this ladder leads to.
function GCNavLadder:ConnectTo(area)
end

--- Disconnects this ladder from given area in a single direction.  
--- @param area GCNavArea @The CNavArea this to disconnect from.
function GCNavLadder:Disconnect(area)
end

--- Returns the bottom most position of the ladder.  
--- @return GVector @The bottom most position of the ladder.
function GCNavLadder:GetBottom()
end

--- Returns the bottom area of the CNavLadder.  
--- @return GCNavArea 
function GCNavLadder:GetBottomArea()
end

--- Returns this CNavLadders unique ID.  
--- @return number @The unique ID.
function GCNavLadder:GetID()
end

--- Returns the length of the ladder.  
--- @return number @The length of the ladder.
function GCNavLadder:GetLength()
end

--- Returns the direction of this CNavLadder. ( The direction in which players back will be facing if they are looking directly at the ladder )  
--- @return GVector @The direction of this CNavLadder.
function GCNavLadder:GetNormal()
end

--- Returns the world position based on given height relative to the ladder.  
--- @param height number @The Z position in world space coordinates.
--- @return GVector @The closest point on the ladder to that height.
function GCNavLadder:GetPosAtHeight(height)
end

--- Returns the topmost position of the ladder.  
--- @return GVector @The topmost position of the ladder.
function GCNavLadder:GetTop()
end

--- Returns the top behind CNavArea of the CNavLadder.  
--- @return GCNavArea @The top behind CNavArea of the CNavLadder.
function GCNavLadder:GetTopBehindArea()
end

--- Returns the top forward CNavArea of the CNavLadder.  
--- @return GCNavArea @The top forward CNavArea of the CNavLadder.
function GCNavLadder:GetTopForwardArea()
end

--- Returns the top left CNavArea of the CNavLadder.  
--- @return GCNavArea @The top left CNavArea of the CNavLadder.
function GCNavLadder:GetTopLeftArea()
end

--- Returns the top right CNavArea of the CNavLadder.  
--- @return GCNavArea @The top right CNavArea of the CNavLadder.
function GCNavLadder:GetTopRightArea()
end

--- Returns the width of the ladder in Hammer Units.  
--- @return number @The width of the ladder in Hammer Units.
function GCNavLadder:GetWidth()
end

--- Returns whether this CNavLadder has an outgoing ( one or two way ) connection **to** given CNavArea in given direction.  
--- @param navArea GCNavArea @The CNavArea to test against.
--- @param navDirType number @The direction, in which to look for the connection
--- @return boolean @Whether this CNavLadder has an outgoing ( one or two way ) connection **to** given CNavArea in given direction.
function GCNavLadder:IsConnectedAtSide(navArea, navDirType)
end

--- Returns whether this CNavLadder is valid or not.  
--- @return boolean @Whether this CNavLadder is valid or not.
function GCNavLadder:IsValid()
end

--- Removes the given nav ladder.  
function GCNavLadder:Remove()
end

--- Sets the bottom area of the CNavLadder.  
--- @param area GCNavArea 
function GCNavLadder:SetBottomArea(area)
end

--- Sets the top behind area of the CNavLadder.  
--- @param area GCNavArea 
function GCNavLadder:SetTopBehindArea(area)
end

--- Sets the top forward area of the CNavLadder.  
--- @param area GCNavArea 
function GCNavLadder:SetTopForwardArea(area)
end

--- Sets the top left area of the CNavLadder.  
--- @param area GCNavArea 
function GCNavLadder:SetTopLeftArea(area)
end

--- Sets the top right area of the CNavLadder.  
--- @param area GCNavArea 
function GCNavLadder:SetTopRightArea(area)
end

