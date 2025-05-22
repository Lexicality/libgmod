--- @meta

--- A table structure representing the amount that a bone's transformation VMatrix should affect its vertex.  
--- A single vertex may have multiple BoneWeight structures affecting it, but each BoneWeight structure belongs to only one vertex.  
--- Added to the Structures/MeshVertex by util.GetModelMeshes  
--- To find a bone's transformation VMatrix, see Entity:GetBoneMatrix  
--- @class SBoneWeight
--- @field bone number @The ID of the bone affecting the vertex.
--- @field weight number @A percentage between `0` and `1` indicating how much influence this bone's VMatrix should have on the the vertex.
