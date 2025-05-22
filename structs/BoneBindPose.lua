--- @meta

--- A table structure representing a single bone's orientation when its mesh is in its baseline (or "bind") pose before any animation is played.  
--- This structure does not contain the bone ID for the bone it represents and instead relies on the structure's index within the table returned by util.GetModelMeshes to identify the bone it corresponds to.  
--- @class SBoneBindPose
--- @field parent number @The bone ID of this bone's parent bone.
--- @field matrix GVMatrix @A VMatrix containing this bone's position and rotation in local space relative to the model's origin.
