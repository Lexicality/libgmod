--- @meta

--- Low quality, "pixel art" texture filtering.  
_G.TEXTUREFLAGS_POINTSAMPLE = 1
--- Medium quality texture filtering.  
_G.TEXTUREFLAGS_TRILINEAR = 2
--- Clamp S coordinates.  
_G.TEXTUREFLAGS_CLAMPS = 4
--- Clamp T coordinates.  
_G.TEXTUREFLAGS_CLAMPT = 8
--- High quality texture filtering.  
_G.TEXTUREFLAGS_ANISOTROPIC = 16
--- Used in skyboxes. Makes sure edges are seamless.  
_G.TEXTUREFLAGS_HINT_DXT5 = 32
--- Purpose unknown.  
_G.TEXTUREFLAGS_PWL_CORRECTED = 64
--- Texture is a normal map.  
_G.TEXTUREFLAGS_NORMAL = 128
--- Render largest mipmap only. (Does not delete existing mipmaps, just disables them.)  
_G.TEXTUREFLAGS_NOMIP = 256
--- Not affected by texture resolution settings.  
_G.TEXTUREFLAGS_NOLOD = 512
--- No Minimum Mipmap  
_G.TEXTUREFLAGS_ALL_MIPS = 1024
--- Texture is an procedural texture (code can modify it).  
_G.TEXTUREFLAGS_PROCEDURAL = 2048
--- One bit alpha channel used.  
_G.TEXTUREFLAGS_ONEBITALPHA = 4096
--- Eight bit alpha channel used.  
_G.TEXTUREFLAGS_EIGHTBITALPHA = 8192
--- Texture is an environment map.  
_G.TEXTUREFLAGS_ENVMAP = 16384
--- Texture is a render target.  
_G.TEXTUREFLAGS_RENDERTARGET = 32768
--- Texture is a depth render target.  
_G.TEXTUREFLAGS_DEPTHRENDERTARGET = 65536
_G.TEXTUREFLAGS_NODEBUGOVERRIDE = 131072
_G.TEXTUREFLAGS_SINGLECOPY = 262144
--- <deprecated notag="1"></deprecated>  
--- Aka TEXTUREFLAGS_UNUSED_00080000  
_G.TEXTUREFLAGS_STAGING_MEMORY = 524288
--- <deprecated notag="1"></deprecated>  
--- Immediately destroy this texture when its reference count hits zero.  
--- Aka TEXTUREFLAGS_UNUSED_00100000  
_G.TEXTUREFLAGS_IMMEDIATE_CLEANUP = 1048576
--- <deprecated notag="1"></deprecated>  
--- Aka TEXTUREFLAGS_UNUSED_00200000  
_G.TEXTUREFLAGS_IGNORE_PICMIP = 2097152
_G.TEXTUREFLAGS_UNUSED_00400000 = 4194304
--- Do not buffer for Video Processing, generally render distance.  
_G.TEXTUREFLAGS_NODEPTHBUFFER = 8388608
_G.TEXTUREFLAGS_UNUSED_01000000 = 16777216
--- Clamp U coordinates (for volumetric textures).  
_G.TEXTUREFLAGS_CLAMPU = 33554432
--- Usable as a vertex texture  
_G.TEXTUREFLAGS_VERTEXTEXTURE = 67108864
--- Texture is a SSBump. (SSB)  
_G.TEXTUREFLAGS_SSBUMP = 134217728
_G.TEXTUREFLAGS_UNUSED_10000000 = 268435456
--- Clamp to border colour on all texture coordinates  
_G.TEXTUREFLAGS_BORDER = 536870912
--- <deprecated notag="1"></deprecated>  
--- Aka TEXTUREFLAGS_UNUSED_40000000  
_G.TEXTUREFLAGS_STREAMABLE_COARSE = 1073741824
--- <deprecated notag="1"></deprecated>  
--- Aka TEXTUREFLAGS_UNUSED_80000000  
_G.TEXTUREFLAGS_STREAMABLE_FINE = 2147483648

--- Bit flags used by Global.GetRenderTargetEx. Information taken from [VTF (Valve Texture Format) - Texture flags](https://developer.valvesoftware.com/wiki/Valve_Texture_Format#Texture_flags)  
--- ⚠ **WARNING**: These enumerations do not exist in game and are listed here only for reference  
--- @alias ETEXTUREFLAGS `TEXTUREFLAGS_POINTSAMPLE`|`TEXTUREFLAGS_TRILINEAR`|`TEXTUREFLAGS_CLAMPS`|`TEXTUREFLAGS_CLAMPT`|`TEXTUREFLAGS_ANISOTROPIC`|`TEXTUREFLAGS_HINT_DXT5`|`TEXTUREFLAGS_PWL_CORRECTED`|`TEXTUREFLAGS_NORMAL`|`TEXTUREFLAGS_NOMIP`|`TEXTUREFLAGS_NOLOD`|`TEXTUREFLAGS_ALL_MIPS`|`TEXTUREFLAGS_PROCEDURAL`|`TEXTUREFLAGS_ONEBITALPHA`|`TEXTUREFLAGS_EIGHTBITALPHA`|`TEXTUREFLAGS_ENVMAP`|`TEXTUREFLAGS_RENDERTARGET`|`TEXTUREFLAGS_DEPTHRENDERTARGET`|`TEXTUREFLAGS_NODEBUGOVERRIDE`|`TEXTUREFLAGS_SINGLECOPY`|`TEXTUREFLAGS_STAGING_MEMORY`|`TEXTUREFLAGS_IMMEDIATE_CLEANUP`|`TEXTUREFLAGS_IGNORE_PICMIP`|`TEXTUREFLAGS_UNUSED_00400000`|`TEXTUREFLAGS_NODEPTHBUFFER`|`TEXTUREFLAGS_UNUSED_01000000`|`TEXTUREFLAGS_CLAMPU`|`TEXTUREFLAGS_VERTEXTEXTURE`|`TEXTUREFLAGS_SSBUMP`|`TEXTUREFLAGS_UNUSED_10000000`|`TEXTUREFLAGS_BORDER`|`TEXTUREFLAGS_STREAMABLE_COARSE`|`TEXTUREFLAGS_STREAMABLE_FINE`
