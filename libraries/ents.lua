--- @meta

--- The ents library provides functions for creating and finding entities in the game.  
_G.ents = {}
--- Creates an entity. This function will fail and return `NULL` if the networked-edict limit is hit (around **8176**), or the provided entity class doesn't exist.  
--- ⚠ **WARNING**: Do not use before GM:InitPostEntity has been called, otherwise the server will crash!  
--- If you need to perform entity creation when the game starts, create a hook for GM:InitPostEntity and do it there.  
--- @param class string @The classname of the entity to create.
--- @return GEntity @The created entity, or `NULL` if failed.
function ents.Create(class)
end

--- Creates a clientside only prop with optional physics. See also Global.ClientsideModel if physics is not needed.  
--- For physics to work you **must** use the _model_ argument, a simple `SetModel` call will not be enough.  
--- 🦟 **BUG**: [Parented clientside prop will become detached if the parent entity leaves the PVS. **A workaround is available on its github page.**](https://github.com/Facepunch/garrysmod-issues/issues/861)  
--- @param model? string @The model for the entity to be created.
--- @return GEntity @Created entity (`C_PhysPropClientside`).
function ents.CreateClientProp(model)
end

--- Creates a clientside only rope, similar to those used by the Dog and Fast Zombie models from Half-Life 2.  
--- Created ropes will be automatically cleaned up when one of the attached entities is removed.  
--- @param ent1 GEntity @The first entity to attach the rope to.
--- @param ent1attach number|GVector @The attachment ID on the first entity to attach the rope to, or a local Vector relative to the first entity.
--- @param ent2 GEntity @The second entity to attach the rope to.
--- @param ent2attach number|GVector @The attachment ID on the second entity to attach the rope to, or a local Vector relative to the second entity.
--- @param extra? table @Extra optional settings for the rope
--- @return GEntity @Created entity (`C_RopeKeyframe`).
function ents.CreateClientRope(ent1, ent1attach, ent2, ent2attach, extra)
end

--- Creates a clientside only scripted entity. The scripted entity must be of "anim" type.  
--- @param class string @The class name of the entity to create.
--- @return GEntity @Created entity.
function ents.CreateClientside(class)
end

--- Returns a table of all entities along the ray. The ray does not stop on collisions, meaning it will go through walls/entities.  
--- This function is capable of detecting clientside only entities by default.  
--- This internally uses [spatial partitioning](https://en.wikipedia.org/wiki/Space_partitioning) to avoid looping through all entities.  
--- @param start GVector @The start position of the ray
--- @param end_ GVector @The end position of the ray
--- @param mins? GVector @The mins corner of the ray
--- @param maxs? GVector @The maxs corner of the ray
--- @return GEntity[] @Table of the found entities
function ents.FindAlongRay(start, end_, mins, maxs)
end

--- Gets all entities with the given class, supports wildcards.  
--- This function returns a sequential table, meaning it should be looped with Global.ipairs instead of Global.pairs for efficiency reasons.  
--- This works internally by iterating over ents.GetAll. `ents.FindByClass` is always faster than ents.GetAll or ents.Iterator.  
--- @param class string @The class of the entities to find, supports wildcards
--- @return GEntity[] @A table containing all found entities
function ents.FindByClass(class)
end

--- Finds all entities that are of given class and are children of given entity. This works internally by iterating over ents.FindByClass.  
--- @param class string @The class of entities to search for
--- @param parent GEntity @Parent of entities that are being searched for
--- @return GEntity[] @A table of found entities or nil if none are found
function ents.FindByClassAndParent(class, parent)
end

--- Gets all entities with the given model, supports wildcards.  
--- This works internally by iterating over ents.GetAll.  
--- @param model string @The model of the entities to find.
--- @return GEntity[] @A table of all found entities.
function ents.FindByModel(model)
end

--- Gets all entities with the given hammer targetname. This works internally by iterating over ents.GetAll.  
--- Doesn't do anything on client.  
--- @param name string @The targetname to look for
--- @return GEntity[] @A table of all found entities
function ents.FindByName(name)
end

--- Returns all entities within the specified box.  
--- This internally uses a Spatial Partition to avoid looping through all entities, so it is more efficient than using ents.GetAll for this purpose.  
--- ℹ **NOTE**: Clientside entities will not be returned by this function. Serverside only entities without networked edicts (entity indexes), such as point logic or Constraints are not returned either  
--- @param boxMins GVector @The box minimum coordinates.
--- @param boxMaxs GVector @The box maximum coordinates.
--- @return GEntity[] @A table of all found entities.
function ents.FindInBox(boxMins, boxMaxs)
end

--- Finds and returns all entities within the specified cone. Only entities whose Entity:WorldSpaceCenter is within the cone are considered to be in it.  
--- The "cone" is actually a conical "slice" of an axis-aligned box (see: ents.FindInBox). The image to the right shows approximately how this function would look in 2D. Due to this, the entity may be farther than the specified range!  
--- ℹ **NOTE**: Clientside entities will not be returned by this function.  
--- @param origin GVector @The tip of the cone.
--- @param normal GVector @Direction of the cone.
--- @param range number @The range of the cone/box around the origin
--- @param angle_cos number @The cosine of the angle between the center of the cone to its edges, which is half the overall angle of the cone
--- @return GEntity[] @A table of all found Entitys.
function ents.FindInCone(origin, normal, range, angle_cos)
end

--- Finds all entities that lie within a [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community").  
--- ℹ **NOTE**: The function won't take in to account Global.AddOriginToPVS and the like.  
--- @param viewPoint GEntity|GVector @Entity or Vector to find entities within the PVS of
--- @return GEntity[] @The found Entitys.
function ents.FindInPVS(viewPoint)
end

--- Gets all entities within the specified sphere.  
--- This function internally calls util.IsBoxIntersectingSphere for every entity on the map based on their Orientated Bounding Box.  
--- @param origin GVector @Center of the sphere.
--- @param radius number @Radius of the sphere.
--- @return GEntity[] @A table of all found Entitys.
function ents.FindInSphere(origin, radius)
end

--- Fires a use event.  
--- @param target string @Name of the target entity.
--- @param activator GEntity @Activator of the event.
--- @param caller GEntity @Caller of the event.
--- @param usetype EUSE @Use type
--- @param value number @This value is passed to ENTITY:Use, but isn't used by any default entities in the engine.
function ents.FireTargets(target, activator, caller, usetype, value)
end

--- Returns a table of all existing entities.  
--- Consider using ents.Iterator instead for better performance.  
--- This function returns a sequential table, meaning it should be looped with Global.ipairs instead of Global.pairs for efficiency reasons.  
--- @return GEntity[] @Table of all existing Entitys.
function ents.GetAll()
end

--- Returns an entity by its index. Same as Global.Entity.  
--- @param entIdx number @The index of the entity.
--- @return GEntity @The entity if it exists, or `NULL` if it doesn't.
function ents.GetByIndex(entIdx)
end

--- Gives you the amount of currently existing entities.  
--- Similar to **#**ents.GetAll() but with better performance since the entity table doesn't have to be generated.  
--- If ents.GetAll is already being called for iteration, than using the **#** operator on the table will be faster than calling this function since it is JITted.  
--- @param IncludeKillMe? boolean @Include entities with the FL_KILLME flag
--- @return number @Number of entities
function ents.GetCount(IncludeKillMe)
end

--- Returns the amount of networked entities, which is limited to 8192. ents.Create will fail somewhere between 8064 and 8176 - this can vary based on the amount of existing temp ents.  
--- @return number @Number of networked entities
function ents.GetEdictCount()
end

--- Returns entity that has given Entity:MapCreationID.  
--- @param id number @Entity's creation id.
--- @return GEntity|nil @Found entity, `nil` otherwise.
function ents.GetMapCreatedEntity(id)
end

--- Returns a [Stateless Iterator](https://www.lua.org/pil/7.3.html) for all entities.  
--- Intended for use in [Generic For Loops](https://www.lua.org/pil/4.3.5.html).  
--- See player.Iterator for a similar function for all players.  
--- Internally, this function uses cached values that exist entirely within lua, as opposed to ents.GetAll, which is a C++ function.  
--- Because switching from lua to C++ (and vice versa) incurs a performance cost, this function will be somewhat more efficient than ents.GetAll.  
--- @return function @The Iterator Function from ipairs
--- @return GEntity[] @Table of all existing Entities
--- @return number @The starting index for the table of players
function ents.Iterator()
end
