--- @meta

--- The physenv library allows you to control the physics environment created by the engine, and lets you modify constants such as gravity and maximum velocity.  
_G.physenv = {}
--- Adds a [material surface property](https://developer.valvesoftware.com/wiki/Material_surface_properties) type to the game's physics environment.  
--- See util.GetSurfaceData for the opposite function.  
--- 🦟 **BUG**: [The game has a limit of 128 surface properties - this includes properties loaded automatically from [surfaceproperties.txt](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/surfaceproperties.txt). Due to this, there's only a small amount of open slots that can be registered with GMod's provided surfaceproperties.txt.](https://github.com/Facepunch/garrysmod-issues/issues/2604)  
--- Does nothing on `x86-64` beta.  
--- @param properties string @The properties to add
function physenv.AddSurfaceData(properties)
end

--- Returns the air density used to calculate drag on physics objects.  
--- ⁉ **VALIDATE**: The unit is in `kg/m³`.  
--- @return number @Default value is 2.
function physenv.GetAirDensity()
end

--- Gets the gravitational acceleration used for physics objects in `source_unit/s^2`.  
--- @return GVector @Gravity direction and strength.
function physenv.GetGravity()
end

--- Returns the last simulation duration of the in-game physics.  
--- @return number @The last simulation duration of the in-game physics in seconds
function physenv.GetLastSimulationTime()
end

--- Gets the current performance settings in table form.  
--- @return table @Performance settings or nil if called too early
function physenv.GetPerformanceSettings()
end

--- Returns the pause status of global physics simulation. See physenv.SetPhysicsPaused for the setter.  
--- @return boolean @`true` if paused.
function physenv.GetPhysicsPaused()
end

--- Sets the air density.  
--- @param airDensity number @The new air density.
function physenv.SetAirDensity(airDensity)
end

--- Sets the gravitational acceleration used for physics objects. Does not affect players.  
--- @param gravAccel GVector @The new gravity in `source_unit/s^2`.
function physenv.SetGravity(gravAccel)
end

--- Sets the performance settings.  
--- @param performanceSettings table @The new performance settings
function physenv.SetPerformanceSettings(performanceSettings)
end

--- Pauses or unpauses the physics simulation globally. See physenv.GetPhysicsPaused for the getter.  
--- @param pause boolean @`true` to pause, `false` to unpause.
function physenv.SetPhysicsPaused(pause)
end
