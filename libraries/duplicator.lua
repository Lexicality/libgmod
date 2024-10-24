--- @meta

--- The duplicator library allows you to specify what should be saved when someone attempts to duplicate your custom entity with the duplicator tool. It can also be used by 3rd party duplicator tools to make use of the built in system.  
_G.duplicator = {}
--- Allow entities with given class name to be duplicated. See duplicator.Disallow for the opposite effect.  
--- @param classname string @An entity's classname to allow duplicating.
function duplicator.Allow(classname)
end

--- Calls every function registered with duplicator.RegisterBoneModifier on each bone the ent has.  
--- @param ply GPlayer @The player whose entity this is
--- @param ent GEntity @The entity in question
function duplicator.ApplyBoneModifiers(ply, ent)
end

--- Calls every function registered with duplicator.RegisterEntityModifier on the entity.  
--- @param ply GPlayer @The player whose entity this is
--- @param ent GEntity @The entity in question
function duplicator.ApplyEntityModifiers(ply, ent)
end

--- A list of all entity bone modifiers registered with duplicator.RegisterBoneModifier.  
--- @return table @The list of all entity bone modifiers.
function duplicator.BoneModifiers()
end

--- Clears/removes the chosen entity modifier from the entity.  
--- @param ent GEntity @The entity the modification is stored on
--- @param key any @The key of the stored entity modifier
function duplicator.ClearEntityModifier(ent, key)
end

--- A list of all constraints that can be duplicated. Registered with duplicator.RegisterConstraint.  
--- @return table @The list of all constraints that can be duplicated
function duplicator.ConstraintType()
end

--- Copies the entity, and all of its constraints and entities, then returns them in a table.  
--- @param ent GEntity @The entity to duplicate
--- @param tableToAdd? table @A preexisting table to add entities and constraints in from
--- @return table @A table containing duplication info which includes the following members:
function duplicator.Copy(ent, tableToAdd)
end

--- Returns a table with some entity data that can be used to create a new entity with duplicator.CreateEntityFromTable  
--- @param ent GEntity @The entity table to save
--- @return table @See Structures/EntityCopyData
function duplicator.CopyEntTable(ent)
end

--- Copies the passed table of entities to save for later.  
--- @param ents table @A table of entities to save/copy.
--- @return table @A table containing duplication info which includes the following members:
function duplicator.CopyEnts(ents)
end

--- "Create an entity from a table."  
--- This creates an entity using the data in EntTable.  
--- If an entity factory has been registered for the entity's Class, it will be called.  
--- Otherwise, duplicator.GenericDuplicatorFunction will be called instead.  
--- @param ply GPlayer @The player who wants to create something
--- @param entTable table @The duplication data to build the entity with
--- @return GEntity @The newly created entity
function duplicator.CreateEntityFromTable(ply, entTable)
end

--- Disallow this entity to be duplicated. Opposite of duplicator.Allow.  
--- By default, all classes are disallowed to be duplicated. This function is useful for temporarily disabling duplication of certain entity classes that may have been previously allowed.  
--- @param classname string @An entity's classname to disallow duplicating.
function duplicator.Disallow(classname)
end

--- "Restores the bone's data."  
--- Loops through Bones and calls Entity:ManipulateBoneScale, Entity:ManipulateBoneAngles and Entity:ManipulateBonePosition on ent with the table keys and the subtable values s, a and p respectively.  
--- @param ent GEntity @The entity to be bone manipulated
--- @param bones table @Table with a Structures/BoneManipulationData for every bone (that has manipulations applied) using the bone ID as the table index.
function duplicator.DoBoneManipulator(ent, bones)
end

--- Restores the flex data using Entity:SetFlexWeight and Entity:SetFlexScale  
--- @param ent GEntity @The entity to restore the flexes on
--- @param flex table @The flexes to restore
--- @param scale? number @The flex scale to apply
function duplicator.DoFlex(ent, flex, scale)
end

--- "Applies generic every-day entity stuff for ent from table data."  
--- Depending on the values of Model, Angle, Pos, Skin, Flex, Bonemanip, ModelScale, ColGroup, Name, and BodyG (table of multiple values) in the data table, this calls Entity:SetModel, Entity:SetAngles, Entity:SetPos, Entity:SetSkin, duplicator.DoFlex, duplicator.DoBoneManipulator, Entity:SetModelScale, Entity:SetCollisionGroup, Entity:SetName, Entity:SetBodygroup on ent.  
--- If ent has a RestoreNetworkVars function, it is called with data.DT.  
--- @param ent GEntity @The entity to be applied upon
--- @param data table @The data to be applied onto the entity
function duplicator.DoGeneric(ent, data)
end

--- "Applies bone data, generically."  
--- If data contains a PhysicsObjects table, it moves, re-angles and if relevent freezes all specified bones, first converting from local coordinates to world coordinates.  
--- @param ent GEntity @The entity to be applied upon
--- @param ply? GPlayer @The player who owns the entity
--- @param data? table @The data to be applied onto the entity
function duplicator.DoGenericPhysics(ent, ply, data)
end

--- A list of all entity classes have a custom duplication spawn function. Registered with duplicator.RegisterEntityClass.  
--- If you wish to get a specific entity class table, use duplicator.FindEntityClass.  
--- @return table @The list of all entity classes with a custom duplication handler
function duplicator.EntityClasses()
end

--- A list of all entity modifiers registered with duplicator.RegisterEntityModifier.  
--- @return table @The list of all entity modifiers.
function duplicator.EntityModifiers()
end

--- Checks the given duplication table and tries to figure out any addons that might be required to correctly spawn the duplication. Currently this is limited to models and material overrides saved in the duplication.  
--- @param dupe table @The duplication table to process, for example from duplicator.Copy
function duplicator.FigureOutRequiredAddons(dupe)
end

--- Returns the entity class factory registered with duplicator.RegisterEntityClass.  
--- @param name string @The name of the entity class factory
--- @return table @Is compromised of the following members:
function duplicator.FindEntityClass(name)
end

--- "Generic function for duplicating stuff"  
--- This is called when duplicator.CreateEntityFromTable can't find an entity factory to build with. It calls duplicator.DoGeneric and duplicator.DoGenericPhysics to apply standard duplicator stored things such as the model and position.  
--- @param ply GPlayer @The player who wants to create something
--- @param data table @The duplication data to build the entity with
--- @return GEntity @The newly created entity
function duplicator.GenericDuplicatorFunction(ply, data)
end

--- Returns whether the entity can be duplicated or not  
--- @param classname string @An entity's classname
--- @return boolean @Returns true if the entity can be duplicated (nil otherwise)
function duplicator.IsAllowed(classname)
end

--- "Given entity list and constraint list, create all entities and return their tables"  
--- Calls duplicator.CreateEntityFromTable on each sub-table of EntityList. If an entity is actually created, it calls ENTITY:OnDuplicated with the entity's duplicator data, then duplicator.ApplyEntityModifiers, duplicator.ApplyBoneModifiers and finally  ENTITY:PostEntityPaste is called.  
--- The constraints are then created with duplicator.CreateConstraintFromTable.  
--- @param Player GPlayer @The player who wants to create something
--- @param EntityList table @A table of duplicator data to create the entities from
--- @param ConstraintList table @A table of duplicator data to create the constraints from
--- @return table @List of created entities
--- @return table @List of created constraints
function duplicator.Paste(Player, EntityList, ConstraintList)
end

--- Registers a function to be called on each of an entity's bones when duplicator.ApplyBoneModifiers is called.  
--- ℹ **NOTE**: This function is available to call on the client, but registered functions aren't used anywhere!  
--- @param key any @The type of the key doesn't appear to matter, but it is preferable to use a string.
--- @param boneModifier function @Function called on each bone that an ent has
function duplicator.RegisterBoneModifier(key, boneModifier)
end

--- Register a function used for creating a duplicated constraint.  
--- @param name string @The unique name of new constraint
--- @param callback function @Function to be called when this constraint is created
--- @vararg any @Arguments passed to the callback function
function duplicator.RegisterConstraint(name, callback, ...)
end

--- This allows you to specify a specific function to be run when your SENT is pasted with the duplicator, instead of relying on the generic automatic functions.  
--- ℹ **NOTE**: Automatically calls duplicator.Allow for the entity class.  
--- @param name string @The ClassName of the entity you wish to register a factory for
--- @param func function @The factory function you want to have called
--- @vararg any @Strings of the names of arguments you want passed to function the from the Structures/EntityCopyData
function duplicator.RegisterEntityClass(name, func, ...)
end

--- This allows you to register tweaks to entities. For instance, if you were making an "unbreakable" addon, you would use this to enable saving the "unbreakable" state of entities between duplications.  
--- This function registers a piece of generic code that is run on all entities with this modifier. In order to have it actually run, use duplicator.StoreEntityModifier.  
--- This function does nothing when run clientside.  
--- @param name string @An identifier for your modification
--- @param func function @The function to be called for your modification
function duplicator.RegisterEntityModifier(name, func)
end

--- Help to remove certain map created entities before creating the saved entities  
--- This is obviously so we don't get duplicate props everywhere.  
--- It should be called before calling Paste.  
function duplicator.RemoveMapCreatedEntities()
end

--- "When a copy is copied it will be translated according to these.  
--- If you set them - make sure to set them back to 0 0 0!"  
--- @param v GAngle @The angle to offset all pastes from
function duplicator.SetLocalAng(v)
end

--- "When a copy is copied it will be translated according to these.  
--- If you set them - make sure to set them back to 0 0 0!"  
--- @param v GVector @The position to offset all pastes from
function duplicator.SetLocalPos(v)
end

--- Stores bone mod data for a registered bone modification function  
--- @param ent GEntity @The entity to add bone mod data to
--- @param boneID number @The bone ID
--- @param key any @The key for the bone modification
--- @param data table @The bone modification data that is passed to the bone modification function
function duplicator.StoreBoneModifier(ent, boneID, key, data)
end

--- Stores an entity modifier into an entity for saving  
--- @param entity GEntity @The entity to store modifier in
--- @param name string @Unique modifier name as defined in duplicator.RegisterEntityModifier
--- @param data table @Modifier data
function duplicator.StoreEntityModifier(entity, name, data)
end

--- Works out the AABB size of the duplication  
--- @param Ents table @A table of entity duplication datums.
--- @return GVector @AABB mins vector
--- @return GVector @AABB maxs vector
function duplicator.WorkoutSize(Ents)
end
