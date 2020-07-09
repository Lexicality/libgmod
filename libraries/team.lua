--- The team library gives you access to the team system built into the Source engine, and allows you to create custom teams and get information about them.  
_G.team = {}
--- Increases the score of the given team  
--- @param index number @Index of the team
--- @param increment number @Amount to increase the team's score by
function team.AddScore(index, increment)
end

--- Returns the team index of the team with the least players. Falls back to TEAM_UNASSIGNED  
--- @return number @Team index
function team.BestAutoJoinTeam()
end

--- Returns a table consisting of information on every defined team  
--- @return table @Team info
function team.GetAllTeams()
end

--- Returns the selectable classes for the given team. This can be added to with team.SetClass  
--- @param index number @Index of the team
--- @return table @Selectable classes
function team.GetClass(index)
end

--- Returns the team's color.  
--- @param teamIndex number @The team index.
--- @return table @The team's color as a Color.
function team.GetColor(teamIndex)
end

--- Returns the name of the team.  
--- @param teamIndex number @The team index.
--- @return string @The team name
function team.GetName(teamIndex)
end

--- Returns a table with all player of the specified team.  
--- @param teamIndex number @The team index.
--- @return table @A table of Players that belong to the requested team.
function team.GetPlayers(teamIndex)
end

--- Returns the score of the team.  
--- @param teamIndex number @The team index.
--- @return number @score
function team.GetScore(teamIndex)
end

--- Returns a table of valid spawnpoint classes the team can use. These are set with team.SetSpawnPoint.  
--- @param index number @Index of the team
--- @return table @Valid spawnpoint classes
function team.GetSpawnPoint(index)
end

--- Returns a table of valid spawnpoint entities the team can use. These are set with  team.SetSpawnPoint.  
--- @param index number @Index of the team
--- @return table @Valid spawnpoint entities
function team.GetSpawnPoints(index)
end

--- Returns if a team is joinable or not. This is set in team.SetUp.  
--- @param index number @The index of the team.
--- @return boolean @True if the team is joinable
function team.Joinable(index)
end

--- Returns the amount of players in a team.  
--- @param teamIndex number @The team index.
--- @return number @playerCount
function team.NumPlayers(teamIndex)
end

--- Sets valid classes for use by a team. Classes can be created using player_manager.RegisterClass  
--- @param index number @Index of the team
--- @param classes any @A class ID or table of class IDs
function team.SetClass(index, classes)
end

--- Sets the team's color.  
--- @param teamIndex number @The team index.
--- @param color table @The team's new color as a Color.
function team.SetColor(teamIndex, color)
end

--- Sets the score of the given team  
--- @param index number @Index of the team
--- @param score number @The team's new score
function team.SetScore(index, score)
end

--- Sets valid spawnpoint classes for use by a team.  
--- ℹ **NOTE**: GM.TeamBased must be set to true for this to work  
--- @param index number @Index of the team
--- @param classes any @A spawnpoint classname or table of spawnpoint classnames
function team.SetSpawnPoint(index, classes)
end

--- Creates a new team.  
--- @param teamIndex number @The team index.
--- @param teamName string @The team name.
--- @param teamColor table @The team color
--- @param isJoinable boolean @Whether the team is joinable or not.
function team.SetUp(teamIndex, teamName, teamColor, isJoinable)
end

--- Returns the sum of deaths of all players of the team.  
--- @param teamIndex number @The team index.
--- @return number @deathCount
function team.TotalDeaths(teamIndex)
end

--- Get's the total frags in a team.  
--- @param Entity_or_number GEntity @Entity or number.
--- @return number @index
function team.TotalFrags(Entity_or_number)
end

--- Returns true if the given team index is valid  
--- @param index number @Index of the team
--- @return boolean @Is valid
function team.Valid(index)
end

