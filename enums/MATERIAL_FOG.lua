--- @meta

--- No fog  
_G.MATERIAL_FOG_NONE = 0
--- Linear fog  
_G.MATERIAL_FOG_LINEAR = 1
--- For use in conjunction with render.SetFogZ. Does not work if start distance is bigger than end distance. Ignores density setting. Seems to be broken? Used for underwater fog by the engine.  
_G.MATERIAL_FOG_LINEAR_BELOW_FOG_Z = 2

--- Enumerations used by render.GetFogMode and render.FogMode. Clientside only.  
--- @alias EMATERIAL_FOG `MATERIAL_FOG_NONE`|`MATERIAL_FOG_LINEAR`|`MATERIAL_FOG_LINEAR_BELOW_FOG_Z`
