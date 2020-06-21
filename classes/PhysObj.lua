--- @class GPhysObj
--- This is the object returned by Entity:GetPhysicsObject and Entity:GetPhysicsObjectNum.  
--- It represents a physics object.  
local GPhysObj = {}
--- Adds the specified velocity to the current.  
--- @param angularVelocity GVector @Additional velocity.
function GPhysObj:AddAngleVelocity(angularVelocity)
end

--- Adds one or more bit flags.  
--- @param flags number @Bitflag, see Enums/FVPHYSICS.
function GPhysObj:AddGameFlag(flags)
end

--- Adds the specified velocity to the current.  
--- @param velocity GVector @Additional velocity.
function GPhysObj:AddVelocity(velocity)
end

--- Rotates the object so that it's angles are aligned to the ones inputted.  
--- @param from GAngle 
--- @param to GAngle 
--- @return GAngle 
function GPhysObj:AlignAngles(from, to)
end

--- Applies the specified force to the physics object. (in Newtons)  
--- ℹ **NOTE**: This will not work on players, use Entity:SetVelocity instead.  
--- @param force GVector @The force to be applied.
function GPhysObj:ApplyForceCenter(force)
end

--- Applies the specified force on the physics object at the specified position  
--- @param force GVector @The force to be applied.
--- @param position GVector @The position in world coordinates where the force is applied to the physics object.
function GPhysObj:ApplyForceOffset(force, position)
end

--- Applies specified torque to the physics object.  
--- @param torque GVector @The torque to be applied in kg * degrees / s.
function GPhysObj:ApplyTorqueCenter(torque)
end

--- Calculates the force and torque on the center of mass for an offset force impulse. The outputs can be directly passed to PhysObj:ApplyForceCenter and PhysObj:ApplyTorqueCenter, respectively.  
--- @param force GVector @The initial force
--- @param pos GVector @The location of the force in world coordinates
--- @return GVector, GVector
function GPhysObj:CalculateForceOffset(force, pos)
end

--- Calculates the linear and angular velocities on the center of mass for an offset force impulse. The outputs can be directly passed to PhysObj:AddVelocity and PhysObj:AddAngleVelocity, respectively.  
--- @param force GVector @The initial force
--- @param pos GVector @The location of the force in world coordinates
--- @return GVector, GVector
function GPhysObj:CalculateVelocityOffset(force, pos)
end

--- Removes one of more specified flags.  
--- @param flags number @Bitflag, see Enums/FVPHYSICS.
function GPhysObj:ClearGameFlag(flags)
end

--- Allows you to move a PhysObj to a point and angle in 3D space.  
--- @param shadowparams table @The parameters for the shadow
function GPhysObj:ComputeShadowControl(shadowparams)
end

--- Sets whether the physics object should collide with anything or not, including world.  
--- ⚠ **WARNING**: This function currently has major problems with player collisions, and as such should be avoided at all costs.  
--- A better alternative to this function would be using Entity:SetCollisionGroup( COLLISION_GROUP_WORLD ).  
--- @param enable boolean @True to enable, false to disable.
function GPhysObj:EnableCollisions(enable)
end

--- Sets whenever the physics object should be affected by drag.  
--- @param enable boolean @True to enable, false to disable.
function GPhysObj:EnableDrag(enable)
end

--- Sets whether the PhysObject should be affected by gravity  
--- @param enable boolean @True to enable, false to disable.
function GPhysObj:EnableGravity(enable)
end

--- Sets whether the physobject should be able to move or not.  
--- This is the exact method the Physics Gun uses to freeze props. If a motion-disabled physics object is grabbed with the physics gun, the object will be able to move again. To disallow this, use GM:PhysgunPickup.  
--- @param enable boolean @True to enable, false to disable.
function GPhysObj:EnableMotion(enable)
end

--- Returns the mins and max of the physics object.  
--- @return GVector, GVector
function GPhysObj:GetAABB()
end

--- Gets the angular velocity of the object in degrees per second.  
--- @return GVector @The angular velocity
function GPhysObj:GetAngleVelocity()
end

--- Returns the angles of the physics object.  
--- @return GAngle @The angles of the physics object.
function GPhysObj:GetAngles()
end

--- Returns the contents flag of the PhysObj.  
--- @return number @The Enums/CONTENTS.
function GPhysObj:GetContents()
end

--- Returns the linear and angular damping of the physics object.  
--- @return number, number
function GPhysObj:GetDamping()
end

--- Returns the kinetic energy of the physobject.  
--- @return number @The kinetic energy
function GPhysObj:GetEnergy()
end

--- Returns the parent entity of the physics object.  
--- @return GEntity @parent
function GPhysObj:GetEntity()
end

--- Returns the friction snapshot of this physics object. This is useful for determining if an object touching ground for example.  
--- @return table @A table of tables containing the following data:
function GPhysObj:GetFrictionSnapshot()
end

--- Returns the directional inertia of the physics object.  
--- @return GVector @directionalInertia
function GPhysObj:GetInertia()
end

--- Returns 1 divided by the inertia.  
--- @return number @The inverted inertia
function GPhysObj:GetInvInertia()
end

--- Returns 1 divided by the physics object's mass.  
--- @return number @The inverted mass.
function GPhysObj:GetInvMass()
end

--- Returns the mass of the physics object.  
--- @return number @The mass in kilograms.
function GPhysObj:GetMass()
end

--- Returns the center of mass of the physics object as a local vector.  
--- @return GVector @The center of mass of the physics object.
function GPhysObj:GetMassCenter()
end

--- Returns the physical material of the physics object.  
--- @return string @The physical material
function GPhysObj:GetMaterial()
end

--- Returns the physics mesh of the object which is used for physobj-on-physobj collision.  
--- @return table @Table of Structures/MeshVertexs where each three vertices represent a triangle
function GPhysObj:GetMesh()
end

--- Returns all convex physics meshes of the object. See Entity.PhysicsInitMultiConvex for more information.  
--- @return table @Table of Structures/MeshVertexs where each Structures/MeshVertex is an independent convex mesh and each three vertices represent a triangle
function GPhysObj:GetMeshConvexes()
end

--- Returns the name of the physics object.  
--- @return string @The name of the physics object.
function GPhysObj:GetName()
end

--- Returns the position of the physics object.  
--- @return GVector @The position
function GPhysObj:GetPos()
end

--- Returns the position and angle of the physics object as a 3x4 matrix (VMatrix is 4x4 so the fourth row goes unused). The first three columns store the angle as a [rotation matrix](https://en.wikipedia.org/wiki/Rotation_matrix), and the fourth column stores the position vector.  
--- @return GVMatrix @The position and angle matrix.
function GPhysObj:GetPositionMatrix()
end

--- Returns the rotation damping of the physics object.  
--- @return number @The rotation damping
function GPhysObj:GetRotDamping()
end

--- Returns the angles of the PhysObj shadow. See PhysObj:UpdateShadow.  
--- @return GAngle @The angles of the PhysObj shadow.
function GPhysObj:GetShadowAngles()
end

--- Returns the position of the PhysObj shadow. See PhysObj:UpdateShadow.  
--- @return GVector @The position of the PhysObj shadow.
function GPhysObj:GetShadowPos()
end

--- Returns the speed damping of the physics object.  
--- @return number @speedDamping
function GPhysObj:GetSpeedDamping()
end

--- Returns the stress of the entity.  
--- @return number @exertedStress
function GPhysObj:GetStress()
end

--- Returns the surface area of the physics object in source-units². Or nil if the PhysObj is a generated sphere or box.  
--- @return number @The surface area or nil if the PhysObj is a generated sphere or box.
function GPhysObj:GetSurfaceArea()
end

--- Returns the absolute directional velocity of the physobject.  
--- @return GVector @velocity
function GPhysObj:GetVelocity()
end

--- Returns the world velocity of a point in world coordinates about the object.  
--- @param point GVector 
--- @return GVector 
function GPhysObj:GetVelocityAtPoint(point)
end

--- Returns the volume in source units³. Or nil if the PhysObj is a generated sphere or box.  
--- @return number @The volume or nil if the PhysObj is a generated sphere or box.
function GPhysObj:GetVolume()
end

--- Returns whenever the specified flag(s) is/are set.  
--- @param flags number @Bitflag, see Enums/FVPHYSICS.
--- @return boolean @If flag was set or not
function GPhysObj:HasGameFlag(flags)
end

--- Returns whether the physics object is "sleeping".  
--- See PhysObj:Sleep for more information.  
--- @return boolean @Whether the physics object is sleeping.
function GPhysObj:IsAsleep()
end

--- Returns whenever the entity is able to collide or not.  
--- @return boolean @isCollisionEnabled
function GPhysObj:IsCollisionEnabled()
end

--- Returns whenever the entity is affected by drag.  
--- @return boolean @dragEnabled
function GPhysObj:IsDragEnabled()
end

--- Returns whenever the entity is affected by gravity.  
--- @return boolean @gravitated
function GPhysObj:IsGravityEnabled()
end

--- Returns if the physics object can move itself (by velocity, acceleration)  
--- @return boolean @motionEnabled
function GPhysObj:IsMotionEnabled()
end

--- Returns whenever the entity is able to move.  
--- @return boolean @movable
function GPhysObj:IsMoveable()
end

--- Returns whenever the physics object is penetrating another physics object.  
--- This is internally implemented as `PhysObj:HasGameFlag( FVPHYSICS_PENETRATING )` and thus is only updated for non-static physics objects.  
--- @return boolean @Whether the physics object is penetrating another object.
function GPhysObj:IsPenetrating()
end

--- Returns if the physics object is valid/not NULL.  
--- @return boolean @isValid
function GPhysObj:IsValid()
end

--- Mapping a vector in local frame of the physics object to world frame.  
--- ℹ **NOTE**: this function does translation and rotation, with translation done first.  
--- @param LocalVec GVector @A vector in the physics object's local frame
--- @return GVector @The corresponding vector in world frame
function GPhysObj:LocalToWorld(LocalVec)
end

--- Rotate a vector from the local frame of the physics object to world frame.  
--- ℹ **NOTE**: This function only rotates the vector, without any translation operation.  
--- @param LocalVec GVector @A vector in the physics object's local frame
--- @return GVector @The corresponding vector in world frame
function GPhysObj:LocalToWorldVector(LocalVec)
end

--- Prints debug info about the state of the physics object to the console.  
function GPhysObj:OutputDebugInfo()
end

--- Call this when the collision filter conditions change due to this object's state (e.g. changing solid type or collision group)  
function GPhysObj:RecheckCollisionFilter()
end

--- A convinience function for Angle:RotateAroundAxis.  
--- @param dir GVector @Direction, around which we will rotate
--- @param ang number @Amount of rotation, in degrees
--- @return GAngle @The resulting angle
function GPhysObj:RotateAroundAxis(dir, ang)
end

--- Sets the amount of [drag](https://en.wikipedia.org/wiki/Drag_(physics)) to apply to a physics object when attempting to rotate.  
--- @param coefficient number @[Drag coefficient](https://en.wikipedia.org/wiki/Drag_coefficient)
function GPhysObj:SetAngleDragCoefficient(coefficient)
end

--- Sets the angles of the physobject.  
--- @param angles GAngle @The new angles of the physobject.
function GPhysObj:SetAngles(angles)
end

--- Sets the buoyancy ratio of the physics object. (How well it floats in water)  
--- @param buoyancy number @Buoyancy ratio, where 0 is not buoyant at all (like a rock), and 1 is very buoyant (like wood)
function GPhysObj:SetBuoyancyRatio(buoyancy)
end

--- Sets the contents flag of the PhysObj.  
--- @param contents number @The Enums/CONTENTS.
function GPhysObj:SetContents(contents)
end

--- Sets the linear and angular damping of the physics object.  
--- @param linearDamping number @Linear damping.
--- @param angularDamping number @Angular damping.
function GPhysObj:SetDamping(linearDamping, angularDamping)
end

--- Modifies how much drag (air resistance) affects the object.  
--- @param drag number @The drag coefficient
function GPhysObj:SetDragCoefficient(drag)
end

--- Sets the directional inertia.  
--- @param directionalInertia GVector @The directional inertia of the object.<br>
function GPhysObj:SetInertia(directionalInertia)
end

--- Sets the mass of the physics object.  
--- @param mass number @The mass in kilograms.
function GPhysObj:SetMass(mass)
end

--- Sets the material of the physobject.  
--- ℹ **NOTE**: Impact sounds will only change if this is called on client  
--- @param materialName string @The name of the phys material to use
function GPhysObj:SetMaterial(materialName)
end

--- Sets the position of the physobject.  
--- @param position GVector @The new position of the physobject.
--- @param teleport boolean 
function GPhysObj:SetPos(position, teleport)
end

--- Sets the velocity of the physics object for the next iteration.  
--- @param velocity GVector @The new velocity of the physics object.
function GPhysObj:SetVelocity(velocity)
end

--- Sets the velocity of the physics object.  
--- @param velocity GVector @The new velocity of the physics object.
function GPhysObj:SetVelocityInstantaneous(velocity)
end

--- Makes the physics object "sleep".  
--- The physics object will no longer be moving unless it is "woken up" by either a collision with another moving object, or by PhysObj:Wake. This is an optimization feature of the physics engine.  
function GPhysObj:Sleep()
end

--- Unlike PhysObj:SetPos and PhysObj:SetAngles, this allows the movement of a physobj while leaving physics interactions intact.  
--- This is used internally by the motion controller of the Gravity Gun , the +use pickup and the Physics Gun, and entities such as the crane.  
--- ℹ **NOTE**: This is the ideal function to move a physics shadow created with Entity:PhysicsInitShadow or Entity:MakePhysicsObjectAShadow.  
--- @param targetPosition GVector @The position we should move to.
--- @param targetAngles GAngle @The angle we should rotate towards.
--- @param frameTime number @The frame time to use for this movement, can be generally filled with Global.FrameTime or ENTITY:PhysicsSimulate with the deltaTime
function GPhysObj:UpdateShadow(targetPosition, targetAngles, frameTime)
end

--- Wakes the physics object.  
--- See PhysObj:Sleep for more information.  
function GPhysObj:Wake()
end

--- Converts a vector to a relative to the physics object coordinate system.  
--- @param vec GVector @The vector in world space coordinates.
--- @return GVector @The vector local to PhysObj:GetPos.
function GPhysObj:WorldToLocal(vec)
end

--- Rotate a vector from the world frame to the local frame of the physics object.  
--- ℹ **NOTE**: This function only rotates the vector, without any translation operation.  
--- @param WorldVec GVector @A vector in the world frame
--- @return GVector @The corresponding vector relative to the PhysObj
function GPhysObj:WorldToLocalVector(WorldVec)
end

