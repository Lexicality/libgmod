--- @meta

_G.IMAGE_FORMAT_DEFAULT = -1
--- Red, Green, Blue, Alpha, 8 bit per pixel.  
_G.IMAGE_FORMAT_RGBA8888 = 0
--- Probably legacy format. Alpha, Red, Green, Blue, 8 bit per pixel.  
_G.IMAGE_FORMAT_ABGR8888 = 1
--- Red, Green, Blue, 8 bit per pixel.  
_G.IMAGE_FORMAT_RGB888 = 2
--- Legacy format. Blue, Green, Red order, 8 bit per pixel.  
_G.IMAGE_FORMAT_BGR888 = 3
--- Red, Green, Blue, 5 bit per pixel for Red and Blue channels, 6 bits for Green. Effectively uses less video memory.  
_G.IMAGE_FORMAT_RGB565 = 4
--- `IMAGE_FORMAT_RGBA8888` with different byte order. Legacy format.  
_G.IMAGE_FORMAT_ARGB8888 = 11
--- `IMAGE_FORMAT_RGBA8888` with different byte order. Legacy format.  
_G.IMAGE_FORMAT_BGRA8888 = 12
--- RGBA, but 16 bits per pixel. Was meant to be used for "Integer mode" for HDR. Probably legacy format.  
_G.IMAGE_FORMAT_RGBA16161616 = 25
--- RGBA, but floating point 16 bits per pixel. Is used for "Float mode" HDR.  
_G.IMAGE_FORMAT_RGBA16161616F = 24
--- Grayscale format (black and white), 8 bits per pixel. Not working on Proton.  
_G.IMAGE_FORMAT_I8 = 5
--- Grayscale format (black and white) with alpha support, 8 bits per pixel/channel. Not working on Proton.  
_G.IMAGE_FORMAT_IA88 = 6
--- Unknown legacy format. 8 bit alpha? Same as `I8` besides assigned meaning/name to the channel?  
_G.IMAGE_FORMAT_A8 = 8
--- Unknown legacy format. Same as `BGRA8888`, but without defining meaning to the 4th channel?  
_G.IMAGE_FORMAT_BGRX8888 = 16
--- `RGB565`, but reverse color order. Legacy format.  
_G.IMAGE_FORMAT_BGR565 = 17
--- Unknown legacy format.  
_G.IMAGE_FORMAT_BGRX5551 = 18
--- Unknown legacy format.  
_G.IMAGE_FORMAT_BGRA4444 = 19
--- Unknown legacy format.  
_G.IMAGE_FORMAT_BGRA5551 = 21
--- Single color channel, 32bit float per pixel. Works only with `mat_disable_d3d9ex 0`. Not working on dx 92.  
_G.IMAGE_FORMAT_R32F = 27
--- 32bit floating point RGBA. Works only with `mat_disable_d3d9ex 0`  
_G.IMAGE_FORMAT_RGBA32323232F = 29
--- Compressed texture format. See https://en.wikipedia.org/wiki/S3_Texture_Compression.  
_G.IMAGE_FORMAT_DXT1 = 13
--- Compressed texture format. Do not use. See https://en.wikipedia.org/wiki/S3_Texture_Compression.  
_G.IMAGE_FORMAT_DXT3 = 14
--- Compressed texture format. Better quality than DXT1, supports alpha. See https://en.wikipedia.org/wiki/S3_Texture_Compression.  
_G.IMAGE_FORMAT_DXT5 = 15

--- Enumerations used by Global.GetRenderTargetEx. Clientside only.  
--- ℹ **NOTE**: Some additional image formats are accepted by GetRenderTargetEx, but don't currently have enums in Lua and aren't listed here. See [VTF Enumerations.](https://developer.valvesoftware.com/wiki/Valve_Texture_Format#VTF_enumerations)  
--- @alias EIMAGE_FORMAT `IMAGE_FORMAT_DEFAULT`|`IMAGE_FORMAT_RGBA8888`|`IMAGE_FORMAT_ABGR8888`|`IMAGE_FORMAT_RGB888`|`IMAGE_FORMAT_BGR888`|`IMAGE_FORMAT_RGB565`|`IMAGE_FORMAT_ARGB8888`|`IMAGE_FORMAT_BGRA8888`|`IMAGE_FORMAT_RGBA16161616`|`IMAGE_FORMAT_RGBA16161616F`|`IMAGE_FORMAT_I8`|`IMAGE_FORMAT_IA88`|`IMAGE_FORMAT_A8`|`IMAGE_FORMAT_BGRX8888`|`IMAGE_FORMAT_BGR565`|`IMAGE_FORMAT_BGRX5551`|`IMAGE_FORMAT_BGRA4444`|`IMAGE_FORMAT_BGRA5551`|`IMAGE_FORMAT_R32F`|`IMAGE_FORMAT_RGBA32323232F`|`IMAGE_FORMAT_DXT1`|`IMAGE_FORMAT_DXT3`|`IMAGE_FORMAT_DXT5`
