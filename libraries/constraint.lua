--- The constraint library allows you to control the constraint system built into the physics engine (rope, weld, ballsockets, etc).  
_G.constraint = {}
--- Stores information about constraints in an entity's table.  
--- @param ent1 GEntity @The entity to store the information on.
--- @param constrt GEntity @The constraint to store in the entity's table.
--- @param ent2 GEntity @Optional
--- @param ent3 GEntity @Optional
--- @param ent4 GEntity @Optional
function constraint.AddConstraintTable(ent1, constrt, ent2, ent3, ent4)
end

--- Stores info about the constraints on the entity's table. The only difference between this and constraint.AddConstraintTable is that the constraint does not get deleted when the entity is removed.  
--- @param ent1 GEntity @The entity to store the information on.
--- @param constrt GEntity @The constraint to store in the entity's table.
--- @param ent2 GEntity @Optional
--- @param ent3 GEntity @Optional
--- @param ent4 GEntity @Optional
function constraint.AddConstraintTableNoDelete(ent1, constrt, ent2, ent3, ent4)
end

--- Creates an advanced ballsocket (ragdoll) constraint.  
--- Uses a https://developer.valvesoftware.com/wiki/Phys_ragdollconstraint  
--- @param Ent1 GEntity @First entity.
--- @param Ent2 GEntity @Second entity.
--- @param Bone1 number @Bone of first entity (0 for non-ragdolls)
--- @param Bone2 number @Bone of second entity (0 for non-ragdolls)
--- @param LPos1 GVector @Position on the first entity, in its local space coordinates.
--- @param LPos2 GVector @Position on the second entity, in its local space coordinates.
--- @param forcelimit number @Amount of force until it breaks (0 = unbreakable)
--- @param torquelimit number @Amount of torque (rotation speed) until it breaks (0 = unbreakable)
--- @param xmin number @Minimum angle in rotations around the X axis local to the constraint.
--- @param ymin number @Minimum angle in rotations around the Y axis local to the constraint.
--- @param zmin number @Minimum angle in rotations around the Z axis local to the constraint.
--- @param xmax number @Maximum angle in rotations around the X axis local to the constraint.
--- @param ymax number @Maximum angle in rotations around the Y axis local to the constraint.
--- @param zmax number @Maximum angle in rotations around the Z axis local to the constraint.
--- @param xfric number @Rotational friction in the X axis local to the constraint.
--- @param yfric number @Rotational friction in the Y axis local to the constraint.
--- @param zfric number @Rotational friction in the Z axis local to the constraint.
--- @param onlyrotation number @Only limit rotation, free movement.
--- @param nocollide number @Whether the entities should be no-collided.
--- @return GEntity @A phys_ragdollconstraint entity
function constraint.AdvBallsocket(Ent1, Ent2, Bone1, Bone2, LPos1, LPos2, forcelimit, torquelimit, xmin, ymin, zmin, xmax, ymax, zmax, xfric, yfric, zfric, onlyrotation, nocollide)
end

--- Creates an axis constraint.  
--- @param Ent1 GEntity @First entity.
--- @param Ent2 GEntity @Second entity.
--- @param Bone1 number @Bone of first entity (0 for non-ragdolls)
--- @param Bone2 number @Bone of second entity (0 for non-ragdolls)
--- @param LPos1 GVector @Position on the first entity, in its local space coordinates.
--- @param LPos2 GVector @Position on the second entity, in its local space coordinates.
--- @param forcelimit number @Amount of force until it breaks (0 = unbreakable)
--- @param torquelimit number @Amount of torque (rotational force) until it breaks (0 = unbreakable)
--- @param friction number @Constraint friction.
--- @param nocollide number @Whether the entities should be no-collided.
--- @param LocalAxis GVector @If you include the LocalAxis then LPos2 will not be used in the final constraint
--- @param DontAddTable boolean @Whether or not to add the constraint info on the entity table
--- @return GEntity @Constraint
function constraint.Axis(Ent1, Ent2, Bone1, Bone2, LPos1, LPos2, forcelimit, torquelimit, friction, nocollide, LocalAxis, DontAddTable)
end

--- Creates a ballsocket joint.  
--- @param Ent1 GEntity @First entity
--- @param Ent2 GEntity @Second entity
--- @param Bone1 number @Bone of first entity (0 for non-ragdolls)
--- @param Bone2 number @Bone of second entity (0 for non-ragdolls)
--- @param LocalPos GVector @Centerposition of the joint, relative to the **second** entity.
--- @param forcelimit number @Amount of force until it breaks (0 = unbreakable)
--- @param torquelimit number @Amount of torque (rotation speed) until it breaks (0 = unbreakable)
--- @param nocollide number @Whether the entities should be nocollided
--- @return GEntity @Constraint
function constraint.Ballsocket(Ent1, Ent2, Bone1, Bone2, LocalPos, forcelimit, torquelimit, nocollide)
end

--- Basic checks to make sure that the specified entity and bone are valid. Returns false if we should not be constraining the entity.  
--- @param ent GEntity @The entity to check
--- @param bone number @The bone of the entity to check (use 0 for mono boned ents)
--- @return boolean @shouldConstrain
function constraint.CanConstrain(ent, bone)
end

--- Creates a rope without any constraint.  
--- @param pos GVector @Starting position of the rope.
--- @param width number @Width of the rope.
--- @param material string @Material of the rope.
--- @param Constraint GEntity @Constraint for the rope.
--- @param Ent1 GEntity @First entity.
--- @param LPos1 GVector @Position of first end of the rope
--- @param Bone1 number @Bone of first entity (0 for non-ragdolls)
--- @param Ent2 GEntity @Second entity.
--- @param LPos2 GVector @Position of second end of the rope
--- @param Bone2 number @Bone of second entity (0 for non-ragdolls)
--- @param kv table @(Optional) Any additional key/values to be set on the rope.
--- @return GEntity @rope
function constraint.CreateKeyframeRope(pos, width, material, Constraint, Ent1, LPos1, Bone1, Ent2, LPos2, Bone2, kv)
end

--- Creates an invisible, non-moveable anchor point in the world to which things can be attached.  
--- @param pos GVector @The position to spawn the anchor at
--- @return GEntity, GPhysObj, number, GVector
function constraint.CreateStaticAnchorPoint(pos)
end

--- Creates an elastic constraint.  
--- @param Ent1 GEntity @First entity.
--- @param Ent2 GEntity @Second entity
--- @param Bone1 number @Bone of first entity (0 for non-ragdolls)
--- @param Bone2 number @Bone of second entity (0 for non-ragdolls)
--- @param LPos1 GVector @Position of first end of the rope
--- @param LPos2 GVector @Position of second end of the rope
--- @param constant number 
--- @param damping number 
--- @param rdamping number 
--- @param material string @The material of the rope.
--- @param width number @Width of rope.
--- @param stretchonly boolean 
--- @return GEntity, GEntity
function constraint.Elastic(Ent1, Ent2, Bone1, Bone2, LPos1, LPos2, constant, damping, rdamping, material, width, stretchonly)
end

--- Returns the constraint of a specified type between two entities, if it exists  
--- @param ent1 GEntity @The first entity to check
--- @param ent2 GEntity @The second entity to check
--- @param type string @The constraint type to look for (eg
--- @param bone1 number @The bone number for the first entity (0 for monoboned entities)
--- @param bone2 number @The bone number for the second entity
--- @return GEntity @constraint
function constraint.Find(ent1, ent2, type, bone1, bone2)
end

--- Returns the first constraint of a specific type directly connected to the entity found  
--- @param ent GEntity @The entity to check
--- @param type string @The type of constraint (eg
--- @return table @The constraint table, set with constraint.AddConstraintTable
function constraint.FindConstraint(ent, type)
end

--- Returns the other entity involved in the first constraint of a specific type directly connected to the entity  
--- @param ent GEntity @The entity to check
--- @param type string @The type of constraint (eg
--- @return GEntity @The other entity.
function constraint.FindConstraintEntity(ent, type)
end

--- Returns a table of all constraints of a specific type directly connected to the entity  
--- @param ent GEntity @The entity to check
--- @param type string @The type of constraint (eg
--- @return table @All the constraints of this entity.
function constraint.FindConstraints(ent, type)
end

--- Make this entity forget any constraints it knows about. Note that this will not actually remove the constraints.  
--- @param ent GEntity @The entity that will forget its constraints.
function constraint.ForgetConstraints(ent)
end

--- Returns a table of all entities recursively constrained to an entitiy.  
--- @param ent GEntity @The entity to check
--- @param ResultTable table @Table used to return result
--- @return table @A table containing all of the constrained entities
function constraint.GetAllConstrainedEntities(ent, ResultTable)
end

--- Returns a table of all constraints directly connected to the entity  
--- @param ent GEntity @The entity to check
--- @return table @A list of all constraints connected to the entity.
function constraint.GetTable(ent)
end

--- Returns true if the entity has constraints attached to it  
--- @param ent GEntity @The entity to check
--- @return boolean @Whether the entity has any constraints or not.
function constraint.HasConstraints(ent)
end

--- Creates a Hydraulic constraint.  
--- @param pl GPlayer @The player that will be used to call numpad.OnDown.
--- @param Ent1 GEntity @First entity.
--- @param Ent2 GEntity @Second entity.
--- @param Bone1 number @Bone of first entity (0 for non-ragdolls),
--- @param Bone2 number @Bone of second entity (0 for non-ragdolls).
--- @param LPos1 GVector 
--- @param LPos2 GVector 
--- @param Length1 number 
--- @param Length2 number 
--- @param width number @The width of the rope.
--- @param key number @The key binding, corresponding to an Enums/KEY
--- @param fixed number @Whether the hydraulic is fixed.
--- @param speed number 
--- @param material string @The material of the rope.
--- @return GEntity, GEntity, GEntity, GEntity
function constraint.Hydraulic(pl, Ent1, Ent2, Bone1, Bone2, LPos1, LPos2, Length1, Length2, width, key, fixed, speed, material)
end

--- Creates a keep upright constraint.  
--- ℹ **NOTE**: This function only works on prop_physics or prop_ragdoll.  
--- @param ent GEntity @The entity to keep upright
--- @param ang GAngle @The angle defined as "upright"
--- @param bone number @The bone of the entity to constrain (0 for boneless)
--- @param angularLimit number @Basically, the strength of the constraint
--- @return GEntity @The created constraint, if any or false if the constraint failed to set
function constraint.Keepupright(ent, ang, bone, angularLimit)
end

--- Creates a motor constraint.  
--- @param Ent1 GEntity @First entity.
--- @param Ent2 GEntity @Second entity.
--- @param Bone1 number @Bone of first entity (0 for non-ragdolls)
--- @param Bone2 number @Bone of second entity (0 for non-ragdolls)
--- @param LPos1 GVector 
--- @param LPos2 GVector 
--- @param friction number 
--- @param torque number 
--- @param forcetime number 
--- @param nocollide number @Whether the entities should be no-collided.
--- @param toggle number @Whether the constraint is on toggle.
--- @param pl GPlayer @The player that will be used to call numpad.OnDown and numpad.OnUp.
--- @param forcelimit number @Amount of force until it breaks (0 = unbreakable)
--- @param numpadkey_fwd number @The key binding for "forward", corresponding to an Enums/KEY
--- @param numpadkey_bwd number @The key binding for "backwards", corresponding to an Enums/KEY
--- @param direction number 
--- @param LocalAxis GVector 
--- @return GEntity, GEntity
function constraint.Motor(Ent1, Ent2, Bone1, Bone2, LPos1, LPos2, friction, torque, forcetime, nocollide, toggle, pl, forcelimit, numpadkey_fwd, numpadkey_bwd, direction, LocalAxis)
end

--- Creates a muscle constraint.  
--- @param pl GPlayer @The player that will be used to call numpad.OnDown.
--- @param Ent1 GEntity @First entity.
--- @param Ent2 GEntity @Second entity.
--- @param Bone1 number @Bone of first entity (0 for non-ragdolls)
--- @param Bone2 number @Bone of second entity (0 for non-ragdolls)
--- @param LPos1 GVector 
--- @param LPos2 GVector 
--- @param Length1 number 
--- @param Length2 number 
--- @param width number @Width of the rope.
--- @param key number @The key binding, corresponding to an Enums/KEY
--- @param fixed number @Whether the constraint is fixed.
--- @param period number 
--- @param amplitude number 
--- @param starton boolean 
--- @param material string @Material of the rope.
--- @return GEntity, GEntity, GEntity, GEntity
function constraint.Muscle(pl, Ent1, Ent2, Bone1, Bone2, LPos1, LPos2, Length1, Length2, width, key, fixed, period, amplitude, starton, material)
end

--- Creates an no-collide "constraint". Disables collision between two entities.  
--- ℹ **NOTE**: Does not work with players.  
--- @param Ent1 GEntity @First entity.
--- @param Ent2 GEntity @Second entity.
--- @param Bone1 number @Bone of first entity (0 for non-ragdolls).
--- @param Bone2 number @Bone of second entity (0 for non-ragdolls).
--- @return GEntity @Constraint
function constraint.NoCollide(Ent1, Ent2, Bone1, Bone2)
end

--- Creates a pulley constraint.  
--- @param Ent1 GEntity 
--- @param Ent4 GEntity 
--- @param Bone1 number 
--- @param Bone4 number 
--- @param LPos1 GVector 
--- @param LPos4 GVector 
--- @param WPos2 GVector 
--- @param WPos3 GVector 
--- @param forcelimit number @Amount of force until it breaks (0 = unbreakable)
--- @param rigid boolean @Whether the constraint is rigid.
--- @param width number @Width of the rope.
--- @param material string @Material of the rope.
--- @return GEntity @Constraint
function constraint.Pulley(Ent1, Ent4, Bone1, Bone4, LPos1, LPos4, WPos2, WPos3, forcelimit, rigid, width, material)
end

--- Attempts to remove all constraints associated with an entity  
--- @param ent GEntity @The entity to remove constraints from
--- @return boolean, number
function constraint.RemoveAll(ent)
end

--- Attempts to remove all constraints of a specified type associated with an entity  
--- @param ent GEntity @The entity to check
--- @param type string @The constraint type to remove (eg
--- @return boolean, number
function constraint.RemoveConstraints(ent, type)
end

--- Creates a rope constraint - with rope!  
--- @param Ent1 GEntity @First entity
--- @param Ent2 GEntity @Second entity
--- @param Bone1 number @Bone of first entity (0 for non-ragdolls)
--- @param Bone2 number @Bone of second entity (0 for non-ragdolls)
--- @param LPos1 GVector @Position of first end of the rope
--- @param LPos2 GVector @Position of second end of the rope
--- @param length number @Length of the rope.
--- @param addlength number @Amount to add to the length of the rope
--- @param forcelimit number @Amount of force until it breaks (0 = unbreakable).
--- @param width number @Width of the rope.
--- @param material string @Material of the rope.
--- @param rigid boolean @Whether the constraint is rigid.
--- @return GEntity, GEntity
function constraint.Rope(Ent1, Ent2, Bone1, Bone2, LPos1, LPos2, length, addlength, forcelimit, width, material, rigid)
end

--- Creates a slider constraint.  
--- @param Ent1 GEntity @First entity.
--- @param Ent2 GEntity @Second entity.
--- @param Bone1 number @Bone of first entity (0 for non-ragdolls),
--- @param Bone2 number @Bone of second entity (0 for non-ragdolls).
--- @param LPos1 GVector 
--- @param LPos2 GVector 
--- @param width number @The width of the rope.
--- @param material string @The material of the rope.
--- @return GEntity, GEntity
function constraint.Slider(Ent1, Ent2, Bone1, Bone2, LPos1, LPos2, width, material)
end

--- Creates a weld constraint  
--- @param ent1 GEntity @The first entity
--- @param ent2 GEntity @The second entity
--- @param bone1 number @The bonenumber of the first entity (0 for monoboned entities)
--- @param bone2 number @The bonenumber of the second entity
--- @param forcelimit number @The amount of force appliable to the constraint before it will break (0 is never)
--- @param nocollide boolean @Should ent1 be nocollided to ent2 via this constraint
--- @param deleteent1onbreak boolean @If true, when ent2 is removed, ent1 will also be removed
--- @return GEntity @constraint
function constraint.Weld(ent1, ent2, bone1, bone2, forcelimit, nocollide, deleteent1onbreak)
end

--- Creates a Winch constraint.  
--- @param pl GPlayer @The player that will be used to call numpad.OnDown and numpad.OnUp.
--- @param Ent1 GEntity @First entity.
--- @param Ent2 GEntity @Second entity.
--- @param Bone1 number @Bone of first entity (0 for non-ragdolls),
--- @param Bone2 number @Bone of second entity (0 for non-ragdolls).
--- @param LPos1 GVector 
--- @param LPos2 GVector 
--- @param width number @The width of the rope.
--- @param fwd_bind number @The key binding for "forward", corresponding to an Enums/KEY
--- @param bwd_bind number @The key binding for "backwards", corresponding to an Enums/KEY
--- @param fwd_speed number @Forward speed.
--- @param bwd_speed number @Backwards speed.
--- @param material string @The material of the rope.
--- @param toggle boolean @Whether the winch should be on toggle.
--- @return GEntity, GEntity, GEntity
function constraint.Winch(pl, Ent1, Ent2, Bone1, Bone2, LPos1, LPos2, width, fwd_bind, bwd_bind, fwd_speed, bwd_speed, material, toggle)
end

