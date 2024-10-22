--- The physenv library allows you to control the physics environment created by the engine, and lets you modify constants such as gravity and maximum velocity.  
_G.physenv = {}
--- Adds surface properties to the game's physics environment.  
--- 🦟 **BUG**: [The game has a limit of 128 surface properties - this includes properties loaded automatically from [surfaceproperties.txt](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/surfaceproperties.txt). Due to this, there's only a small amount of open slots that can be registered with GMod's provided surfaceproperties.txt.](https://github.com/Facepunch/garrysmod-issues/issues/2604)  
--- @param properties string @The properties to add
function physenv.AddSurfaceData(properties)
end

--- Returns the air density used to calculate drag on physics objects.  
--- ⁉ **VALIDATE**: The unit is in `kg/m³`.  
--- @return number @Default value is 2.
function physenv.GetAirDensity()
end

--- Gets the gravitational acceleration used for physics objects in `source_unit/s^2`.  
--- @return GVector @gravAccel
function physenv.GetGravity()
end

--- Returns the last simulation duration of the in-game physics.  
--- @return number @The last simulation duration of the in-game physics in seconds
function physenv.GetLastSimulationTime()
end

--- Gets the current performance settings in table form.  
--- @return table @Performance settings
function physenv.GetPerformanceSettings()
end

--- Sets the air density.  
--- @param airDensity number @The new air density.
function physenv.SetAirDensity(airDensity)
end

--- Sets the gravitational acceleration used for physics objects.  
--- ℹ **NOTE**: Does not work on players.  
--- @param gravAccel GVector @The new gravity in `source_unit/s^2`.
function physenv.SetGravity(gravAccel)
end

--- Sets the performance settings.  
--- @param performanceSettings table @The new performance settings
function physenv.SetPerformanceSettings(performanceSettings)
end
