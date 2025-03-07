--- @meta

_G.IMAGE_FORMAT_DEFAULT = -1
_G.IMAGE_FORMAT_RGBA8888 = 0
_G.IMAGE_FORMAT_ABGR8888 = 1
_G.IMAGE_FORMAT_RGB888 = 2
_G.IMAGE_FORMAT_BGR888 = 3
_G.IMAGE_FORMAT_RGB565 = 4
_G.IMAGE_FORMAT_ARGB8888 = 11
_G.IMAGE_FORMAT_BGRA8888 = 12
_G.IMAGE_FORMAT_RGBA16161616 = 25
_G.IMAGE_FORMAT_RGBA16161616F = 24

--- Enumerations used by Global.GetRenderTargetEx. Clientside only.  
--- ℹ **NOTE**: Some additional image formats are accepted by GetRenderTargetEx, but don't currently have enums in Lua and aren't listed here. See [VTF Enumerations.](https://developer.valvesoftware.com/wiki/Valve_Texture_Format#VTF_enumerations)  
--- @alias EIMAGE_FORMAT `IMAGE_FORMAT_DEFAULT`|`IMAGE_FORMAT_RGBA8888`|`IMAGE_FORMAT_ABGR8888`|`IMAGE_FORMAT_RGB888`|`IMAGE_FORMAT_BGR888`|`IMAGE_FORMAT_RGB565`|`IMAGE_FORMAT_ARGB8888`|`IMAGE_FORMAT_BGRA8888`|`IMAGE_FORMAT_RGBA16161616`|`IMAGE_FORMAT_RGBA16161616F`
