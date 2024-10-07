--- The mesh library allows you to create meshes. A mesh is a set of vertices that define a 3D shape, for constant meshes you should use the IMesh object instead.  
_G.mesh = {}
--- Pushes the currently set vertex data (via other `mesh.*` functions) into the mesh stack. See example on mesh.Begin.  
function mesh.AdvanceVertex()
end

--- Starts constructing a new 3D mesh constructed from a given number of primitives in a given primitive format.  
--- The resulting mesh can be stored in an IMesh if it is intended to be drawn multiple times or on multiple frames.  
--- @param primitiveType number @An enum that indicates what the format of the mesh's primitives will be
--- @param primitiveCount number @The quantity of primitives this mesh will contain as a whole integer number.
function mesh.Begin(primitiveType, primitiveCount)
end

--- Sets the color to be used for the next vertex. See mesh.Begin.  
--- @param r number @Red component.
--- @param g number @Green component.
--- @param b number @Blue component.
--- @param a number @Alpha component.
function mesh.Color(r, g, b, a)
end

--- Ends the mesh (Started with mesh.Begin) and renders it.  
function mesh.End()
end

--- Sets the normal to be used for the next vertex. See mesh.Begin.  
--- @param normal GVector @The normal of the vertex.
function mesh.Normal(normal)
end

--- Sets the position to be used for the next vertex. See mesh.Begin.  
--- @param position GVector @The position of the vertex.
function mesh.Position(position)
end

--- Adds a quad (4 vertices) to the currently built mesh. See mesh.Begin.  
--- @param vertex1 GVector @The first vertex.
--- @param vertex2 GVector @The second vertex.
--- @param vertex3 GVector @The third vertex.
--- @param vertex4 GVector @The fourth vertex.
--- @param color table @The color for the vertices.
function mesh.Quad(vertex1, vertex2, vertex3, vertex4, color)
end

--- Adds a quad (4 vertices) to the currently built mesh, by using position, normal and sizes. See mesh.Begin.  
--- See also mesh.Quad.  
--- @param position GVector @The center of the quad.
--- @param normal GVector @The normal of the quad.
--- @param sizeX number @X size in pixels.
--- @param sizeY number @Y size in pixels.
--- @param color table @The color for the vertices.
function mesh.QuadEasy(position, normal, sizeX, sizeY, color)
end

--- Sets the specular map values.  
--- There is no known use case for this function.  
--- @param r number @The red channel multiplier of the specular map.
--- @param g number @The green channel multiplier of the specular map.
--- @param b number @The blue channel multiplier of the specular map.
--- @param a number @The alpha channel multiplier of the specular map.
function mesh.Specular(r, g, b, a)
end

--- Sets the `S` tangent to be used, also known as "binormal".  
--- Tangents and binormals are using in bumpmap rendering.  
--- See also mesh.TangentT and mesh.Begin.  
--- @param tangentS GVector @The S tangent.
function mesh.TangentS(tangentS)
end

--- Sets the `T` tangent to be used.  
--- Tangents and binormals are using in bumpmap rendering.  
--- See also mesh.TangentS and mesh.Begin.  
--- @param tangentT GVector @The T tangent.
function mesh.TangentT(tangentT)
end

--- Sets the texture coordinates for the next vertex.  
--- @param set number @The texture coordinate set, 0 to 7
--- @param u number @U coordinate.
--- @param v number @V coordinate.
function mesh.TexCoord(set, u, v)
end

--- A set of four numbers that can be used for arbitrary purposes by Material shaders.  
--- This is most commonly used to provide tangent information about each vertex to the Material's shader.  
--- @param tangentX number 
--- @param tangentY number 
--- @param tangentZ number 
--- @param tangentHandedness number 
function mesh.UserData(tangentX, tangentY, tangentZ, tangentHandedness)
end

--- Returns the amount of vertices that have been pushed via mesh.AdvanceVertex.  
--- @return number @The amount of vertices.
function mesh.VertexCount()
end

