--- @class GAngle
--- List of all possible functions to manipulate angles.  
--- Created by Global.Angle.  
--- @field p number @The pitch component of the angle
--- @field pitch number @The pitch component of the angle
--- @field x number @The pitch component of the angle
--- @field y number @The yaw component of the angle
--- @field yaw number @The yaw component of the angle
--- @field r number @The roll  component of the angle
--- @field roll number @The roll  component of the angle
--- @field z number @The roll  component of the angle
local GAngle = {}
--- Adds the values of the argument angle to the orignal angle.  
--- This functions the same as angle1 + angle2 without creating a new angle object, skipping object construction and garbage collection.  
--- @param angle GAngle @The angle to add.
function GAngle:Add(angle)
end

--- Divides all values of the original angle by a scalar. This functions the same as angle1 / num without creating a new angle object, skipping object construction and garbage collection.  
--- @param scalar number @The number to divide by.
function GAngle:Div(scalar)
end

--- Returns a normal vector facing in the direction that the angle points.  
--- @return GVector @The forward direction of the angle
function GAngle:Forward()
end

--- Returns whether the pitch, yaw and roll are 0 or not.  
--- @return boolean @Whether the pitch, yaw and roll are 0 or not.
function GAngle:IsZero()
end

--- Multiplies a scalar to all the values of the orignal angle. This functions the same as num * angle without creating a new angle object, skipping object construction and garbage collection.  
--- @param scalar number @The number to multiply.
function GAngle:Mul(scalar)
end

--- Normalizes the angles by applying a module with 360 to pitch, yaw and roll.  
function GAngle:Normalize()
end

--- Returns a normal vector facing in the direction that points right relative to the angle's direction.  
--- @return GVector @The right direction of the angle
function GAngle:Right()
end

--- Rotates the angle around the specified axis by the specified degrees.  
--- @param axis GVector @The axis to rotate around.
--- @param rotation number @The degrees to rotate around the specified axis.
function GAngle:RotateAroundAxis(axis, rotation)
end

--- Copies pitch, yaw and roll from the second angle to the first.  
--- @param originalAngle GAngle @The angle to copy the values from.
function GAngle:Set(originalAngle)
end

--- Sets the p, y, and r of the angle.  
--- @param p number @The pitch component of the Angle
--- @param y number @The yaw component of the Angle
--- @param r number @The roll component of the Angle
function GAngle:SetUnpacked(p, y, r)
end

--- Snaps the angle to nearest interval of degrees.  
--- @param axis string @The component/axis to snap
--- @param target number @The target angle snap interval
--- @return GAngle @The snapped angle.
function GAngle:SnapTo(axis, target)
end

--- Subtracts the values of the argument angle to the orignal angle. This functions the same as angle1 - angle2 without creating a new angle object, skipping object construction and garbage collection.  
--- @param angle GAngle @The angle to subtract.
function GAngle:Sub(angle)
end

--- Returns the angle as a table with three elements.  
--- @return table @The table with elements 1 = p, 2 = y, 3 = r.
function GAngle:ToTable()
end

--- Returns the pitch, yaw, and roll components of the angle.  
--- @return number, number, number
function GAngle:Unpack()
end

--- Returns a normal vector facing in the direction that points up relative to the angle's direction.  
--- @return GVector @The up direction of the angle.
function GAngle:Up()
end

--- Sets pitch, yaw and roll to 0.  
--- This function is faster than doing it manually.  
function GAngle:Zero()
end

