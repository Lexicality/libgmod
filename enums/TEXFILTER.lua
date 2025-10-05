--- @meta

--- Disables any filter override.  
_G.TEXFILTER.NONE = 0
--- Point sampling, no interpolation.  
_G.TEXFILTER.POINT = 1
--- Basic interpolation between 2 samples.  
_G.TEXFILTER.LINEAR = 2
--- Highest quality filter. Most useful for textures on 3D geometry.  
_G.TEXFILTER.ANISOTROPIC = 3

--- Enumerations used by render.PushFilterMin and render.PushFilterMag.  
--- See [this](https://msdn.microsoft.com/en-us/library/windows/desktop/bb172615(v=vs.85).aspx) and [this page](https://en.wikipedia.org/wiki/Texture_filtering) for more information on texture filtering.  
--- @alias ETEXFILTER `TEXFILTER.NONE`|`TEXFILTER.POINT`|`TEXFILTER.LINEAR`|`TEXFILTER.ANISOTROPIC`
