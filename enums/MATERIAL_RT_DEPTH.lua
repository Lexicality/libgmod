--- @meta

--- Do not create a depth-stencil buffer.  
--- Use the default depth-stencil buffer if used as render target 0.  
_G.MATERIAL_RT_DEPTH_SHARED = 0
--- Create a depth-stencil buffer.  
--- Use the created depth-stencil buffer if used as render target 0.  
_G.MATERIAL_RT_DEPTH_SEPARATE = 1
--- Do not create a depth-stencil buffer.  
--- Disable depth and stencil buffer usage if used as render target 0.  
_G.MATERIAL_RT_DEPTH_NONE = 2
--- Create a depth-stencil buffer.  
--- Use the created depth-stencil buffer if used as render target 0.  
--- Creates a color texture despite the name.  
--- Seems to behave the same as MATERIAL_RT_DEPTH_SEPARATE.  
_G.MATERIAL_RT_DEPTH_ONLY = 3

--- Enumerations used by Global.GetRenderTargetEx. Clientside only.  
--- ⚠ **WARNING**: When Anti Aliasing is enabled then `MATERIAL_RT_DEPTH_SHARED` and `MATERIAL_RT_DEPTH_SEPARATE` will always create a new depth-stencil buffer because Render Targets do not have Anti Aliasing.  
--- @alias EMATERIAL_RT_DEPTH `MATERIAL_RT_DEPTH_SHARED`|`MATERIAL_RT_DEPTH_SEPARATE`|`MATERIAL_RT_DEPTH_NONE`|`MATERIAL_RT_DEPTH_ONLY`
