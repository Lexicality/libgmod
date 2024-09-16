--- `util.worldpicker` is for picking an entity in the world while [GUI](gui) is open.  
_G.util = {}
--- Adds the specified string to a string table, which will cache it and network it to all clients automatically.  
--- Whenever you want to create a net message with net.Start, you must add the name of that message as a networked string via this function.  
--- If the passed string already exists, nothing will happen and the ID of the existing item will be returned.  
--- ℹ **NOTE**: Each unique network name needs to be pooled once - do not put this function call into any other functions if you're using a constant string. Preferable place for this function is in a serverside lua file, or in a shared file with the net.Receive function.  
--- The string table used for this function does not interfere with the engine string tables and has 4095 slots.  
--- This limit is shared among all entities, SetNW* and SetGlobal* functions. If you exceed the limit, you cannot create new variables, and you will get the following warning:  
--- ```lua  
--- Warning:  Table networkstring is full, can't add [key]  
--- ```  
--- <warning>Existing variables will still get updated without the warning. You can check the limit by counting up until util.NetworkIDToString returns nil</warning>  
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
--- ℹ **NOTE**: Unless disabled with the `inline` argument, the Base64 returned is compliant to the RFC 2045 standard. **This means it will have a line break after every 76th character.**  
--- @param str? string @String to encode.
--- @param inline? boolean @`true` to disable RFC 2045 compliance (newline every 76th character)
--- @return string @Base 64 encoded string.
function util.Base64Encode(str, inline)
end

--- Applies explosion damage to all entities in the specified radius. Performs block checking.  
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
--- ⚠ **WARNING**:   
--- This is NOT a hashing function. It is a checksum, typically used for error detection/data corruption detection. It is possible for this function to generate "collisions", where two different strings will produce the same CRC. If you need a hashing function, use util.SHA256.  
--- @param stringToChecksum string @The string to calculate the checksum of.
--- @return string @The unsigned 32 bit checksum.
function util.CRC(stringToChecksum)
end

--- Compresses the given string using the [LZMA](https://en.wikipedia.org/wiki/LZMA) algorithm.  
--- Use with net.WriteData and net.ReadData for networking and  util.Decompress to decompress the data.  
--- ℹ **NOTE**: The output of this function will have the uncompressed size of the data prepended to it as an 8-byte little-endian integer. [Source](https://github.com/garrynewman/bootil/blob/beb4cec8ad29533965491b767b177dc549e62d23/src/Bootil/Utility/CompressionLZMA.cpp#L56-L63)  
--- You may therefore experience issues using the output of this function **_outside of Garry's Mod_**. If you need to do this, you will need to manually strip the first 8 bytes from the compressed output, or use third-party tools such as [gmod-lzma](https://github.com/WilliamVenner/gmod-lzma-rs) to decompress the output instead.  
--- @param str string @String to compress.
--- @return string @The compressed string, or an empty string if the input string was zero length ("").
function util.Compress(str)
end

--- Returns the current date formatted like '2012-10-31 18-00-00'  
--- @return string @date
function util.DateStamp()
end

--- Performs a trace and paints a decal to the surface hit.  
--- @param name? string @The name of the decal to paint.
--- @param start? GVector @The start of the trace.
--- @param end_? GVector @The end of the trace.
--- @param filter? GEntity @If set, the decal will not be able to be placed on given entity
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
--- If decal specifies multiple materials, a random one will be chosen.  
--- @param decalName string @Name of the decal.
--- @return string @Material path of the decal.
function util.DecalMaterial(decalName)
end

--- Decompresses the given string using [LZMA](https://en.wikipedia.org/wiki/LZMA) algorithm. Used to decompress strings previously compressed with util.Compress.  
--- ℹ **NOTE**: This function expects the compressed input data to have the uncompressed size of the data prepended to it as an 8-byte little-endian integer. [Source](https://github.com/garrynewman/bootil/blob/beb4cec8ad29533965491b767b177dc549e62d23/src/Bootil/Utility/CompressionLZMA.cpp#L101)  
--- If your compressed input data was compressed by util.Compress, you don't need to worry about this - the uncompressed size of the data is already prepended to its output.  
--- However, if your compressed data was produced using standard tools **_outside of Garry's Mod_**, you will need to manually prepend the length of the uncompressed data to its compressed form as an 8-byte little endian integer, or use third-party tools such as [gmod-lzma](https://github.com/WilliamVenner/gmod-lzma-rs) to compress your data instead.  
--- @param compressedString? string @The compressed string to decompress.
--- @param maxSize? number @The maximum size of uncompressed data in bytes, if greater it fails.
--- @return string @The original, decompressed string or `nil` on failure or invalid input
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
--- For Orange Box `.pcf` particles, see Global.ParticleEffect, Global.ParticleEffectAttach and  Global.CreateParticleSystem.  
--- ℹ **NOTE**:   
--- When dispatching an effect from the server, some values may be clamped for networking optimizations. Visit the Set accessors on CEffectData to see which ones are affected.  
--- You will need to couple this function with Global.IsFirstTimePredicted if you want to use it in a predicted hook.  
--- @param effectName? string @The name of the effect to create
--- @param effectData? GCEffectData @The effect data describing the effect.
--- @param allowOverride? boolean @Whether Lua-defined effects should override engine-defined effects with the same name for this/single function call.
--- @param ignorePredictionOrRecipientFilter? any @Can either be a boolean to ignore the prediction filter or a CRecipientFilter
function util.Effect(effectName, effectData, allowOverride, ignorePredictionOrRecipientFilter)
end

--- Filters given text using Steam's filtering system. The function will obey local client's Steam settings for chat filtering:  
--- ℹ **NOTE**: In some cases, especially in a chatbox, messages from some players may return an empty string if the context argument used for filtering is `TEXT_FILTER_CHAT` and [if the local player has blocked the sender of the message on Steam](https://github.com/Facepunch/garrysmod-issues/issues/5161#issuecomment-1035153941).  
--- <upload src="70c/8d9e680b626348b.png" size="50426" name="image.png">  
--- </upload>  
--- @param str? string @String to filter.
--- @param context? number @Filtering context
--- @param player? GPlayer @Used to determine if the text should be filtered according to local user's Steam chat filtering settings.
--- @return string @The filtered text based on given settings.
function util.FilterText(str, context, player)
end

--- Returns the ID of a custom model activity. This is useful for models that define custom ones.  
--- See util.GetActivityNameByID for a function that does the opposite.  
--- @param arg string @The name of an activity, as defined in the model's `.qc` at compile time.
--- @return number @The ID of the activity
function util.GetActivityIDByName(arg)
end

--- Returns a name for given activity ID. This is useful for models that define custom animation events.  
--- See util.GetActivityIDByName for a function that does the opposite.  
--- @param id number @The ID of an activity from some hook
--- @return string @The associated name with given activity ID.
function util.GetActivityNameByID(id)
end

--- Returns the ID of a custom model animation event. This is useful for models that define custom animation events.  
--- See util.GetAnimEventNameByID for a function that does the opposite.  
--- @param arg string @The name of an model animation event, as defined in the model's `.qc` at compile time.
--- @return number @The ID of an animation event, typically for usage with ENTITY:HandleAnimEvent.
function util.GetAnimEventNameByID(arg)
end

--- Returns a name for given automatically generated numerical animation event ID. This is useful for models that define custom animation events.  
--- See util.GetAnimEventIDByName for a function that does the opposite.  
--- @param id number @The ID of an animation event, typically from ENTITY:HandleAnimEvent.
--- @return string @The associated name with given event ID.
function util.GetAnimEventNameByID(id)
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
--- @param model? string @The full path to a model to get the visual meshes of.
--- @param lod? number @Which LOD to retrieve
--- @param bodygroupMask? number @Bodygroup combination for the model
--- @return table @A table of tables with the following format:
--- @return table @A table of tables containing the model bind pose (where the keys are the bone ID) with the following contents:
function util.GetModelMeshes(model, lod, bodygroupMask)
end

--- Gets persistent data of an offline player using their SteamID.  
--- See also Player:GetPData for a more convenient version of this function for online players, util.RemovePData and  
--- util.SetPData for the other accompanying functions.  
--- ℹ **NOTE**: This function internally uses util.SteamIDTo64, it previously utilized Player:UniqueID which can cause collisions (two or more players sharing the same PData entry). This function now only uses the old method as a fallback if the name isn't found.  
--- @param steamID string @SteamID of the player, in the `STEAM_0:0:0` format
--- @param name string @Variable name to get the value of
--- @param default string @The default value, in case there's nothing stored
--- @return string @The stored value
function util.GetPData(steamID, name, default)
end

--- Creates a new PixVis handle. See util.PixelVisible.  
--- @return Gpixelvis_handle_t @PixVis
function util.GetPixelVisibleHandle()
end

--- Utility function to quickly generate a trace table that starts at the players view position, and ends `32768` units along a specified direction.  
--- For usage with util.TraceLine and similar functions.  
--- @param ply? GPlayer @The player the trace should be based on
--- @param dir? GVector @The direction of the trace
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
--- ℹ **NOTE**: This returns only groups that are registered in the **settings/users.txt** file of your server.  
--- In order to get the usergroup of a connected player, please use Player:GetUserGroup instead.  
--- @return table @A table of users where the key is the SteamID of the user and the value is a table with 2 fields:
function util.GetUserGroups()
end

--- Performs a Ray-OBB (Orientated Bounding Box) intersection and returns position, normal and the fraction if there was an intersection.  
--- @param rayStart GVector @Origin or start position of the ray.
--- @param rayDelta GVector @The ray vector itself, the ray end point relative to the start point
--- @param boxOrigin GVector @The center of the box.
--- @param boxAngles GAngle @The angle of the box.
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

--- Performs a ray-sphere intersection and returns the intersection positions or nil.  
--- @param rayOrigin GVector @Origin/start position of the ray.
--- @param rayDelta GVector @The end position of the ray relative to the start position
--- @param spherePosition GVector @Any position of the sphere.
--- @param sphereRadius number @The radius of the sphere.
--- @return number @The first intersection position along the ray, or `nil` if there is no intersection.
--- @return number @The second intersection position along the ray, or `nil` if there is no intersection.
function util.IntersectRayWithSphere(rayOrigin, rayDelta, spherePosition, sphereRadius)
end

--- Returns whether a binary module is installed and is resolvable by Global.require.  
--- @param name string @Name of the binary module, exactly the same as you would enter it as the argument to Global.require.
--- @return boolean @Whether the binary module is installed and Global.require can resolve it.
function util.IsBinaryModuleInstalled(name)
end

--- Performs a box-sphere intersection and returns whether there was an intersection or not.  
--- @param boxMin GVector @The minimum extents of the Axis-Aligned box.
--- @param boxMax GVector @The maximum extents of the Axis-Aligned box.
--- @param shpere2Position GVector @Any position of the sphere.
--- @param sphere2Radius number @The radius of the sphere.
--- @return boolean @`true` if there is an intersection, `false` otherwise.
function util.IsBoxIntersectingSphere(boxMin, boxMax, shpere2Position, sphere2Radius)
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

--- Performs OBB on OBB intersection test.  
--- @param box1Origin GVector @The center of the first box.
--- @param box1Angles GAngle @The angles of the first box.
--- @param box1Mins GVector @The min position of the first box.
--- @param box1Maxs GVector @The max position of the first box.
--- @param box2Origin GVector @The center of the second box.
--- @param box2Angles GAngle @The angles of the second box.
--- @param box2Mins GVector @The min position of the second box.
--- @param box2Maxs GVector @The max position of the second box.
--- @param tolerance number @Tolerance for error
--- @return boolean @Whether there is an intersection.
function util.IsOBBIntersectingOBB(box1Origin, box1Angles, box1Mins, box1Maxs, box2Origin, box2Angles, box2Mins, box2Maxs, tolerance)
end

--- Returns whether a point is within a cone or not.  
--- @param point GVector @The position of the point to test.
--- @param coneOrigin GVector @The position of the cone tip.
--- @param coneAxis GVector @The direction of the cone.
--- @param coneSine number @The sine of the cone's angle.
--- @param coneLength number @Length of the cone's axis.
--- @return boolean @`true` if the point is within the cone, `false` otherwise.
function util.IsPointInCone(point, coneOrigin, coneAxis, coneSine, coneLength)
end

--- Performs a ray-ray intersection and returns whether there was an intersection or not.  
--- @param ray1Start GVector @Start position of the first ray.
--- @param ray1End GVector @End position of the first ray.
--- @param ray2Start GVector @Start position of the second ray.
--- @param ray2End GVector @End position of the second ray.
--- @return boolean @`true` if there is an intersection, `false` otherwise.
--- @return number @Distance from start of ray 1 to the intersection, if there was one.
--- @return number @Distance from start of ray 2 to the intersection, if there was one.
function util.IsRayIntersectingRay(ray1Start, ray1End, ray2Start, ray2End)
end

--- Check whether the skybox is visible from the point specified.  
--- ℹ **NOTE**: This will always return true in fullbright maps.  
--- @param position GVector @The position to check the skybox visibility from.
--- @return boolean @Whether the skybox is visible from the position.
function util.IsSkyboxVisibleFromPoint(position)
end

--- Returns whether a sphere is intersecting a cone or not.  
--- @param sphereCenter GVector @The center position of the sphere to test.
--- @param sphereRadius number @The radius of the sphere to test.
--- @param coneOrigin GVector @The position of the cone tip.
--- @param coneAxis GVector @The direction of the cone.
--- @param coneSine number @The <page test="sine">math.sin</page> of the cone's angle.
--- @param coneCosine number @The <page test="cosine">math.cos</page> of the cone's angle.
--- @return boolean @`true` if the sphere intersects the cone, `false` otherwise.
function util.IsSphereIntersectingCone(sphereCenter, sphereRadius, coneOrigin, coneAxis, coneSine, coneCosine)
end

--- Performs a sphere-sphere intersection and returns whether there was an intersection or not.  
--- @param sphere1Position GVector @Any position of the first sphere.
--- @param sphere1Radius number @The radius of the first sphere.
--- @param sphere2Position GVector @Any position of the second sphere.
--- @param sphere2Radius number @The radius of the second sphere.
--- @return boolean @`true` if there is an intersection, `false` otherwise.
function util.IsSphereIntersectingSphere(sphere1Position, sphere1Radius, sphere2Position, sphere2Radius)
end

--- Checks if the specified model is valid.  
--- A model is considered invalid in following cases:  
--- * Starts with a space or **maps**  
--- * Doesn't start with **models**  
--- * Contains any of the following:  
--- * `_gestures`  
--- * `_animations`  
--- * `_postures`  
--- * `_gst`  
--- * `_pst`  
--- * `_shd`  
--- * `_ss`  
--- * `_anm`  
--- * `.bsp`  
--- * `cs_fix`  
--- * If the model isn't precached on the server, AND if the model file doesn't exist on disk  
--- * If precache failed  
--- * Model is the error model  
--- Running this function will also precache the model.  
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
--- 🦟 **BUG**: [This will attempt to cast the string keys `"inf"`, `"nan"`, `"true"`, and `"false"` to their respective Lua values. This completely ignores nulls in arrays.](https://github.com/Facepunch/garrysmod-issues/issues/3561)  
--- 🦟 **BUG**: [Colors will not have the color metatable.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @param json? string @The JSON string to convert.
--- @param ignoreLimits? boolean @ignore the depth and breadth limits, **use at your own risk!**
--- @param ignoreConversions? boolean @ignore string to number conversions for table keys
--- @return table @The table containing converted information
function util.JSONToTable(json, ignoreLimits, ignoreConversions)
end

--- Converts a Valve KeyValue string (typically from util.TableToKeyValues) to a Lua table.  
--- ℹ **NOTE**: Due to how tables work in Lua, keys will not repeat within a table. See util.KeyValuesToTablePreserveOrder for alternative.  
--- @param keyValues? string @The KeyValue string to convert.
--- @param usesEscapeSequences? boolean @If set to true, will replace `\t`, `\n`, `\"` and `\\` in the input text with their escaped variants
--- @param preserveKeyCase? boolean @Whether we should preserve key case (may fail) or not (always lowercase)
--- @return table @The converted table
function util.KeyValuesToTable(keyValues, usesEscapeSequences, preserveKeyCase)
end

--- Similar to util.KeyValuesToTable but it also preserves order of keys.  
--- @param keyvals? string @The key value string
--- @param usesEscapeSequences? boolean @If set to true, will replace `\t`, `\n`, `\"` and `\\` in the input text with their escaped variants
--- @param preserveKeyCase? boolean @Whether we should preserve key case (may fail) or not (always lowercase)
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

--- Generates the [MD5 hash](https://en.wikipedia.org/wiki/MD5) of the specified string.  
--- ⚠ **WARNING**: MD5 is considered cryptographically broken and is known to be vulnerable to a variety of attacks including duplicate return values. If security or duplicate returns is a concern, use util.SHA256.  
--- @param stringToHash string @The string to calculate the MD5 hash of.
--- @return string @The MD5 hash of the string in hexadecimal form.
function util.MD5(stringToHash)
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

--- Formats a float by stripping off extra `0's` and `.'s`.  
--- @param float number @The float to format.
--- @return string @Formatted float.
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
--- @param PixVis Gpixelvis_handle_t @The PixVis handle created with util.GetPixelVisibleHandle
--- @return number @Visibility, ranges from `0-1`
function util.PixelVisible(position, radius, PixVis)
end

--- Returns the contents of the position specified.  
--- ℹ **NOTE**: This function will sample only the world environments. It can be used to check if Entity:GetPos is underwater for example unlike Entity:WaterLevel which works for players only.  
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
--- ℹ **NOTE**: Soundcache is limited to 16384 unique sounds on the server.  
--- 🦟 **BUG**: Broken on purpose because hitting the limit above causes the server to shutdown  
--- 🦟 **BUG**: Ultimately does nothing on client, and only works with sound scripts, not direct paths.  
--- @param soundName string @The sound to precache.
function util.PrecacheSound(soundName)
end

--- Performs a trace with the given origin, direction, and filter.  
--- ℹ **NOTE**:   
--- This function will throw an error in the menu realm because it internally uses util.TraceLine which doesn't exist in the menu realm and thus error.  
--- @param origin? GVector @The origin of the trace.
--- @param dir? GVector @The direction of the trace times the distance of the trace
--- @param filter? GEntity @Entity which should be ignored by the trace
--- @return table @Trace result
function util.QuickTrace(origin, dir, filter)
end

--- Removes persistent data of an offline player using their SteamID.  
--- See also Player:RemovePData for a more convenient version of this function for online players, util.SetPData and  
--- util.GetPData for the other accompanying functions.  
--- ℹ **NOTE**: This function internally uses util.SteamIDTo64, it previously utilized Player:UniqueID which can cause collisions (two or more players sharing the same PData entry). This function now tries to remove both old and new entries.  
--- @param steamID string @SteamID of the player to remove data of, in the `STEAM_0:0:0` format
--- @param name string @Variable name to remove
function util.RemovePData(steamID, name)
end

--- Generates the [SHA-1 hash](https://en.wikipedia.org/wiki/SHA-1) of the specified string.  
--- ⚠ **WARNING**: SHA-1 is considered cryptographically broken and is known to be vulnerable to a variety of attacks. If security is a concern, use util.SHA256.  
--- @param stringToHash string @The string to calculate the SHA-1 hash of.
--- @return string @The SHA-1 hash of the string in hexadecimal form.
function util.SHA1(stringToHash)
end

--- Generates the [SHA-256 hash](https://en.wikipedia.org/wiki/SHA-2) of the specified string. This is unique and will never return the same hash for a different string unlike util.CRC or util.MD5 which are both vulnerable to duplicate returns.  
--- @param stringToHash string @The string to calculate the SHA-256 hash of.
--- @return string @The SHA-256 hash of the string in hexadecimal form.
function util.SHA256(stringToHash)
end

--- Makes the screen shake.  
--- ℹ **NOTE**: The screen shake effect is rendered by modifying the view origin on the client. If you override the view origin in GM:CalcView you may not be able to see the shake effect.  
--- @param pos? GVector @The origin of the effect
--- @param amplitude? number @The strength of the effect
--- @param frequency? number @How many times per second to change the direction of the camera wobble
--- @param duration? number @The duration of the effect in seconds.
--- @param radius? number @The range from the origin within which views will be affected, in Hammer units
--- @param airshake? boolean @Whether players in the air should also be affected
--- @param filter? GCRecipientFilter @If set, will only network the screen shake event to players present in the filter.
function util.ScreenShake(pos, amplitude, frequency, duration, radius, airshake, filter)
end

--- Sets persistent data for offline player using their SteamID.  
--- See also Player:SetPData for a more convenient version of this function for online players, util.RemovePData and  
--- util.GetPData for the other accompanying functions.  
--- ℹ **NOTE**: This function internally uses util.SteamIDTo64, it previously utilized Player:UniqueID which can cause collisions (two or more players sharing the same PData entry).  
--- @param steamID string @SteamID of the player, in the `STEAM_0:0:0` format
--- @param name string @Variable name to store the value in.
--- @param value any @The value to store.
function util.SetPData(steamID, name, value)
end

--- Generates a random float value that should be the same on client and server.  
--- ℹ **NOTE**: This function is best used in a predicted hook  
--- @param uniqueName? string @The seed for the random value
--- @param min? number @The minimum value of the random range
--- @param max? number @The maximum value of the random range
--- @param additionalSeed? number @The additional seed
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

--- Returns a new Stack object.  
--- @return GStack @A brand new stack object.
function util.Stack()
end

--- Given a 64bit SteamID will return a STEAM_0:0:0 style Steam ID.  
--- ℹ **NOTE**: This operation induces data loss. Not all fields of a 64bit SteamID can be represented using the `STEAM_0:0:0` format.  
--- @param id string @The 64 bit Steam ID
--- @return string @String STEAM_0:0:0 style Steam ID representation.
function util.SteamIDFrom64(id)
end

--- Converts a STEAM_0:0:0 style SteamID to a 64bit SteamID.  
--- @param id string @The STEAM_0:0:0 format SteamID
--- @return string @64bit SteamID or 0 (as a string) on fail
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
--- ⚠ **WARNING**: All keys are strings in the JSON format, so all keys will be converted to strings!  
--- All integers will be converted to decimals (5 -> 5.0).  
--- 🦟 **BUG**: [This will produce invalid JSON if the provided table contains nan or inf values.](https://github.com/Facepunch/garrysmod-issues/issues/3561)  
--- @param table? table @Table to convert.
--- @param prettyPrint? boolean @Format and indent the JSON.
--- @return string @A JSON formatted string containing the serialized data
function util.TableToJSON(table, prettyPrint)
end

--- Converts the given table into a Valve key value string.  
--- Use util.KeyValuesToTable to perform the opposite transformation.  
--- You should consider using util.TableToJSON instead.  
--- @param table? table @The table to convert.
--- @param rootKey? string @The root key name for the output KV table.
--- @return string @The output.
function util.TableToKeyValues(table, rootKey)
end

--- Creates a timer object. The returned timer will be already started with given duration.  
--- @param duration? number @How long you want the timer to be
--- @return table @A timer object
function util.Timer(duration)
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

--- Identical to util.TraceHull but uses an entity for `mins`/`maxs` inputs.  
--- @param tracedata table @Trace data
--- @param ent GEntity @The entity to use mins/maxs of for the hull trace.
--- @return table @Trace result
function util.TraceEntityHull(tracedata, ent)
end

--- Performs an AABB hull (axis-aligned bounding box, aka not rotated) trace with the given trace data.  
--- ℹ **NOTE**: This function may not always give desired results clientside due to certain physics mechanisms not existing on the client. Use it serverside for accurate results.  
--- @param TraceData table @The trace data to use
--- @return table @Trace result
function util.TraceHull(TraceData)
end

--- Performs an infinitely thin, invisible Ray Trace (or "Trace") in a line based on an input Trace Structure table and returns a Trace Result table that contains information about what, if anything, the Trace line hit or intersected.  
--- Traces intersect with the Physics Meshes of Solid, Server-side, Entities (including the Game World) but cannot detect Client-side-only Entities.  
--- For a way to detect Client-side Entities, see ents.FindAlongRay.  
--- Traces do not differentiate between the inside and the outside faces of Physics Meshes.  Because of this, if a Trace starts within a Solid Physics Mesh it will hit the inside faces of the Physics Mesh and may return unexpected values as a result.  
--- See Also:  
--- util.TraceHull  
--- @param traceConfig table @A table of data that configures the Trace
--- @return table @A table of information detailing where and what the Trace line intersected, or `nil` if the trace is being done before the GM:InitPostEntity
function util.TraceLine(traceConfig)
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

--- Returns if the user is currently picking an entity.  
--- @return boolean @Is world picking
function util.worldpicker.Active()
end

--- Starts picking an entity in the world. This will suppress the next mouse click, and instead use it as a direction in the trace sent to the callback.  
--- @param callback function @Function to call after an entity choice has been made
function util.worldpicker.Start(callback)
end

