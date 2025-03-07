--- @meta

--- Default value  
_G.VIEW_MAIN = 0
--- 3D skybox  
_G.VIEW_3DSKY = 1
--- Rendering for `_rt_Camera` base texture material (`func_monitor`, `info_camera_link`).  
_G.VIEW_MONITOR = 2
--- Water reflection  
_G.VIEW_REFLECTION = 3
--- Water refraction  
_G.VIEW_REFRACTION = 4
--- Used by `script_intro` entity.  
_G.VIEW_INTRO_PLAYER = 5
--- Used by `script_intro` entity.  
_G.VIEW_INTRO_CAMERA = 6
--- Internally used for Global.ProjectedTexture and flashlight.  
_G.VIEW_SHADOW_DEPTH_TEXTURE = 7
--- For SSAO depth. Can be accessed via render.GetResolvedFullFrameDepth.  
_G.VIEW_SSAO = 8

--- Enumerations used by render.RenderView inside of Structures/ViewData.  
--- @alias EVIEW `VIEW_MAIN`|`VIEW_3DSKY`|`VIEW_MONITOR`|`VIEW_REFLECTION`|`VIEW_REFRACTION`|`VIEW_INTRO_PLAYER`|`VIEW_INTRO_CAMERA`|`VIEW_SHADOW_DEPTH_TEXTURE`|`VIEW_SSAO`
