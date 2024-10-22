--- @meta

--- @class GPhysCollide
--- A PhysCollide holds collision data from VPhysics. These objects can be used to run (currently quite limited) collision tests, but do not represent actual physics objects.  
--- Created by Global.CreatePhysCollideBox or Global.CreatePhysCollidesFromModel.  
local GPhysCollide = {}
--- Destroys the PhysCollide object.  
function GPhysCollide:Destroy()
end

--- Checks whether this PhysCollide object is valid or not.  
--- You should just use Global.IsValid instead.  
--- @return boolean @Is valid or not.
function GPhysCollide:IsValid()
end

--- Performs a trace against this PhysCollide with the given parameters. This can be used for both line traces and box traces.  
--- @param origin GVector @The origin for the PhysCollide during the trace
--- @param angles GAngle @The angles for the PhysCollide during the trace
--- @param rayStart GVector @The start position of the trace
--- @param rayEnd GVector @The end position of the trace
--- @param rayMins GVector @The mins of the trace's bounds
--- @param rayMaxs GVector @The maxs of the trace's bounds
--- @return GVector @Hit position of the trace
--- @return GVector @Hit normal of the trace
--- @return number @Fraction of the trace
function GPhysCollide:TraceBox(origin, angles, rayStart, rayEnd, rayMins, rayMaxs)
end
