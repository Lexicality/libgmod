--- @meta

--- Default render mode. Transparently has no effect.  
_G.RENDERMODE_NORMAL = 0
--- Supports transparency.  
--- Use this to make alpha of Global.Color work for your entity. For players, it must be set for their active weapon aswell.  
_G.RENDERMODE_TRANSCOLOR = 1
_G.RENDERMODE_TRANSTEXTURE = 2
--- Intended for glowing sprites. Allows transparency, and forces the sprite or model to be rendered unlit.  
--- The size of a sprite rendered with Glow is consistent with the screen size (unlike the alternative World Space Glow), making it appear larger at a distance, in comparison to the world.  
--- The GlowProxySize keyvalue affects this Render Mode on sprites.  
_G.RENDERMODE_GLOW = 3
--- Enables Alphatesting. Legacy port from Goldsource. Obsolete in Source due to Alphatesting being handled in materials. Does not allow transparency.  
_G.RENDERMODE_TRANSALPHA = 4
--- Add the material's color values to the existing image, instead of performing a multiplication. Sprites will appear through world geometry and the sprite/model will always brighten the world. Allows transparency.  
_G.RENDERMODE_TRANSADD = 5
--- Causes the material to be not be drawn at all, similarly to Don't Render.  
_G.RENDERMODE_ENVIROMENTAL = 6
--- Functions like Additive, but also blends between animation frames. Requires the material to have a functioning animating texture. Allows transparency.  
_G.RENDERMODE_TRANSADDFRAMEBLEND = 7
--- Functions similarly to Additive, except that the alpha channel controls the opacity of the sprite. An example of use is for dark sprites, with an example material being sprites/strider_blackball.vmt.  
_G.RENDERMODE_TRANSALPHADD = 8
--- Functions similarly to Glow, with the exception that the size of the sprite is relative to the world rather than the screen.  
--- The GlowProxySize keyvalue affects this Render Mode on sprites.  
_G.RENDERMODE_WORLDGLOW = 9
--- The entity is still being drawn and networked albeit invisible, therefore not making this Render Mode ideal for performance reasons.  
--- To completely avoid drawing and networking an entity, see EF_NODRAW.  
_G.RENDERMODE_NONE = 10

--- Enumerations used by Entity:SetRenderMode and Entity:GetRenderMode.  
--- @alias ERENDERMODE `RENDERMODE_NORMAL`|`RENDERMODE_TRANSCOLOR`|`RENDERMODE_TRANSTEXTURE`|`RENDERMODE_GLOW`|`RENDERMODE_TRANSALPHA`|`RENDERMODE_TRANSADD`|`RENDERMODE_ENVIROMENTAL`|`RENDERMODE_TRANSADDFRAMEBLEND`|`RENDERMODE_TRANSALPHADD`|`RENDERMODE_WORLDGLOW`|`RENDERMODE_NONE`
