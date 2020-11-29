--- This is the list of utility functions.  
_G.util = {}
--- Returns if the user is currently picking an entity.  
--- @return boolean @Is world picking
function util.worldpicker.Active()
end

--- Adds the specified string to a string table, which will cache it and network it to all clients automatically.  
--- Whenever you want to create a net message with net.Start, you must add the name of that message as a networked string via this function.  
--- If the passed string already exists, nothing will happen and the ID of the existing item will be returned.  
--- ℹ **NOTE**: Each unique network name needs to be pooled once - do not put this function call into any other functions if you're using a constant string. Preferable place for this function is in a serverside lua file, or in a shared file with the net.Receive function.  
--- ℹ **NOTE**: The string table used for this function does not interfere with the engine string tables and has 2048 slots.  
--- @param str string @Adds the specified string to the string table.
--- @return number @The id of the string that was added to the string table.<br>
function util.AddNetworkString(str)
end

--- Function used to calculate aim vector from 2D screen position. It is used in SuperDOF calculate Distance.  
--- Essentially a generic version of gui.ScreenToVector.  
--- @param ViewAngles GAngle @View angles
--- @param ViewFOV number @View Field of View
--- @param x number @Mouse X position
--- @param y number @Mouse Y position
--- @param scrWidth number @Screen width
--- @param scrHeight number @Screen height
--- @return GVector @Calculated aim vector
function util.AimVector(ViewAngles, ViewFOV, x, y, scrWidth, scrHeight)
end

--- Decodes the specified string from base64.  
--- @param str string @String to decode.
--- @return string @The raw bytes of the decoded string.
function util.Base64Decode(str)
end

--- Encodes the specified string to base64.  
--- @param str string @String to encode.
--- @return string @Base 64 encoded string.
function util.Base64Encode(str)
end

--- Applies explosion damage to all entities in the specified radius.  
--- @param inflictor GEntity @The entity that caused the damage.
--- @param attacker GEntity @The entity that attacked.
--- @param damageOrigin GVector @The center of the explosion
--- @param damageRadius number @The radius in which entities will be damaged.
--- @param damage number @The amount of damage to be applied.
function util.BlastDamage(inflictor, attacker, damageOrigin, damageRadius, damage)
end

--- Applies spherical damage based on damage info to all entities in the specified radius.  
--- @param dmg GCTakeDamageInfo @The information about the damage
--- @param damageOrigin GVector @Center of the spherical damage
--- @param damageRadius number @The radius in which entities will be damaged.
function util.BlastDamageInfo(dmg, damageOrigin, damageRadius)
end

--- Generates the [CRC Checksum](https://en.wikipedia.org/wiki/Cyclic_redundancy_check) of the specified string.  
--- @param stringToHash string @The string to calculate the checksum of.
--- @return string @The unsigned 32 bit checksum.
function util.CRC(stringToHash)
end

--- Compresses the given string using the [LZMA](https://en.wikipedia.org/wiki/LZMA) algorithm.  
--- Use with net.WriteData and net.ReadData for networking and  util.Decompress to decompress the data.  
--- @param str string @String to compress.
--- @return string @The compressed string, or nil if the input string was zero length ("").
function util.Compress(str)
end

--- Returns the current date formatted like '2012-10-31 18-00-00'  
--- @return string @date
function util.DateStamp()
end

--- Performs a trace and paints a decal to the surface hit.  
--- @param name string @The name of the decal to paint.
--- @param start GVector @The start of the trace.
--- @param end_ GVector @The end of the trace.
--- @param filter GEntity @If set, the decal will not be able to be placed on given entity
function util.Decal(name, start, end_, filter)
end

--- Performs a trace and paints a decal to the surface hit.  
--- ℹ **NOTE**: This function has trouble spanning across multiple brushes on the map.  
--- @param material GIMaterial @The name of the decal to paint
--- @param ent GEntity @The entity to apply the decal to
--- @param position GVector @The position of the decal.
--- @param normal GVector @The direction of the decal.
--- @param color table @The color of the decal
--- @param w number @The width scale of the decal.
--- @param h number @The height scale of the decal.
function util.DecalEx(material, ent, position, normal, color, w, h)
end

--- Gets the full material path by the decal name. Used with util.DecalEx.  
--- @param decalName string @Name of the decal.
--- @return string @Material path of the decal.
function util.DecalMaterial(decalName)
end

--- Decompresses the given string using [LZMA](https://en.wikipedia.org/wiki/LZMA) algorithm. Used to decompress strings previously compressed with util.Compress.  
--- @param compressedString string @The compressed string to decompress.
--- @param maxSize number @The maximal size in bytes it will decompress.
--- @return string @The original, decompressed string or an empty string on failure or invalid input.
function util.Decompress(compressedString, maxSize)
end

--- Gets the distance between a line and a point in 3d space.  
--- @param lineStart GVector @Start of the line.
--- @param lineEnd GVector @End of the line.
--- @param pointPos GVector @The position of the point.
--- @return number @Distance from line.
--- @return GVector @Nearest point on line.
--- @return number @Distance along line from start.
function util.DistanceToLine(lineStart, lineEnd, pointPos)
end

--- Creates an effect with the specified data.  
--- You can find a list of built-in engine effects here. You can create your own. Example effects can be found [here](https://github.com/garrynewman/garrysmod/tree/master/garrysmod/gamemodes/sandbox/entities/effects) and [here](https://github.com/garrynewman/garrysmod/tree/master/garrysmod/gamemodes/base/entities/effects).  
--- ℹ **NOTE**: When dispatching an effect from the server, some values may be clamped for networking optimizations. Visit the Set accessors on CEffectData to see which ones are affected.  
--- ℹ **NOTE**: You will need to couple this function with Global.IsFirstTimePredicted if you want to use it in predicted hook.  
--- @param effectName string @The name of the effect to create.
--- @param effectData GCEffectData @The effect data describing the effect.
--- @param allowOverride boolean @Whether Lua-defined effects should override engine-defined effects with the same name for this/single function call.
--- @param ignorePredictionOrRecipientFilter any @Can either be a boolean to ignore the prediction filter or a CRecipientFilter
function util.Effect(effectName, effectData, allowOverride, ignorePredictionOrRecipientFilter)
end

--- Returns a table containing the info about the model.  
--- ℹ **NOTE**: This function will silently fail if used on models with following strings in them:  
--- * _shared  
--- * _anims  
--- * _gestures  
--- * _anim  
--- * _postures  
--- * _gst  
--- * _pst  
--- * _shd  
--- * _ss  
--- * _anm  
--- * _include  
--- @param mdl string @Model path
--- @return table @The model info as a table with the following keys:
function util.GetModelInfo(mdl)
end

--- Returns a table of visual meshes of given model.  
--- ℹ **NOTE**: This does not work on brush models (`*number` models)  
--- See also ENTITY:GetRenderMesh.  
--- @param model string @The full path to a model to get the visual meshes of.
--- @param lod number 
--- @param bodygroupMask number 
--- @return table @A table of tables with the following format:
function util.GetModelMeshes(model, lod, bodygroupMask)
end

--- Gets PData of an offline player using their SteamID  
--- ⚠ **WARNING**: This function internally uses Player:UniqueID, which can cause collisions (two or more players sharing the same PData entry). It's recommended that you don't use it. See the related wiki page for more information.  
--- @param steamID string @SteamID of the player
--- @param name string @Variable name to get the value of
--- @param default string @The default value, in case there's nothing stored
--- @return string @The stored value
function util.GetPData(steamID, name, default)
end

--- Creates a new PixVis handle. See util.PixelVisible.  
--- @return pixelvis_handle_t @PixVis
function util.GetPixelVisibleHandle()
end

--- Utility function to quickly generate a trace table that starts at the players view position, and ends 16384 units along a specified direction.  
--- @param ply GPlayer @The player the trace should be based on
--- @param dir GVector @The direction of the trace
--- @return table @The trace data
function util.GetPlayerTrace(ply, dir)
end

--- Gets information about the sun position and obstruction or nil if there is no sun.  
--- @return table @The sun info
function util.GetSunInfo()
end

--- Returns data of a surface property at given ID.  
--- @param id number @Surface property ID
--- @return table @The data or no value if there is no valid surface property at given index
function util.GetSurfaceData(id)
end

--- Returns the matching surface property index for the given surface property name.  
--- See also util.GetSurfaceData and util.GetSurfacePropName for opposite function.  
--- @param surfaceName string @The name of the surface.
--- @return number @The surface property index, or -1 if name doesn't correspond to a valid surface property.
function util.GetSurfaceIndex(surfaceName)
end

--- Returns the name of a surface property at given ID.  
--- See also util.GetSurfaceData and util.GetSurfaceIndex for opposite function.  
--- @param id number @Surface property ID
--- @return string @The name or an empty string if there is no valid surface property at given index.
function util.GetSurfacePropName(id)
end

--- Returns a table of all SteamIDs that have a usergroup.  
--- ℹ **NOTE**: This returns the original usergroups table, changes done to this table are not retroactive and will only affect newly connected users  
--- @return table @The table of users
function util.GetUserGroups()
end

--- Performs a "ray" box intersection and returns position, normal and the fraction.  
--- @param rayStart GVector @Origin/start position of the ray.
--- @param rayDelta GVector @The ray vector itself
--- @param boxOrigin GVector @The center of the box.
--- @param boxAngles GAngle @The angles of the box.
--- @param boxMins GVector @The min position of the box.
--- @param boxMaxs GVector @The max position of the box.
--- @return GVector @Hit position, nil if not hit.
--- @return GVector @Normal/direction vector, nil if not hit.
--- @return number @Fraction of trace used, nil if not hit.
function util.IntersectRayWithOBB(rayStart, rayDelta, boxOrigin, boxAngles, boxMins, boxMaxs)
end

--- Performs a [ray-plane intersection](https://en.wikipedia.org/wiki/Line%E2%80%93plane_intersection) and returns the hit position or nil.  
--- @param rayOrigin GVector @Origin/start position of the ray.
--- @param rayDirection GVector @The direction of the ray.
--- @param planePosition GVector @Any position of the plane.
--- @param planeNormal GVector @The normal vector of the plane.
--- @return GVector @The position of intersection, nil if not hit.
function util.IntersectRayWithPlane(rayOrigin, rayDirection, planePosition, planeNormal)
end

--- Checks if a certain position is within the world bounds.  
--- @param position GVector @Position to check.
--- @return boolean @Whether the vector is in world.
function util.IsInWorld(position)
end

--- Checks if the model is loaded in the game.  
--- @param modelName string @Name/Path of the model to check.
--- @return boolean @Returns true if the model is loaded in the game; otherwise false.
function util.IsModelLoaded(modelName)
end

--- Check whether the skybox is visibile from the point specified.  
--- ℹ **NOTE**: This will always return true in fullbright maps  
--- @param position GVector @The position to check the skybox visibility from.
--- @return boolean @Whether the skybox is visible from the position.
function util.IsSkyboxVisibleFromPoint(position)
end

--- Checks if the specified model is valid.  
--- A model is considered invalid in following cases:  
--- * Starts with a space or **maps**  
--- * Doesn't start with **models**  
--- * Contains any of the following:  
--- * * _gestures  
--- * * _animations  
--- * * _postures  
--- * * _gst  
--- * * _pst  
--- * * _shd  
--- * * _ss  
--- * * _anm  
--- * * .bsp  
--- * * cs_fix  
--- * On server: If the model isn't precached, if the model file doesn't exist on the disk  
--- * If precache failed  
--- * Model is the error model  
--- @param modelName string @Name/Path of the model to check.
--- @return boolean @Whether the model is valid or not
function util.IsValidModel(modelName)
end

--- Checks if given numbered physics object of given entity is valid or not. Most useful for ragdolls.  
--- @param ent GEntity @The entity
--- @param physobj number @Number of the physics object to test
--- @return boolean @true is valid, false otherwise
function util.IsValidPhysicsObject(ent, physobj)
end

--- Checks if the specified prop is valid.  
--- @param modelName string @Name/Path of the model to check.
--- @return boolean @Returns true if the specified prop is valid; otherwise false.
function util.IsValidProp(modelName)
end

--- Checks if the specified model name points to a valid ragdoll.  
--- @param ragdollName string @Name/Path of the ragdoll model to check.
--- @return boolean @Returns true if the specified model name points to a valid ragdoll; otherwise false.
function util.IsValidRagdoll(ragdollName)
end

--- Converts a JSON string to a Lua table.  
--- ⚠ **WARNING**: This function converts keys to numbers whenever possible. It also has a limit of 15000 keys total.  
--- 🦟 **BUG**: [This will attempt cast the string keys "inf", "nan", "true", and "false" to their respective Lua values. This completely ignores nulls in arrays.](https://github.com/Facepunch/garrysmod-issues/issues/3561)  
--- 🦟 **BUG**: [Colors will not have the color metatable.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @param json string @The JSON string to convert.
--- @return table @The table containing converted information
function util.JSONToTable(json)
end

--- Converts a KeyValue string to a Lua table.  
--- ℹ **NOTE**: Table keys will not repeat, see util.KeyValuesToTablePreserveOrder.  
--- @param keyValues string @The KeyValue string to convert.
--- @param usesEscapeSequences boolean @If set to true, will replace \t, \n, \" and \\ in the input text with their escaped variants
--- @param preserveKeyCase boolean @Whether we should preserve key case (may fail) or not (always lowercase)
--- @return table @The converted table
function util.KeyValuesToTable(keyValues, usesEscapeSequences, preserveKeyCase)
end

--- Similar to util.KeyValuesToTable but it also preserves order of keys.  
--- @param keyvals string @The key value string
--- @param usesEscapeSequences boolean @If set to true, will replace \t, \n, \" and \\ in the input text with their escaped variants
--- @param preserveKeyCase boolean @Whether we should preserve key case (may fail) or not (always lowercase)
--- @return table @The output table
function util.KeyValuesToTablePreserveOrder(keyvals, usesEscapeSequences, preserveKeyCase)
end

--- Returns a vector in world coordinates based on an entity and local coordinates  
--- @param ent GEntity @The entity lpos is local to
--- @param lpos GVector @Coordinates local to the ent
--- @param bonenum number @The bonenumber of the ent lpos is local to
--- @return GVector @wpos
function util.LocalToWorld(ent, lpos, bonenum)
end

--- Returns the networked string associated with the given ID from the string table.  
--- @param stringTableID number @ID to get the associated string from.
--- @return string @The networked string, or nil if it wasn't found.
function util.NetworkIDToString(stringTableID)
end

--- Returns the networked ID associated with the given string from the string table.  
--- @param networkString string @String to get the associated networked ID from.
--- @return number @The networked ID of the string, or 0 if it hasn't been networked with util.AddNetworkString.
function util.NetworkStringToID(networkString)
end

--- Formats a float by stripping off extra 0's and .'s  
--- @param float number @The float to format
--- @return string @Formatted float
function util.NiceFloat(float)
end

--- Creates a tracer effect with the given parameters.  
--- @param name string @The name of the tracer effect.
--- @param startPos GVector @The start position of the tracer.
--- @param endPos GVector @The end position of the tracer.
--- @param doWhiz boolean @Play the hit miss(whiz) sound.
function util.ParticleTracer(name, startPos, endPos, doWhiz)
end

--- Creates a tracer effect with the given parameters.  
--- @param name string @The name of the tracer effect.
--- @param startPos GVector @The start position of the tracer.
--- @param endPos GVector @The end position of the tracer.
--- @param doWhiz boolean @Play the hit miss(whiz) sound.
--- @param entityIndex number @Entity index of the emitting entity.
--- @param attachmentIndex number @Attachment index to be used as origin.
function util.ParticleTracerEx(name, startPos, endPos, doWhiz, entityIndex, attachmentIndex)
end

--- Returns the visibility of a sphere in the world.  
--- @param position GVector @The center of the visibility test.
--- @param radius number @The radius of the sphere to check for visibility.
--- @param PixVis pixelvis_handle_t @The PixVis handle created with util.GetPixelVisibleHandle
--- @return number @Visibility, ranges from 0-1
function util.PixelVisible(position, radius, PixVis)
end

--- Returns the contents of the position specified.  
--- @param position GVector @Position to get the contents sample from.
--- @return number @Contents bitflag, see Enums/CONTENTS
function util.PointContents(position)
end

--- Precaches a model for later use. Model is cached after being loaded once.  
--- ⚠ **WARNING**:   
--- Modelprecache is limited to 4096 unique models. When it reaches the limit the game will crash.  
--- @param modelName string @The model to precache.
function util.PrecacheModel(modelName)
end

--- Precaches a sound for later use. Sound is cached after being loaded once.  
--- ℹ **NOTE**: Soundcache is limited to 16384 unique sounds.  
--- 🦟 **BUG**: Positively broken on purpose because it fills stringtables  
--- 🦟 **BUG**: Ultimately does nothing on client, and only works with sound scripts, not direct paths  
--- @param soundName string @The sound to precache.
function util.PrecacheSound(soundName)
end

--- Performs a trace with the given origin, direction and filter.  
--- @param origin GVector @The origin of the trace.
--- @param endpos GVector @The end point of the trace, relative to the start
--- @param filter GEntity @Entity which should be ignored by the trace
--- @return table @Trace result
function util.QuickTrace(origin, endpos, filter)
end

--- Returns the absolute system path the file relative to /garrysmod/.  
--- @param file string @The file to get the absolute path of.
--- @return string @absolutePath
function util.RelativePathToFull(file)
end

--- Removes PData of offline player using his SteamID.  
--- ⚠ **WARNING**: This function internally uses Player:UniqueID, which can cause collisions (two or more players sharing the same PData entry). It's recommended that you don't use it. See the related wiki page for more information.  
--- @param steamID string @SteamID of the player
--- @param name string @Variable name to remove
function util.RemovePData(steamID, name)
end

--- Makes the screen shake  
--- @param pos GVector @The origin of the effect
--- @param amplitude number @The strength of the effect
--- @param frequency number @The frequency of the effect in hz
--- @param duration number @The duration of the effect in seconds
--- @param radius number @The range from the origin within which views will be affected, in Hammer Units
function util.ScreenShake(pos, amplitude, frequency, duration, radius)
end

--- Sets PData for offline player using his SteamID   
--- ⚠ **WARNING**: This function internally uses Player:UniqueID, which can cause collisions (two or more players sharing the same PData entry). It's recommended that you don't use it. See the related wiki page for more information.  
--- @param steamID string @SteamID of the player
--- @param name string @Variable name to store the value in
--- @param value any @The value to store
function util.SetPData(steamID, name, value)
end

--- Generates a random float value that should be the same on client and server.  
--- ℹ **NOTE**: This function is best used in a Predicted Hook  
--- @param uniqueName string @The seed for the random value
--- @param min number @The minimum value of the random range
--- @param max number @The maximum value of the random range
--- @param additionalSeed number @The additional seed
--- @return number @The random float value
function util.SharedRandom(uniqueName, min, max, additionalSeed)
end

--- Adds a trail to the specified entity.  
--- @param ent GEntity @Entity to attach trail to
--- @param attachmentID number @Attachment ID of the entities model to attach trail to
--- @param color table @Color of the trail, use Global.Color
--- @param additive boolean @Should the trail be additive or not
--- @param startWidth number @Start width of the trail
--- @param endWidth number @End width of the trail
--- @param lifetime number @How long it takes to transition from startWidth to endWidth
--- @param textureRes number @The resolution of trails texture
--- @param texture string @Path to the texture to use as a trail.
--- @return GEntity @Entity of created trail ([env_spritetrail](https://developer.valvesoftware.com/wiki/Env_spritetrail))
function util.SpriteTrail(ent, attachmentID, color, additive, startWidth, endWidth, lifetime, textureRes, texture)
end

--- Returns a new Stack object  
--- @return GStack @A brand new stack object
function util.Stack()
end

--- Starts picking an entity in the world. This will suppress the next mouse click, and instead use it as a direction in the trace sent to the callback.  
--- @param callback function @Function to call after an entity choice has been made
function util.worldpicker.Start(callback)
end

--- Given a 64bit SteamID will return a STEAM_0: style Steam ID  
--- @param id string @The 64 bit Steam ID
--- @return string @STEAM_0 style Steam ID
function util.SteamIDFrom64(id)
end

--- Given a STEAM_0 style Steam ID will return a 64bit Steam ID  
--- @param id string @The STEAM_0 style id
--- @return string @64bit Steam ID
function util.SteamIDTo64(id)
end

--- Converts a string to the specified type.  
--- This can be useful when dealing with ConVars.  
--- @param str string @The string to convert
--- @param typename string @The type to attempt to convert the string to
--- @return any @The result of the conversion, or nil if a bad type is specified.
function util.StringToType(str, typename)
end

--- Converts a table to a JSON string.  
--- ⚠ **WARNING**: All integers will be converted to decimals (5 -> 5.0).  
--- ⚠ **WARNING**: All keys are strings in the JSON format, so all keys will be converted to strings!  
--- 🦟 **BUG**: [This will produce invalid JSON if the provided table contains nan or inf values.](https://github.com/Facepunch/garrysmod-issues/issues/3561)  
--- @param table table @Table to convert.
--- @param prettyPrint boolean @Format and indent the JSON.
--- @return string @A JSON formatted string containing the serialized data
function util.TableToJSON(table, prettyPrint)
end

--- Converts the given table into a key value string.  
--- @param table table @The table to convert.
--- @return string @KeyValueString
function util.TableToKeyValues(table)
end

--- Creates a timer object.  
--- @param startdelay number @How long you want the timer to be.
--- @return table @A timer object
function util.Timer(startdelay)
end

--- Returns the time since this function has been last called  
--- @return number @Time since this function has been last called in ms
function util.TimerCycle()
end

--- Runs a trace using the entity's collisionmodel between two points. This does not take the entity's angles into account and will trace its unrotated collisionmodel.  
--- ℹ **NOTE**: Clientside entities will not be hit by traces.  
--- @param tracedata table @Trace data
--- @param ent GEntity @The entity to use
--- @return table @Trace result
function util.TraceEntity(tracedata, ent)
end

--- 🛑 **DEPRECATED**: This function is broken and returns the same values all the time  
--- Traces from one entity to another.  
--- @param ent1 GEntity @The first entity to trace from
--- @param ent2 GEntity @The second entity to trace to
--- @return table @Trace result
function util.TraceEntityHull(ent1, ent2)
end

--- Performs an AABB hull (axis-aligned bounding box, aka not rotated) trace with the given trace data.  
--- ℹ **NOTE**: Clientside entities will not be hit by traces.  
--- ℹ **NOTE**: This function may not always give desired results clientside due to certain physics mechanisms not existing on the client. Use it serverside for accurate results.  
--- @param TraceData table @The trace data to use
--- @return table @Trace result
function util.TraceHull(TraceData)
end

--- Performs a trace with the given trace data.  
--- ℹ **NOTE**: Clientside entities will not be hit by traces.  
--- @param TraceData table @The trace data to use
--- @return table @Trace result
function util.TraceLine(TraceData)
end

--- Converts a type to a (nice, but still parsable) string  
--- @param input any @What to convert
--- @return string @Converted string
function util.TypeToString(input)
end

--- 🛑 **DEPRECATED**: You should use Global.tobool instead.  
--- Converts string or a number to a bool, if possible. Alias of Global.tobool.  
--- @param input any @A string or a number to convert.
--- @return boolean @False if the input is equal to the string or boolean "false", if the input is equal to the string or number "0", or if the input is nil
function util.tobool(input)
end

