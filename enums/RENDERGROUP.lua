--- @meta

--- Huge static prop, possibly leftover from goldsrc  
_G.RENDERGROUP_STATIC_HUGE = 0
--- Huge opaque entity, possibly leftover from goldsrc  
_G.RENDERGROUP_OPAQUE_HUGE = 1
--- Static props?  
_G.RENDERGROUP_STATIC = 6
--- For non transparent/solid entities.  
--- For scripted entities, this will have ENTITY:Draw called  
_G.RENDERGROUP_OPAQUE = 7
--- For translucent/transparent entities  
--- For scripted entities, this will have ENTITY:DrawTranslucent called  
_G.RENDERGROUP_TRANSLUCENT = 8
--- For both translucent/transparent and opaque/solid anim entities  
--- For scripted entities, this will have both, ENTITY:Draw and ENTITY:DrawTranslucent called  
_G.RENDERGROUP_BOTH = 9
--- Solid weapon view models  
_G.RENDERGROUP_VIEWMODEL = 10
--- Transparent overlays etc  
_G.RENDERGROUP_VIEWMODEL_TRANSLUCENT = 11
--- For brush entities  
_G.RENDERGROUP_OPAQUE_BRUSH = 12
--- Unclassfied. Won't get drawn.  
_G.RENDERGROUP_OTHER = 13

--- Enumerations used by Global.ClientsideModel, `ENT.RenderGroup` in Structures/ENT and Entity:GetRenderGroup.  
--- @alias ERENDERGROUP `RENDERGROUP_STATIC_HUGE`|`RENDERGROUP_OPAQUE_HUGE`|`RENDERGROUP_STATIC`|`RENDERGROUP_OPAQUE`|`RENDERGROUP_TRANSLUCENT`|`RENDERGROUP_BOTH`|`RENDERGROUP_VIEWMODEL`|`RENDERGROUP_VIEWMODEL_TRANSLUCENT`|`RENDERGROUP_OPAQUE_BRUSH`|`RENDERGROUP_OTHER`
