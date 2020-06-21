--- Functions related to Kinect for Windows usage in GMod.  
--- ⚠ **WARNING**: Kinect feature works only on 32-bit version of the game.  
_G.motionsensor = {}
--- @param translator table 
--- @param player GPlayer 
--- @param rotation GAngle 
--- @return GVector, GAngle, sensor
function motionsensor.BuildSkeleton(translator, player, rotation)
end

--- @param ent GEntity @Entity to choose builder for
--- @return string @Chosen builder
function motionsensor.ChooseBuilderFromEntity(ent)
end

--- Returns the depth map material.  
--- @return GIMaterial @The material
function motionsensor.GetColourMaterial()
end

function motionsensor.GetSkeleton()
end

--- Return whether a kinect is connected - and active (ie - Start has been called).  
--- @return boolean @Connected and active or not
function motionsensor.IsActive()
end

--- Returns true if we have detected that there's a kinect connected to the PC  
--- @return boolean @Connected or not
function motionsensor.IsAvailable()
end

--- @param translator table 
--- @param sensor table 
--- @param pos GVector 
--- @param ang GAngle 
--- @param special_vectors table 
--- @param boneid number 
--- @param v table 
--- @return boolean @Return nil on failure
function motionsensor.ProcessAngle(translator, sensor, pos, ang, special_vectors, boneid, v)
end

--- @param translator table 
--- @param sensor table 
--- @param pos GVector 
--- @param rotation GAngle 
--- @return GAngle @Ang
function motionsensor.ProcessAnglesTable(translator, sensor, pos, rotation)
end

--- @param translator table 
--- @param sensor table 
--- @return GVector @Pos
function motionsensor.ProcessPositionTable(translator, sensor)
end

--- This starts access to the kinect sensor. Note that this usually freezes the game for a couple of seconds.  
function motionsensor.Start()
end

--- Stops the motion capture.  
function motionsensor.Stop()
end

