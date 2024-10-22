--- Functions related to Kinect for Windows usage in GMod.  
--- ⚠ **WARNING**: Kinect feature works only on 32-bit version of the game.  
_G.motionsensor = {}
--- @param ent GEntity @Entity to choose builder for
--- @return string @Chosen builder
function motionsensor.ChooseBuilderFromEntity(ent)
end

--- Returns the depth map material.  
--- @return GIMaterial @The material
function motionsensor.GetColourMaterial()
end

--- Returns players skeletal data if they are using Kinect. See Using The Kinect and Kinect developing.  
--- @return table @The skeleton data.
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

--- This starts access to the kinect sensor. Note that this usually freezes the game for a couple of seconds.  
--- @return boolean @`true` if the access has been started
function motionsensor.Start()
end

--- Stops the motion capture.  
function motionsensor.Stop()
end
