--- @meta

--- Value will hold the light strength  
_G.SURF_LIGHT = 1
--- The surface is a 2D skybox  
_G.SURF_SKY2D = 2
--- This surface is a skybox, equivalent to HitSky in Structures/TraceResult  
_G.SURF_SKY = 4
--- This surface is animated water  
_G.SURF_WARP = 8
--- This surface is translucent  
_G.SURF_TRANS = 16
--- This surface cannot have portals placed on, used by Portal's gun  
_G.SURF_NOPORTAL = 32
--- This surface is a trigger  
_G.SURF_TRIGGER = 64
--- This surface is an invisible entity, equivalent to HitNoDraw in Structures/TraceResult  
_G.SURF_NODRAW = 128
--- Make a primary bsp splitter  
_G.SURF_HINT = 256
--- This surface can be ignored by impact effects  
_G.SURF_SKIP = 512
--- This surface has no lights calculated  
_G.SURF_NOLIGHT = 1024
--- Calculate three lightmaps for the surface for bumpmapping  
_G.SURF_BUMPLIGHT = 2048
--- No shadows are cast on this surface  
_G.SURF_NOSHADOWS = 4096
--- No decals are applied to this surface  
_G.SURF_NODECALS = 8192
--- Don't subdivide patches on this surface  
_G.SURF_NOCHOP = 16384
--- This surface is part of an entity's hitbox  
_G.SURF_HITBOX = 32768

--- Surface flags, used by the Structures/TraceResult.  
--- @alias ESURF `SURF_LIGHT`|`SURF_SKY2D`|`SURF_SKY`|`SURF_WARP`|`SURF_TRANS`|`SURF_NOPORTAL`|`SURF_TRIGGER`|`SURF_NODRAW`|`SURF_HINT`|`SURF_SKIP`|`SURF_NOLIGHT`|`SURF_BUMPLIGHT`|`SURF_NOSHADOWS`|`SURF_NODECALS`|`SURF_NOCHOP`|`SURF_HITBOX`
