--- @meta

--- @class GVehicle : GEntity
--- This is a list of all methods only available for vehicles. It is also possible to call [Entity](https://wiki.facepunch.com/gmod/Entity) functions on vehicles.  
local GVehicle = {}
--- Returns the remaining boosting time left.  
--- @return number @The remaining boosting time left
function GVehicle:BoostTimeLeft()
end

--- Tries to find an Exit Point for leaving vehicle, if one is unobstructed in the direction given.  
--- @param yaw number @Yaw/roll from vehicle angle to check for exit
--- @param distance number @Distance from origin to drop player
--- @return GVector @Returns the vector for exit position or nil if cannot exit that way.
function GVehicle:CheckExitPoint(yaw, distance)
end

--- Sets whether the engine is enabled or disabled, i.e. can be started or not.  
--- @param enable boolean @Enable or disable the engine
function GVehicle:EnableEngine(enable)
end

--- Returns information about the ammo of the vehicle  
--- @return number @Ammo type of the vehicle ammo
--- @return number @Clip size
--- @return number @Count
function GVehicle:GetAmmo()
end

--- Returns third person camera distance.  
--- @return number @Camera distance
function GVehicle:GetCameraDistance()
end

--- Gets the driver of the vehicle, returns `NULL` if no driver is present.  
--- @return GEntity @The driver of the vehicle.
function GVehicle:GetDriver()
end

--- Returns the current speed of the vehicle in Half-Life Hammer Units (in/s). Same as Entity:GetVelocity + Vector:Length.  
--- @return number @The speed of the vehicle
function GVehicle:GetHLSpeed()
end

--- Returns the max speed of the vehicle in MPH.  
--- @return number @The max speed of the vehicle in MPH
function GVehicle:GetMaxSpeed()
end

--- Returns some info about the vehicle.  
--- @return table @The operating params
function GVehicle:GetOperatingParams()
end

--- Gets the passenger of the vehicle, returns NULL if no drivers is present.  
--- @param passenger number @The index of the passenger
--- @return GEntity @The passenger
function GVehicle:GetPassenger(passenger)
end

--- Returns the seat position and angle of a given passenger seat.  
--- @param role number @The passenger role
--- @return GVector @The seat position
--- @return GAngle @The seat angle
function GVehicle:GetPassengerSeatPoint(role)
end

--- Returns the current RPM of the vehicle. This value is fake and doesn't actually affect the vehicle movement.  
--- @return number @The RPM.
function GVehicle:GetRPM()
end

--- Returns the current speed of the vehicle in MPH.  
--- @return number @The speed of the vehicle in MPH
function GVehicle:GetSpeed()
end

--- Returns the current steering of the vehicle.  
--- @return number @The current steering of the vehicle.
function GVehicle:GetSteering()
end

--- Returns the maximum steering degree of the vehicle  
--- @return number @The maximum steering degree of the vehicle
function GVehicle:GetSteeringDegrees()
end

--- Returns if vehicle has thirdperson mode enabled or not.  
--- @return boolean @Returns true if third person mode enabled, false otherwise
function GVehicle:GetThirdPersonMode()
end

--- Returns the current throttle of the vehicle.  
--- @return number @The current throttle of the vehicle
function GVehicle:GetThrottle()
end

--- Returns the vehicle class name. This is only useful for Sandbox spawned vehicles or any vehicle that properly sets the vehicle class with Vehicle:SetVehicleClass.  
--- @return string @The class name of the vehicle.
function GVehicle:GetVehicleClass()
end

--- Returns the vehicle parameters of given vehicle.  
--- @return table @The vehicle parameters
function GVehicle:GetVehicleParams()
end

--- Returns the view position and forward angle of a given passenger seat.  
--- @param role? number @The passenger role
--- @return GVector @The view position, will be 0, 0, 0 on failure
--- @return GAngle @The view angles, will be 0, 0, 0 on failure
--- @return number @The field of view, will be 0 on failure
function GVehicle:GetVehicleViewPosition(role)
end

--- Returns the PhysObj of given wheel.  
--- @param wheel number @The wheel to retrieve
--- @return GPhysObj @The wheel
function GVehicle:GetWheel(wheel)
end

--- Returns the base wheel height.  
--- @param wheel number @The wheel to get the base wheel height of.
--- @return number @The base wheel height.
function GVehicle:GetWheelBaseHeight(wheel)
end

--- Returns the wheel contact point.  
--- @param wheel number @The wheel to check
--- @return GVector @The contact position
--- @return number @The Surface Properties ID of hit surface.
--- @return boolean @Whether the wheel is on ground or not
function GVehicle:GetWheelContactPoint(wheel)
end

--- Returns the wheel count of the vehicle  
--- @return number @The amount of wheels
function GVehicle:GetWheelCount()
end

--- Returns the total wheel height.  
--- @param wheel number @The wheel to get the base wheel height of.
--- @return number @The total wheel height.
function GVehicle:GetWheelTotalHeight(wheel)
end

--- Returns whether this vehicle has boost at all.  
--- @return boolean @Whether this vehicle has boost at all.
function GVehicle:HasBoost()
end

--- Returns whether this vehicle has a brake pedal. See Vehicle:SetHasBrakePedal.  
--- @return boolean @Whether this vehicle has a brake pedal or not.
function GVehicle:HasBrakePedal()
end

--- Returns whether this vehicle is currently boosting or not.  
--- @return boolean @Whether this vehicle is currently boosting or not.
function GVehicle:IsBoosting()
end

--- Returns whether the engine is enabled or not, i.e. whether it can be started.  
--- @return boolean @Whether the engine is enabled
function GVehicle:IsEngineEnabled()
end

--- Returns whether the engine is started or not.  
--- @return boolean @Whether the engine is started or not.
function GVehicle:IsEngineStarted()
end

--- Returns true if the vehicle object is a valid or not. This will return `false` when Vehicle functions are not usable on the vehicle.  
--- @return boolean @Is the vehicle a valid vehicle or not
function GVehicle:IsValidVehicle()
end

--- Returns whether this vehicle's engine is underwater or not. ( Internally the attachment point "engine" or "vehicle_engine" is checked )  
--- @return boolean @Whether this vehicle's engine is underwater or not.
function GVehicle:IsVehicleBodyInWater()
end

--- Releases the vehicle's handbrake (Jeep) so it can roll without any passengers.  
--- This will be overwritten if the vehicle has a driver. Same as Vehicle:SetHandbrake( false )  
function GVehicle:ReleaseHandbrake()
end

--- Sets the boost. It is possible that this function does not work while the vehicle has a valid driver in it.  
--- @param boost number @The new boost value
function GVehicle:SetBoost(boost)
end

--- Sets the third person camera distance of the vehicle.  
--- @param distance number @Camera distance to set to
function GVehicle:SetCameraDistance(distance)
end

--- Turns on or off the Jeep handbrake so it can roll without a driver inside.  
--- Does nothing while the vehicle has a driver in it.  
--- @param handbrake boolean @true to turn on, false to turn off.
function GVehicle:SetHandbrake(handbrake)
end

--- Sets whether this vehicle has a brake pedal.  
--- @param brakePedal boolean @Whether this vehicle has a brake pedal
function GVehicle:SetHasBrakePedal(brakePedal)
end

--- Sets maximum reverse throttle  
--- @param maxRevThrottle number @The new maximum throttle
function GVehicle:SetMaxReverseThrottle(maxRevThrottle)
end

--- Sets maximum forward throttle  
--- @param maxThrottle number @The new maximum throttle.
function GVehicle:SetMaxThrottle(maxThrottle)
end

--- Sets spring length of given wheel  
--- @param wheel number @The wheel to change spring length of
--- @param length number @The new spring length
function GVehicle:SetSpringLength(wheel, length)
end

--- Sets the steering of the vehicle.  
--- ⁉ **VALIDATE**: The correct range, 0 to 1 or -1 to 1  
--- @param front number @Angle of the front wheels (-1 to 1)
--- @param rear number @Angle of the rear wheels (-1 to 1)
function GVehicle:SetSteering(front, rear)
end

--- Sets the maximum steering degrees of the vehicle  
--- @param steeringDegrees number @The new maximum steering degree
function GVehicle:SetSteeringDegrees(steeringDegrees)
end

--- Sets the third person mode state.  
--- @param enable boolean @Enable or disable the third person mode for this vehicle
function GVehicle:SetThirdPersonMode(enable)
end

--- Sets the throttle of the vehicle. It is possible that this function does not work with a valid driver in it.  
--- @param throttle number @The new throttle.
function GVehicle:SetThrottle(throttle)
end

--- Sets whether the entry or exit camera animation should be played or not.  
--- @param bOn boolean @Whether the entry or exit camera animation should be played or not.
function GVehicle:SetVehicleEntryAnim(bOn)
end

--- Sets the vehicle parameters for given vehicle.  
--- ℹ **NOTE**: Not all variables from the Structures/VehicleParams can be set.  
--- @param params table @The new new vehicle parameters
function GVehicle:SetVehicleParams(params)
end

--- Sets friction of given wheel.  This function may be broken.  
--- @param wheel number @The wheel to change the friction of
--- @param friction number @The new friction to set
function GVehicle:SetWheelFriction(wheel, friction)
end

--- Starts or stops the engine.  
--- @param start boolean @True to start, false to stop.
function GVehicle:StartEngine(start)
end
