--- @meta

--- Performs bone merge on client side, merging bone positions of child entities (Entity:SetParent) with those of the parent, by bone names. The skeletons should have identical proportions, however it is not a requirement.  
_G.EF_BONEMERGE = 1
--- For use with EF_BONEMERGE. If this is set, then it places this ents origin at its parent and uses the parent's bbox + the max extents of the aiment. Otherwise, it sets up the parent's bones every frame to figure out where to place the aiment, which is inefficient because it'll setup the parent's bones even if the parent is not in the PVS.  
_G.EF_BONEMERGE_FASTCULL = 128
--- DLIGHT centered at entity origin  
_G.EF_BRIGHTLIGHT = 2
--- Player flashlight  
_G.EF_DIMLIGHT = 4
--- Don't interpolate the next frame  
_G.EF_NOINTERP = 8
--- Disables shadow  
_G.EF_NOSHADOW = 16
--- Prevents the entity from drawing and networking.  
_G.EF_NODRAW = 32
--- Don't receive shadows  
_G.EF_NORECEIVESHADOW = 64
--- Makes the entity blink  
_G.EF_ITEM_BLINK = 256
--- Always assume that the parent entity is animating.  
_G.EF_PARENT_ANIMATES = 512
--- Internal flag that is set by Entity:FollowBone.  
_G.EF_FOLLOWBONE = 1024
--- Makes the entity not accept being lit by projected textures, including the player's flashlight.  
_G.EF_NOFLASHLIGHT = 8192

--- Enumerations used by Entity:AddEffects,  Entity:RemoveEffects and  Entity:IsEffectActive.  
--- @alias EEF `EF_BONEMERGE`|`EF_BONEMERGE_FASTCULL`|`EF_BRIGHTLIGHT`|`EF_DIMLIGHT`|`EF_NOINTERP`|`EF_NOSHADOW`|`EF_NODRAW`|`EF_NORECEIVESHADOW`|`EF_ITEM_BLINK`|`EF_PARENT_ANIMATES`|`EF_FOLLOWBONE`|`EF_NOFLASHLIGHT`
