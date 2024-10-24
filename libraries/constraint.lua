--- @meta

--- The constraint library allows you to control the constraint system built into the physics engine (rope, weld, ballsockets, etc).  
_G.constraint = {}
--- Creates an advanced ballsocket (ragdoll) constraint. See constraint.Ballsocket for the simpler version.  
--- @param ent1 GEntity @First entity.
--- @param ent2 GEntity @Second entity.
--- @param bone1 number @PhysObj number of first entity to constrain to
--- @param bone2 number @PhysObj number of second entity to constrain to
--- @param localPos1 GVector @Position relative to the the first physics object to constrain to.
--- @param localPos2? GVector @Position relative to the the second physics object to constrain to
--- @param forceLimit? number @Amount of force until it breaks (0 = unbreakable)
--- @param torqueLimit? number @Amount of torque (rotation speed) until it breaks (0 = unbreakable)
--- @param xMin? number @Minimum angle in rotations around the X axis local to the constraint.
--- @param yMin? number @Minimum angle in rotations around the Y axis local to the constraint.
--- @param zMin? number @Minimum angle in rotations around the Z axis local to the constraint.
--- @param xMax? number @Maximum angle in rotations around the X axis local to the constraint.
--- @param yMax? number @Maximum angle in rotations around the Y axis local to the constraint.
--- @param zMax? number @Maximum angle in rotations around the Z axis local to the constraint.
--- @param xFric? number @Rotational friction in the X axis local to the constraint.
--- @param yFric? number @Rotational friction in the Y axis local to the constraint.
--- @param zFric? number @Rotational friction in the Z axis local to the constraint.
--- @param onlyRotation? number @Only limit rotation, free movement.
--- @param noCollide? number @Whether the entities should be no-collided.
--- @return GEntity @A [phys_ragdollconstraint](https://developer.valvesoftware.com/wiki/Phys_ragdollconstraint) entity
function constraint.AdvBallsocket(ent1, ent2, bone1, bone2, localPos1, localPos2, forceLimit, torqueLimit, xMin, yMin, zMin, xMax, yMax, zMax, xFric, yFric, zFric, onlyRotation, noCollide)
end

--- Creates an axis constraint.  
--- @param ent1 GEntity @First entity.
--- @param ent2 GEntity @Second entity.
--- @param bone1 number @PhysObj number of first entity to constrain to
--- @param bone2 number @PhysObj number of second entity to constrain to
--- @param localPos1 GVector @Position relative to the the first physics object to constrain to.
--- @param localPos2 GVector @Position relative to the the second physics object to constrain to.
--- @param forceLimit? number @Amount of force until it breaks (0 = unbreakable)
--- @param torqueLimit? number @Amount of torque (rotational force) until it breaks (0 = unbreakable)
--- @param friction? number @Constraint friction.
--- @param noCollide? number @Whether the entities should be no-collided.
--- @param localAxis? GVector @If you include the LocalAxis then LPos2 will not be used in the final constraint
--- @param dontAddTable? boolean @Whether or not to add the constraint info on the entity table
--- @return GEntity @The created constraint
function constraint.Axis(ent1, ent2, bone1, bone2, localPos1, localPos2, forceLimit, torqueLimit, friction, noCollide, localAxis, dontAddTable)
end

--- Creates a ballsocket joint. See See constraint.AdvBallsocket if you also wish to limit rotation angles in some way.  
--- @param ent1 GEntity @First entity.
--- @param ent2 GEntity @Second entity.
--- @param bone1 number @PhysObj number of first entity to constrain to
--- @param bone2 number @PhysObj number of second entity to constrain to
--- @param localPos GVector @Center position of the joint, relative to the **second** entity's physics object.
--- @param forcelimit? number @Amount of force until it breaks (0 = unbreakable)
--- @param torquelimit? number @Amount of torque (rotation speed) until it breaks (0 = unbreakable)
--- @param nocollide? number @Whether the constrained entities should collided with each other or not.
--- @return GEntity @The crated constraint
function constraint.Ballsocket(ent1, ent2, bone1, bone2, localPos, forcelimit, torquelimit, nocollide)
end

--- Basic checks to make sure that the specified entity and bone are valid. Returns false if we should not be constraining the entity.  
--- @param ent GEntity @The entity to check
--- @param bone number @The bone of the entity to check (use 0 for mono boned ents)
--- @return boolean @Whether a constraint can or should be created.
function constraint.CanConstrain(ent, bone)
end

--- Creates a rope without any constraint.  
--- @param pos GVector @Position for the rope entity
--- @param width number @Width of the rope.
--- @param material? string @Material of the rope
--- @param constraint? GEntity @Constraint for the rope
--- @param ent1? GEntity @First entity.
--- @param localPos1? GVector @Position relative to the the first physics object to constrain to.
--- @param bone1? number @PhysObj number of first entity to constrain to
--- @param ent2? GEntity @Second entity.
--- @param localPos2? GVector @Position relative to the the second physics object to constrain to.
--- @param bone2? number @PhysObj number of second entity to constrain to
--- @param keyValues? table @Any additional key/values to be set on the rope.
--- @return GEntity @The created rope ([keyframe_rope](https://developer.valvesoftware.com/wiki/Keyframe_rope)), or `nil` or failure.
function constraint.CreateKeyframeRope(pos, width, material, constraint, ent1, localPos1, bone1, ent2, localPos2, bone2, keyValues)
end

--- Creates an invisible, non-moveable anchor point in the world to which things can be attached.  
--- ℹ **NOTE**: The entity used internally by this function (`gmod_anchor`) only exists in Sandbox derived gamemodes, meaning this function will only work in these gamemodes.  
--- To use this in other gamemodes, you may need to create your own [gmod_anchor](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/gamemodes/sandbox/entities/entities/gmod_anchor.lua) entity.  
--- @param pos GVector @The position to spawn the anchor at
--- @return GEntity @The anchor entity
--- @return GPhysObj @The achor entity's physics object
--- @return number @Always `0`.
--- @return GVector @Always `vector_zero`.
function constraint.CreateStaticAnchorPoint(pos)
end

--- Creates an elastic rope constraint.  
--- @param ent1 GEntity @First entity.
--- @param ent2 GEntity @Second entity.
--- @param bone1 number @PhysObj number of first entity to constrain to
--- @param bone2 number @PhysObj number of second entity to constrain to
--- @param localPos1 GVector @Position relative to the the first physics object to constrain to.
--- @param localPos2 GVector @Position relative to the the second physics object to constrain to.
--- @param constant number @Stiffness of the elastic
--- @param damping number @How much energy the elastic loses
--- @param relDamping number @The amount of energy the elastic loses proportional to the relative velocity of the two objects the elastic is attached to.
--- @param material? string @The material of the rope
--- @param width? number @Width of rope.
--- @param stretchOnly? boolean @Apply physics forces only on stretch.
--- @param color? table @The color of the rope
--- @return GEntity @The created constraint
--- @return GEntity @The crated rope
function constraint.Elastic(ent1, ent2, bone1, bone2, localPos1, localPos2, constant, damping, relDamping, material, width, stretchOnly, color)
end

--- Returns the constraint of a specified type between two entities, if it exists  
--- @param ent1 GEntity @The first entity to check
--- @param ent2 GEntity @The second entity to check
--- @param type string @The type of constraint, case sensitive
--- @param bone1 number @The bone number for the first entity (0 for monoboned entities)
--- @param bone2 number @The bone number for the second entity
--- @return GEntity @constraint
function constraint.Find(ent1, ent2, type, bone1, bone2)
end

--- Returns the first constraint of a specific type directly connected to the entity found  
--- @param ent GEntity @The entity to check
--- @param type string @The type of constraint, case sensitive
--- @return table @The constraint table, set with constraint.AddConstraintTable
function constraint.FindConstraint(ent, type)
end

--- Returns the other entity involved in the first constraint of a specific type directly connected to the entity  
--- @param ent GEntity @The entity to check
--- @param type string @The type of constraint, case sensitive
--- @return GEntity @The other entity.
function constraint.FindConstraintEntity(ent, type)
end

--- Returns a table of all constraints of a specific type directly connected to the entity.  
--- If you are looking for a list of all constraints, use constraint.GetTable.  
--- @param ent GEntity @The entity to check
--- @param type string @The type of constraint, case sensitive
--- @return table @All the constraints of this entity.
function constraint.FindConstraints(ent, type)
end

--- Make this entity forget any constraints it knows about. Note that this will not actually remove the constraints.  
--- @param ent GEntity @The entity that will forget its constraints.
function constraint.ForgetConstraints(ent)
end

--- Returns a table of all entities recursively constrained to an entitiy.  
--- @param ent GEntity @The entity to check
--- @param resultTable? table @Table used to return result
--- @return table @A table containing all of the constrained entities
function constraint.GetAllConstrainedEntities(ent, resultTable)
end

--- Returns a table of all constraints directly connected to the entity.  
--- If you are looking for a list of specific constraint(s), use constraint.FindConstraints.  
--- @param ent GEntity @The entity to check
--- @return table @A list of all constraints connected to the entity.
function constraint.GetTable(ent)
end

--- Returns true if the entity has constraints attached to it  
--- @param ent GEntity @The entity to check
--- @return boolean @Whether the entity has any constraints or not.
function constraint.HasConstraints(ent)
end

--- Creates a controllable constraint.Elastic, aka a Hydraulic constraint.  
--- @param player GPlayer @The player that will be able to control the constraint
--- @param ent1 GEntity @First entity.
--- @param ent2 GEntity @Second entity.
--- @param bone1 number @PhysObj number of first entity to constrain to
--- @param bone2 number @PhysObj number of second entity to constrain to
--- @param localPos1 GVector @Position relative to the the first physics object to constrain to.
--- @param localPos2 GVector @Position relative to the the second physics object to constrain to.
--- @param length1 number @Minimum length of the constraint.
--- @param length2 number @Maximum length of the constraint.
--- @param width number @The width of the rope.
--- @param key number @The key binding, corresponding to an Enums/KEY
--- @param slider number @Whether the hydraulic is fixed, i.e
--- @param speed number @How fast it changes the length from `length1` to `length2` and backwards.
--- @param material? string @The material of the rope
--- @param toggle? boolean @Whether the hydraulic should be a toggle, not a "hold key to extend" action.
--- @param color? table @The color of the rope
--- @return GEntity @The created constraint
--- @return GEntity @The crated rope
--- @return GEntity @The muscle controller
--- @return GEntity @The slider ([phys_slideconstraint](https://developer.valvesoftware.com/wiki/Phys_slideconstraint)) if `fixed` was exactly `1`
function constraint.Hydraulic(player, ent1, ent2, bone1, bone2, localPos1, localPos2, length1, length2, width, key, slider, speed, material, toggle, color)
end

--- Creates a keep upright constraint.  
--- @param ent GEntity @The entity to keep upright
--- @param ang GAngle @The angle defined as "upright"
--- @param bone number @The bone of the entity to constrain (0 for boneless)
--- @param angularLimit number @Basically, the strength of the constraint
--- @return GEntity @The created constraint, if any or false if the constraint failed to set
function constraint.Keepupright(ent, ang, bone, angularLimit)
end

--- Creates a motor constraint, a player controllable constraint.Axis.  
--- @param ent1 GEntity @First entity.
--- @param ent2 GEntity @Second entity.
--- @param bone1 number @PhysObj number of first entity to constrain to
--- @param bone2 number @PhysObj number of second entity to constrain to
--- @param localPos1 GVector @Position relative to the the first physics object to constrain to.
--- @param localPos2 GVector @Position relative to the the second physics object to constrain to.
--- @param friction number @Motor friction.
--- @param torque number @Motor torque.
--- @param forcetime number @Automatic shut-off after this time has passed
--- @param nocollide? number @Whether the entities should be no-collided.
--- @param toggle? number @Whether the constraint is on toggle.
--- @param player? GPlayer @The player that will control the motor
--- @param forcelimit? number @Amount of force until it breaks (0 = unbreakable)
--- @param key_fwd? number @The key binding for "forward", corresponding to an Enums/KEY
--- @param key_bwd? number @The key binding for "backwards", corresponding to an Enums/KEY
--- @param direction? number @Either `1` or `-1` signifying which direction the motor should spin.
--- @param localAxis? GVector @Overrides axis of rotation?
--- @return GEntity @The created constraint
--- @return GEntity @The created axis constraint
function constraint.Motor(ent1, ent2, bone1, bone2, localPos1, localPos2, friction, torque, forcetime, nocollide, toggle, player, forcelimit, key_fwd, key_bwd, direction, localAxis)
end

--- Creates a muscle constraint.  
--- Very similar to constraint.Hydraulic, but instead of a toggle between fully expanded and contracted, it will continuously alternate between the 2 states while enabled.  
--- @param player GPlayer @The player that will be able to control the constraint
--- @param ent1 GEntity @First entity.
--- @param ent2 GEntity @Second entity.
--- @param bone1 number @PhysObj number of first entity to constrain to
--- @param bone2 number @PhysObj number of second entity to constrain to
--- @param localPos1 GVector @Position relative to the the first physics object to constrain to.
--- @param localPos2 GVector @Position relative to the the second physics object to constrain to.
--- @param length1 number @Minimum length of the constraint.
--- @param length2 number @Maximum length of the constraint.
--- @param width number @Width of the rope.
--- @param key number @The key binding, corresponding to an Enums/KEY.
--- @param fixed number @Whether the constraint is fixed, i.e
--- @param period number @How often the "contractions" should happen.
--- @param amplitude number @Amplification of the "contractions"?
--- @param startOn? boolean @Whether the constraint should start activated
--- @param material? string @Material of the rope
--- @param color? table @The color of the rope
--- @return GEntity @The created constraint
--- @return GEntity @The crated rope
--- @return GEntity @The muscle controller
--- @return GEntity @The slider ([phys_slideconstraint](https://developer.valvesoftware.com/wiki/Phys_slideconstraint)) if `fixed` was exactly `1`
function constraint.Muscle(player, ent1, ent2, bone1, bone2, localPos1, localPos2, length1, length2, width, key, fixed, period, amplitude, startOn, material, color)
end

--- Creates an no-collide "constraint". Disables collision between two entities.  
--- ℹ **NOTE**: Does not work with players.  
--- @param ent1 GEntity @First entity.
--- @param ent2 GEntity @Second entity.
--- @param bone1 number @PhysObj number of first entity to constrain to
--- @param bone2 number @PhysObj number of second entity to constrain to
--- @return GEntity @The created constraint
function constraint.NoCollide(ent1, ent2, bone1, bone2)
end

--- Creates a pulley constraint.  
--- It consists of 3 rope segments, 2 of which have variable length, visually connected by a 3rd. Reducing length of one end will increase the length of the other end.  
--- You can visualize the pulley like so  
--- ```  
--- WPos2 --- WPos3  
--- |			|  
--- |			|  
--- Ent1	   Ent4  
--- ```  
--- @param ent1 GEntity @First entity to constrain.
--- @param ent4 GEntity @The other entity to attach to.
--- @param bone1 number @PhysObj number of first entity to constrain to
--- @param bone4 number @PhysObj number of second entity to constrain to
--- @param localPos1 GVector @Position relative to the the first physics object to constrain to.
--- @param localPos4 GVector @Position relative to the the second physics object to constrain to.
--- @param worldPos2 GVector @World position constrain the first entity to
--- @param worldPos3 GVector @World position constrain the second entity to
--- @param forceLimit number @Amount of force until it breaks (0 = unbreakable)
--- @param rigid? boolean @Whether the constraint is rigid, i.e
--- @param width? number @Width of the rope
--- @param material? string @Material of the rope
--- @param color? table @The color of the rope
--- @return GEntity @The created constraint
--- @return GEntity @The first rope segment
--- @return GEntity @The second rope segment
--- @return GEntity @The third rope segment
function constraint.Pulley(ent1, ent4, bone1, bone4, localPos1, localPos4, worldPos2, worldPos3, forceLimit, rigid, width, material, color)
end

--- Attempts to remove all constraints associated with an entity  
--- @param ent GEntity @The entity to remove constraints from
--- @return boolean @Whether any constraints were removed
--- @return number @Number of constraints removed
function constraint.RemoveAll(ent)
end

--- Attempts to remove all constraints of a specified type associated with an entity  
--- @param ent GEntity @The entity to check
--- @param type string @The constraint type to remove (eg
--- @return boolean @Whether we removed any constraints or not
--- @return number @The amount of constraints removed
function constraint.RemoveConstraints(ent, type)
end

--- Creates a simple rope (length) based constraint.  
--- @param ent1 GEntity @First entity
--- @param ent2 GEntity @Second entity
--- @param bone1 number @PhysObj number of first entity to constrain to
--- @param bone2 number @PhysObj number of second entity to constrain to
--- @param localPos1 GVector @Position relative to the the first physics object to constrain to.
--- @param localPos2 GVector @Position relative to the the second physics object to constrain to.
--- @param length number @Length of the rope.
--- @param addLength? number @Amount to add to the length of the rope
--- @param forceLimit? number @Amount of force until it breaks (0 = unbreakable).
--- @param width? number @Width of the rope.
--- @param material? string @Material of the rope
--- @param rigid? boolean @Whether the constraint is rigid.
--- @param color? table @The color of the rope
--- @return GEntity @The constraint entity ([phys_lengthconstraint](https://developer.valvesoftware.com/wiki/Phys_lengthconstraint))
--- @return GEntity @The rope entity
function constraint.Rope(ent1, ent2, bone1, bone2, localPos1, localPos2, length, addLength, forceLimit, width, material, rigid, color)
end

--- Creates a slider constraint. A slider is like a rope, but allows the constrained object to move only in 1 direction.  
--- @param ent1 GEntity @First entity.
--- @param ent2 GEntity @Second entity.
--- @param bone1 number @PhysObj number of first entity to constrain to
--- @param bone2 number @PhysObj number of second entity to constrain to
--- @param localPos1 GVector @Position relative to the the first physics object to constrain to.
--- @param localPos2 GVector @Position relative to the the second physics object to constrain to.
--- @param width number @The width of the rope.
--- @param material? string @The material of the rope
--- @param color? table @The color of the rope
--- @return GEntity @The created constraint entity
--- @return GEntity @The created rope
function constraint.Slider(ent1, ent2, bone1, bone2, localPos1, localPos2, width, material, color)
end

--- Creates a weld constraint.  
--- @param ent1 GEntity @The first entity
--- @param ent2 GEntity @The second entity
--- @param bone1 number @PhysObj number of first entity to constrain to
--- @param bone2 number @PhysObj number of second entity to constrain to
--- @param forceLimit? number @The amount of force appliable to the constraint before it will break (0 is never)
--- @param noCollide? boolean @Should `ent1` be nocollided to `ent2` via this constraint
--- @param deleteEnt1OnBreak? boolean @If true, when `ent2` is removed, `ent1` will also be removed
--- @return GEntity @The crated constraint entity
function constraint.Weld(ent1, ent2, bone1, bone2, forceLimit, noCollide, deleteEnt1OnBreak)
end

--- Creates a winch constraint, a player controllable constraint.Elastic, allowing gradually increasing or decreasing the length.  
--- @param player GPlayer @The player that will be used to call numpad.OnDown and numpad.OnUp.
--- @param ent1 GEntity @First entity.
--- @param ent2 GEntity @Second entity.
--- @param bone1 number @PhysObj number of first entity to constrain to
--- @param bone2 number @PhysObj number of second entity to constrain to
--- @param localPos1 GVector @Position relative to the the first physics object to constrain to.
--- @param localPos2 GVector @Position relative to the the second physics object to constrain to.
--- @param width number @The width of the rope.
--- @param fwdBind number @The key binding for "forward", corresponding to an Enums/KEY
--- @param bwdBind number @The key binding for "backwards", corresponding to an Enums/KEY
--- @param fwdSpeed number @Forward speed.
--- @param bwdSpeed number @Backwards speed.
--- @param material? string @The material of the rope
--- @param toggle? boolean @Whether the winch should be on toggle.
--- @param color? table @The color of the rope
--- @return GEntity @The created constraint
--- @return GEntity @The crated rope
--- @return GEntity @The winch controller
function constraint.Winch(player, ent1, ent2, bone1, bone2, localPos1, localPos2, width, fwdBind, bwdBind, fwdSpeed, bwdSpeed, material, toggle, color)
end
