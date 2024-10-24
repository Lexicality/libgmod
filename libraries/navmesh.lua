--- @meta

--- The navigation mesh library. To be used with CNavArea.  
--- The navigation mesh is used by NextBot to calculate path to its target.  
_G.navmesh = {}
--- Add this position and normal to the list of walkable positions, used before map generation with navmesh.BeginGeneration  
--- @param pos GVector @The terrain position.
--- @param dir GVector @The normal of this terrain position.
function navmesh.AddWalkableSeed(pos, dir)
end

--- Starts the generation of a new navmesh.  
--- ℹ **NOTE**: This process is highly resource intensive and it's not wise to use during normal gameplay  
function navmesh.BeginGeneration()
end

--- Clears all the walkable positions, used before calling navmesh.BeginGeneration.  
function navmesh.ClearWalkableSeeds()
end

--- Creates a new CNavArea.  
--- @param corner GVector @The first corner of the new CNavArea
--- @param opposite_corner GVector @The opposite (diagonally) corner of the new CNavArea
--- @return GCNavArea @The new CNavArea or nil if we failed for some reason.
function navmesh.CreateNavArea(corner, opposite_corner)
end

--- Creates a new CNavLadder.  
--- @param top GVector @The top position of the ladder.
--- @param bottom GVector @The bottom position of the ladder.
--- @param width number @Width for the new ladder.
--- @param dir GVector @Directional vector in which way the ladder should be facing
--- @param maxHeightAboveTopArea? number @If above 0, will limit how much the top of the ladder can be adjusted to the closest CNavArea when automatically connecting the newly create
--- @return GCNavLadder @The new CNavLadder or nil if we failed for some reason.
function navmesh.CreateNavLadder(top, bottom, width, dir, maxHeightAboveTopArea)
end

--- Returns a list of areas within distance, used to find hiding spots by NextBots for example.  
--- @param pos GVector @The position to search around
--- @param radius number @Radius to search within
--- @param stepHeight number @Maximum step up height allowed
--- @param dropHeight number @Maximum step down (fall distance) allowed
--- @return table @A list of found CNavAreas.
function navmesh.Find(pos, radius, stepHeight, dropHeight)
end

--- Returns a list of CNavAreas overlapping the given cube extents.  
--- @param pos1 GVector @The start position of the cube to search in.
--- @param pos2 GVector @The "end" position of the cube to search in
--- @return table @A list of found CNavAreas.
function navmesh.FindInBox(pos1, pos2)
end

--- Returns an integer indexed table of all CNavAreas on the current map. If the map doesn't have a navmesh generated then this will return an empty table.  
--- @return table @A table of all the CNavAreas on the current map.
function navmesh.GetAllNavAreas()
end

--- Returns a table of all blocked CNavAreas on the current map. See CNavArea:MarkAsBlocked.  
--- @return table @A table of all the blocked CNavAreas on the current map.
function navmesh.GetBlockedAreas()
end

--- Returns the position of the edit cursor when nav_edit is set to 1.  
--- @return GVector @The position of the edit cursor.
function navmesh.GetEditCursorPosition()
end

--- Finds the closest standable ground at, above, or below the provided position.  
--- ℹ **NOTE**: The ground must have at least 32 units of empty space above it to be considered by this function, unless 16 layers are tested without finding valid ground.  
--- @param pos GVector @Position to find the closest ground for.
--- @return number @The height of the ground layer.
--- @return GVector @The normal of the ground layer.
function navmesh.GetGroundHeight(pos)
end

--- Returns the currently marked CNavArea, for use with editing console commands.  
--- @return GCNavArea @The currently marked CNavArea.
function navmesh.GetMarkedArea()
end

--- Returns the currently marked CNavLadder, for use with editing console commands.  
--- @return GCNavLadder @The currently marked CNavLadder.
function navmesh.GetMarkedLadder()
end

--- Returns the Nav Area contained in this position that also satisfies the elevation limit.  
--- This function will properly see blocked CNavAreas. See navmesh.GetNearestNavArea.  
--- @param pos GVector @The position to search for.
--- @param beneathLimit number @The elevation limit at which the Nav Area will be searched.
--- @return GCNavArea @The nav area.
function navmesh.GetNavArea(pos, beneathLimit)
end

--- Returns a CNavArea by the given ID.  
--- ℹ **NOTE**: Avoid calling this function every frame, as internally it does a lookup trough all the CNavAreas, call this once and store the result  
--- @param id number @ID of the CNavArea to get
--- @return GCNavArea @The CNavArea with given ID.
function navmesh.GetNavAreaByID(id)
end

--- Returns the total count of nav areas on the map. If you want to get all nav areas, use navmesh.GetAllNavAreas instead as nav areas IDs are not always sequential.  
--- @return number @The total count of nav areas on the map.
function navmesh.GetNavAreaCount()
end

--- Returns a CNavLadder by the given ID.  
--- @param id number @ID of the CNavLadder to get
--- @return GCNavLadder @The CNavLadder with given ID.
function navmesh.GetNavLadderByID(id)
end

--- Returns the closest CNavArea to given position at the same height, or beneath it.  
--- This function will ignore blocked CNavAreas. See navmesh.GetNavArea for a function that does see blocked areas.  
--- @param pos GVector @The position to look from
--- @param anyZ? boolean @This argument is ignored and has no effect
--- @param maxDist? number @This is the maximum distance from the given position that the function will look for a CNavArea
--- @param checkLOS? boolean @If this is set to true then the function will internally do a util.TraceLine from the starting position to each potential CNavArea with a [M
--- @param checkGround? boolean @If checkGround is true then this function will internally call navmesh.GetNavArea to check if there is a CNavArea directly below the positio
--- @param team? number @This will internally call CNavArea:IsBlocked to check if the target CNavArea is not to be navigated by the given team
--- @return GCNavArea @The closest CNavArea found with the given parameters, or a NULL CNavArea if one was not found.
function navmesh.GetNearestNavArea(pos, anyZ, maxDist, checkLOS, checkGround, team)
end

--- Returns the classname of the player spawn entity.  
--- @return string @The classname of the spawn point entity
function navmesh.GetPlayerSpawnName()
end

--- Whether we're currently generating a new navmesh with navmesh.BeginGeneration.  
--- @return boolean @Whether we're generating a nav mesh or not.
function navmesh.IsGenerating()
end

--- Returns true if a navmesh has been loaded when loading the map.  
--- @return boolean @Whether a navmesh has been loaded when loading the map.
function navmesh.IsLoaded()
end

--- Loads a new navmesh from the .nav file for current map discarding any changes made to the navmesh previously.  
--- ⚠ **WARNING**:   
--- Calling this function too soon, causes the Server to crash!  
function navmesh.Load()
end

--- Deletes every CNavArea and CNavLadder on the map **without saving the changes**.  
function navmesh.Reset()
end

--- Saves any changes made to navmesh to the .nav file.  
function navmesh.Save()
end

--- Sets the CNavArea as marked, so it can be used with editing console commands.  
--- @param area GCNavArea @The CNavArea to set as the marked area.
function navmesh.SetMarkedArea(area)
end

--- Sets the CNavLadder as marked, so it can be used with editing console commands.  
--- @param area GCNavLadder @The CNavLadder to set as the marked ladder.
function navmesh.SetMarkedLadder(area)
end

--- Sets the classname of the default spawn point entity, used before generating a new navmesh with navmesh.BeginGeneration.  
--- @param spawnPointClass string @The classname of what the player uses to spawn, automatically adds it to the walkable positions during map generation.
function navmesh.SetPlayerSpawnName(spawnPointClass)
end
