--- @class GIMesh
--- Renderable mesh object, can be used to create models on the fly. The only way to create your own IMesh object is to call <page text="Mesh">Global.Mesh</page>.  
--- * **BUG**: [IMeshes only respond to one projected texture.](https://github.com/Facepunch/garrysmod-issues/issues/2301)  
local GIMesh = {}
--- Builds the mesh from a table mesh vertexes.  
--- See Global.Mesh and util.GetModelMeshes for examples.  
--- @param vertexes table @A table consisting of Structures/MeshVertexs.
function GIMesh:BuildFromTriangles(vertexes)
end

--- Deletes the mesh and frees the memory used by it.  
function GIMesh:Destroy()
end

--- Renders the mesh with the active matrix.  
function GIMesh:Draw()
end

--- Returns whether this IMesh is valid or not.  
--- @return boolean @Whether this IMesh is valid or not.
function GIMesh:IsValid()
end

