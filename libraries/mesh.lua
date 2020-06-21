--- The mesh library allows you to create meshes. A mesh is a set of vertices that define a 3D shape, for constant meshes you should use the IMesh object instead.  
_G.mesh = {}
--- Pushes the new vertex data onto the render stack.  
function mesh.AdvanceVertex()
end

--- Starts a new dynamic mesh. If an IMesh is passed, it will use that mesh instead.  
--- @param mesh GIMesh @Mesh to build
--- @param primitiveType number @Primitive type, see Enums/MATERIAL.
--- @param primiteCount number @The amount of primitives.
function mesh.Begin(mesh, primitiveType, primiteCount)
end

--- Sets the color to be used for the next vertex.  
--- @param r number @Red component.
--- @param g number @Green component.
--- @param b number @Blue component.
--- @param a number @Alpha component.
function mesh.Color(r, g, b, a)
end

--- Ends the mesh and renders it.  
function mesh.End()
end

--- Sets the normal to be used for the next vertex.  
--- @param normal GVector @The normal of the vertex.
function mesh.Normal(normal)
end

--- Sets the position to be used for the next vertex.  
--- @param position GVector @The position of the vertex.
function mesh.Position(position)
end

--- Draws a quad using 4 vertices.  
--- @param vertex1 GVector @The first vertex.
--- @param vertex2 GVector @The second vertex.
--- @param vertex3 GVector @The third vertex.
--- @param vertex4 GVector @The fourth vertex.
function mesh.Quad(vertex1, vertex2, vertex3, vertex4)
end

--- Draws a quad using a position, a normal and the size.  
--- @param position GVector @The center of the quad.
--- @param normal GVector @The normal of the quad.
--- @param sizeX number @X size in pixels.
--- @param sizeY number @Y size in pixels.
function mesh.QuadEasy(position, normal, sizeX, sizeY)
end

--- Sets the specular map values.  
--- This function actually does nothing.  
--- @param r number @The red channel multiplier of the specular map.
--- @param g number @The green channel multiplier of the specular map.
--- @param b number @The blue channel multiplier of the specular map.
--- @param a number @The alpha channel multiplier of the specular map.
function mesh.Specular(r, g, b, a)
end

--- Sets the s tangent to be used.  
--- This function actually does nothing.  
--- @param sTanger GVector @The s tangent.
function mesh.TangentS(sTanger)
end

--- Sets the T tangent to be used.  
--- This function actually does nothing.  
--- @param tTanger GVector @The t tangent.
function mesh.TangentT(tTanger)
end

--- Sets the texture coordinates for the next vertex.  
--- Non-zero values of stage require the currently bound material to support it. For example, any LightmappedGeneric material supports stages 1 and 2 (lightmap texture coordinates).  
--- @param stage number @The stage of the texture coordinate.
--- @param u number @U coordinate.
--- @param v number @V coordinate.
function mesh.TexCoord(stage, u, v)
end

--- ℹ **NOTE**: It is recommended to use IMesh:BuildFromTriangles instead of the mesh library.  
--- A table of four numbers. This is used by most shaders in Source to hold tangent information of the vertex ( tangentX, tangentY, tangentZ, tangentHandedness ).  
--- @param tangentX number 
--- @param tangentY number 
--- @param tangentZ number 
--- @param tangentHandedness number 
function mesh.UserData(tangentX, tangentY, tangentZ, tangentHandedness)
end

--- Returns the amount of vertex that have yet been pushed.  
--- @return number @vertexCount
function mesh.VertexCount()
end

