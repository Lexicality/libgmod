--- @meta

--- ⚠ **WARNING**: The primitive type `MATERIAL_POINTS` does not currently work and will not produce any visual effect if used.  
--- For more information, see Point Primitives  
_G.MATERIAL_POINTS = 0
--- ⚠ **WARNING**: The primitive type `MATERIAL_LINES` does not currently work and will not produce any visual effect if used.  
--- For more information, see Line Primitives  
_G.MATERIAL_LINES = 1
--- Creates triangles from groupings of 3 vertices.  
--- TThe `primitiveCount` argument of mesh.Begin should be the total number of triangles that the Mesh will contain.  
--- E.g. `(vertexCount / 3)`  
--- For more information, see Triangle Primitives  
_G.MATERIAL_TRIANGLES = 2
--- Creates a set of triangles that each share two vertices with the previous triangle in the sequence.  
--- The `primitiveCount` argument of mesh.Begin should be the total number of triangles that the Mesh will contain.  
--- E.g. `(vertexCount - 2)`  
--- For more information, see Triangle Strip Primitives  
_G.MATERIAL_TRIANGLE_STRIP = 3
--- ⚠ **WARNING**: The primitive type `MATERIAL_LINE_STRIP` does not currently work and will not produce any visual effect if used.  
--- For more information, see Line Strip Primitives  
_G.MATERIAL_LINE_STRIP = 4
--- ⚠ **WARNING**: The primitive type `MATERIAL_LINE_LOOP` does not currently work and will not produce any visual effect if used.  
--- For more information, see Line Loop Primitives  
_G.MATERIAL_LINE_LOOP = 5
--- Creates a set of triangles that all share a single vertex and each share a vertex with the previous triangle.  
--- The `primitiveCount` argument of mesh.Begin should be the total number of vertices that the Mesh will contain.  
--- E.g. `(vertexCount)`  
--- For more information, see Polygon Primitives  
_G.MATERIAL_POLYGON = 6
--- Creates pairs of triangles that share two vertices.  
--- The `primitiveCount` argument of mesh.Begin should be the total number of quads that the Mesh will contain.  
--- E.g. `(vertexCount / 4)`  
--- For more information, see Quad Primitives  
_G.MATERIAL_QUADS = 7

--- Enumerations used by mesh.Begin to control what type of vertex information it should expect. Clientside only.  
--- For more information, see the Mesh Primitives reference page.  
--- @alias EMATERIAL `MATERIAL_POINTS`|`MATERIAL_LINES`|`MATERIAL_TRIANGLES`|`MATERIAL_TRIANGLE_STRIP`|`MATERIAL_LINE_STRIP`|`MATERIAL_LINE_LOOP`|`MATERIAL_POLYGON`|`MATERIAL_QUADS`
