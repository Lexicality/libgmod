--- @meta

--- The current render is for opaque renderables only  
_G.STUDIO_RENDER = 1
_G.STUDIO_VIEWXFORMATTACHMENTS = 2
--- The current render is for translucent renderables only  
_G.STUDIO_DRAWTRANSLUCENTSUBMODELS = 4
--- The current render is for both opaque and translucent renderables  
_G.STUDIO_TWOPASS = 8
_G.STUDIO_STATIC_LIGHTING = 16
_G.STUDIO_WIREFRAME = 32
_G.STUDIO_ITEM_BLINK = 64
_G.STUDIO_NOSHADOWS = 128
_G.STUDIO_WIREFRAME_VCOLLIDE = 256
--- Not a studio flag, but used to flag when we want studio stats  
_G.STUDIO_GENERATE_STATS = 16777216
--- Not a studio flag, but used to flag model as using shadow depth material override  
_G.STUDIO_SSAODEPTHTEXTURE = 134217728
--- Not a studio flag, but used to flag model as using shadow depth material override  
_G.STUDIO_SHADOWDEPTHTEXTURE = 1073741824
--- Not a studio flag, but used to flag model as a non-sorting brush model  
_G.STUDIO_TRANSPARENCY = 2147483648

--- Used by ENTITY:Draw, ENTITY:DrawTranslucent, GM:PostPlayerDraw, GM:PrePlayerDraw and Entity:DrawModel.  
--- @alias ESTUDIO `STUDIO_RENDER`|`STUDIO_VIEWXFORMATTACHMENTS`|`STUDIO_DRAWTRANSLUCENTSUBMODELS`|`STUDIO_TWOPASS`|`STUDIO_STATIC_LIGHTING`|`STUDIO_WIREFRAME`|`STUDIO_ITEM_BLINK`|`STUDIO_NOSHADOWS`|`STUDIO_WIREFRAME_VCOLLIDE`|`STUDIO_GENERATE_STATS`|`STUDIO_SSAODEPTHTEXTURE`|`STUDIO_SHADOWDEPTHTEXTURE`|`STUDIO_TRANSPARENCY`
