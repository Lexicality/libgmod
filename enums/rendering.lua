---
BLEND_ZERO = 0
---
BLEND_ONE = 1
---
BLEND_DST_COLOR = 2
---
BLEND_ONE_MINUS_DST_COLOR = 3
---
BLEND_SRC_ALPHA = 4
---
BLEND_ONE_MINUS_SRC_ALPHA = 5
---
BLEND_DST_ALPHA = 6
---
BLEND_ONE_MINUS_DST_ALPHA = 7
---
BLEND_SRC_ALPHA_SATURATE = 8
---
BLEND_SRC_COLOR = 9
---
BLEND_ONE_MINUS_SRC_COLOR = 10

---
BLENDFUNC_ADD = 0
---
BLENDFUNC_SUBTRACT = 1
---
BLENDFUNC_REVERSE_SUBTRACT = 2
---
BLENDFUNC_MIN = 3
---
BLENDFUNC_MAX = 4

--- Place the light from the front
BOX_FRONT = 0
--- Place the light behind
BOX_BACK = 1
--- Place the light to the right
BOX_RIGHT = 2
--- Place the light to the left
BOX_LEFT = 3
--- Place the light to the top
BOX_TOP = 4
--- Place the light to the bottom
BOX_BOTTOM = 5

--- Huge static prop, possibly leftover from goldsrc
RENDERGROUP_STATIC_HUGE = 0
--- Huge opaque entity, possibly leftover from goldsrc
RENDERGROUP_OPAQUE_HUGE = 1
--- Static props?
RENDERGROUP_STATIC = 6
--- For non transparent/solid entities. For scripted entities, this will have ENTITY:Draw called
RENDERGROUP_OPAQUE = 7
--- For translucent/transparent entities For scripted entities, this will have ENTITY:DrawTranslucent called
RENDERGROUP_TRANSLUCENT = 8
--- For both translucent/transparent and opaque/solid anim entities For scripted entities, this will have both, ENTITY:Draw and ENTITY:DrawTranslucent called
RENDERGROUP_BOTH = 9
--- Solid weapon view models
RENDERGROUP_VIEWMODEL = 10
--- Transparent overlays etc
RENDERGROUP_VIEWMODEL_TRANSLUCENT = 11
--- For brush entities
RENDERGROUP_OPAQUE_BRUSH = 12
--- Unclassfied. Won't get drawn.
RENDERGROUP_OTHER = 13

--- Default render mode. Transparently has no effect.
RENDERMODE_NORMAL = 0
--- Supports transparency. Use this to make alpha of Color work for your entity. For players, it must be set for their active weapon aswell.
RENDERMODE_TRANSCOLOR = 1
---
RENDERMODE_TRANSTEXTURE = 2
--- Intended for glowing sprites. Allows transparency, and forces the sprite or model to be rendered unlit.
--- The size of a sprite rendered with Glow is consistent with the screen size (unlike the alternative World Space Glow), making it appear larger at a distance, in comparison to the world.
--- The GlowProxySize keyvalue affects this Render Mode on sprites.
RENDERMODE_GLOW = 3
--- Enables Alphatesting. Legacy port from Goldsource. Obsolete in Source due to Alphatesting being handled in materials. Does not allow transparency.
RENDERMODE_TRANSALPHA = 4
--- Add the material's color values to the existing image, instead of performing a multiplication. Sprites will appear through world geometry and the sprite/model will always brighten the world. Allows transparency.
RENDERMODE_TRANSADD = 5
--- Causes the material to be not be drawn at all, similarly to Don't Render.
RENDERMODE_ENVIROMENTAL = 6
--- Functions like Additive, but also blends between animation frames. Requires the material to have a functioning animating texture. Allows transparency.
RENDERMODE_TRANSADDFRAMEBLEND = 7
--- Functions similarly to Additive, except that the alpha channel controls the opacity of the sprite. An example of use is for dark sprites, with an example material being sprites/strider_blackball.vmt.
RENDERMODE_TRANSALPHADD = 8
--- Functions similarly to Glow, with the exception that the size of the sprite is relative to the world rather than the screen.
--- The GlowProxySize keyvalue affects this Render Mode on sprites.
RENDERMODE_WORLDGLOW = 9
--- The entity is still being drawn and networked albeit invisible, therefore not making this Render Mode ideal for performance reasons.
--- To completely avoid drawing and networking an entity, see EF_NODRAW.
RENDERMODE_NONE = 10

--- Only allowed for render targets that don't want a depth buffer (because if they have a depth buffer, the render target must be less than or equal to the size of the framebuffer).
RT_SIZE_NO_CHANGE = 0
--- Don't play with the specified width and height other than making sure it fits in the framebuffer.
RT_SIZE_DEFAULT = 1
--- Apply picmip to the render target's width and height.
RT_SIZE_PICMIP = 2
--- frame_buffer_width / 4
RT_SIZE_HDR = 3
--- Same size as frame buffer, or next lower power of 2 if we can't do that.
RT_SIZE_FULL_FRAME_BUFFER = 4
--- Target of specified size, don't mess with dimensions
RT_SIZE_OFFSCREEN = 5
--- Same size as the frame buffer, rounded up if necessary for systems that can't do non-power of two textures.
RT_SIZE_FULL_FRAME_BUFFER_ROUNDED_UP = 6
--- Rounded down to power of 2, essentially
RT_SIZE_REPLAY_SCREENSHOT = 7
--- Use the size passed in. Don't clamp it to the frame buffer size. Really.
RT_SIZE_LITERAL = 8
---
RT_SIZE_LITERAL_PICMIP = 9

---
STUDIO_RENDER = 1
---
STUDIO_VIEWXFORMATTACHMENTS = 2
---
STUDIO_DRAWTRANSLUCENTSUBMODELS = 4
---
STUDIO_TWOPASS = 8
---
STUDIO_STATIC_LIGHTING = 16
---
STUDIO_WIREFRAME = 32
---
STUDIO_ITEM_BLINK = 64
---
STUDIO_NOSHADOWS = 128
---
STUDIO_WIREFRAME_VCOLLIDE = 256
--- Not a studio flag, but used to flag when we want studio stats
STUDIO_GENERATE_STATS = 16777216
--- Not a studio flag, but used to flag model as using shadow depth material override
STUDIO_SSAODEPTHTEXTURE = 134217728
--- Not a studio flag, but used to flag model as using shadow depth material override
STUDIO_SHADOWDEPTHTEXTURE = 1073741824
--- Not a studio flag, but used to flag model as a non-sorting brush model
STUDIO_TRANSPARENCY = 2147483648

--- Preserves the existing stencil buffer value.
STENCILOPERATION_KEEP = 1
--- Sets the value in the stencil buffer to 0.
STENCILOPERATION_ZERO = 2
--- Sets the value in the stencil buffer to the reference value, set using render.SetStencilReferenceValue.
STENCILOPERATION_REPLACE = 3
--- Increments the value in the stencil buffer by 1, clamping the result.
STENCILOPERATION_INCRSAT = 4
--- Decrements the value in the stencil buffer by 1, clamping the result.
STENCILOPERATION_DECRSAT = 5
--- Inverts the value in the stencil buffer.
STENCILOPERATION_INVERT = 6
--- Increments the value in the stencil buffer by 1, wrapping around on overflow.
STENCILOPERATION_INCR = 7
--- Decrements the value in the stencil buffer by 1, wrapping around on overflow.
STENCILOPERATION_DECR = 8

--- Never passes.
STENCILCOMPARISONFUNCTION_NEVER = 1
--- Passes where the reference value is less than the stencil value.
STENCILCOMPARISONFUNCTION_LESS = 2
--- Passes where the reference value is equal to the stencil value.
STENCILCOMPARISONFUNCTION_EQUAL = 3
--- Passes where the reference value is less than or equal to the stencil value.
STENCILCOMPARISONFUNCTION_LESSEQUAL = 4
--- Passes where the reference value is greater than the stencil value.
STENCILCOMPARISONFUNCTION_GREATER = 5
--- Passes where the reference value is not equal to the stencil value.
STENCILCOMPARISONFUNCTION_NOTEQUAL = 6
--- Passes where the reference value is greater than or equal to the stencil value.
STENCILCOMPARISONFUNCTION_GREATEREQUAL = 7
--- Always passes.
STENCILCOMPARISONFUNCTION_ALWAYS = 8

--- Never passes.
STENCIL_NEVER = 1
--- Passes where the reference value is less than the stencil value.
STENCIL_LESS = 2
--- Passes where the reference value is equal to the stencil value.
STENCIL_EQUAL = 3
--- Passes where the reference value is less than or equal to the stencil value.
STENCIL_LESSEQUAL = 4
--- Passes where the reference value is greater than the stencil value.
STENCIL_GREATER = 5
--- Passes where the reference value is not equal to the stencil value.
STENCIL_NOTEQUAL = 6
--- Passes where the reference value is greater than or equal to the stencil value.
STENCIL_GREATEREQUAL = 7
--- Always passes.
STENCIL_ALWAYS = 8

SCREENFADE = {}
--- Fade out after the hold time has passed
SCREENFADE.IN = 1
--- Fade in, hold time passes, disappear
SCREENFADE.OUT = 2
--- With white color, turns the screen black
SCREENFADE.MODULATE = 4
--- No effects, never disappear
SCREENFADE.STAYOUT = 8
--- Appear, Disappear, no effects
SCREENFADE.PURGE = 16

--- Only allowed for render targets that don't want a depth buffer (because if they have a depth buffer, the render target must be less than or equal to the size of the framebuffer).
RT_SIZE_NO_CHANGE = 0
--- Don't play with the specified width and height other than making sure it fits in the framebuffer.
RT_SIZE_DEFAULT = 1
--- Apply picmip to the render target's width and height.
RT_SIZE_PICMIP = 2
--- frame_buffer_width / 4
RT_SIZE_HDR = 3
--- Same size as frame buffer, or next lower power of 2 if we can't do that.
RT_SIZE_FULL_FRAME_BUFFER = 4
--- Target of specified size, don't mess with dimensions
RT_SIZE_OFFSCREEN = 5
--- Same size as the frame buffer, rounded up if necessary for systems that can't do non-power of two textures.
RT_SIZE_FULL_FRAME_BUFFER_ROUNDED_UP = 6
--- Rounded down to power of 2, essentially
RT_SIZE_REPLAY_SCREENSHOT = 7
--- Use the size passed in. Don't clamp it to the frame buffer size. Really.
RT_SIZE_LITERAL = 8
---
RT_SIZE_LITERAL_PICMIP = 9

---
CREATERENDERTARGETFLAGS_HDR = 1
---
CREATERENDERTARGETFLAGS_AUTOMIPMAP = 2
---
CREATERENDERTARGETFLAGS_UNFILTERABLE_OK = 4

---
IMAGE_FORMAT_DEFAULT = -1
---
IMAGE_FORMAT_RGBA8888 = 0
---
IMAGE_FORMAT_ABGR8888 = 1
---
IMAGE_FORMAT_RGB888 = 2
---
IMAGE_FORMAT_BGR888 = 3
---
IMAGE_FORMAT_RGB565 = 4
---
IMAGE_FORMAT_ARGB8888 = 11
---
IMAGE_FORMAT_BGRA8888 = 12
---
IMAGE_FORMAT_RGBA16161616 = 25
---
IMAGE_FORMAT_RGBA16161616F = 24

--- None. No change.
kRenderFxNone = 0
--- Slowly pulses the entitys transparency, +-15 to the current alpha.
kRenderFxPulseSlow = 1
--- Quickly pulses the entitys transparency, +-15 to the current alpha.
kRenderFxPulseFast = 2
--- Slowly pulses the entitys transparency, +-60 to the current alpha.
kRenderFxPulseSlowWide = 3
--- Quickly pulses the entitys transparency, +-60 to the current alpha.
kRenderFxPulseFastWide = 4
--- Slowly fades away the entity, making it completely invisible. Starts from whatever alpha the entity currently has set.
kRenderFxFadeSlow = 5
--- Quickly fades away the entity, making it completely invisible. Starts from whatever alpha the entity currently has set.
kRenderFxFadeFast = 6
--- Slowly solidifies the entity, making it fully opaque. Starts from whatever alpha the entity currently has set.
kRenderFxSolidSlow = 7
--- Quickly solidifies the entity, making it fully opaque. Starts from whatever alpha the entity currently has set.
kRenderFxSolidFast = 8
--- Slowly switches the entitys transparency between its alpha and 0.
kRenderFxStrobeSlow = 9
--- Quickly switches the entitys transparency between its alpha and 0.
kRenderFxStrobeFast = 10
--- Very quickly switches the entitys transparency between its alpha and 0.
kRenderFxStrobeFaster = 11
--- Same as Strobe Slow, but the interval is more randomized.
kRenderFxFlickerSlow = 12
--- Same as Strobe Fast, but the interval is more randomized.
kRenderFxFlickerFast = 13
---
kRenderFxNoDissipation = 14
--- Flickers ( randomizes ) the entitys transparency
kRenderFxDistort = 15
--- Same as Distort, but fades the entity away the farther you are from it.
kRenderFxHologram = 16
---
kRenderFxExplode = 17
---
kRenderFxGlowShell = 18
---
kRenderFxClampMinScale = 19
---
kRenderFxEnvRain = 20
---
kRenderFxEnvSnow = 21
---
kRenderFxSpotlight = 22
---
kRenderFxRagdoll = 23
--- Quickly pulses the entitys transparency, from 0 to 255.
kRenderFxPulseFastWider = 24

---
MATERIAL_LINES = 1
---
MATERIAL_LINE_LOOP = 5
---
MATERIAL_LINE_STRIP = 4
---
MATERIAL_POINTS = 0
---
MATERIAL_POLYGON = 6
---
MATERIAL_QUADS = 7
---
MATERIAL_TRIANGLES = 2
---
MATERIAL_TRIANGLE_STRIP = 3

--- Counter clock wise cull mode
MATERIAL_CULLMODE_CCW = 0
--- Clock wise cull mode
MATERIAL_CULLMODE_CW = 1

--- No fog
MATERIAL_FOG_NONE = 0
--- Linear fog
MATERIAL_FOG_LINEAR = 1
--- For use in conjunction with render.SetFogZ. Does not work if start distance is bigger than end distance. Ignores density setting. Seems to be broken? Used for underwater fog by the engine.
MATERIAL_FOG_LINEAR_BELOW_FOG_Z = 2

--- No light
MATERIAL_LIGHT_DISABLE = 0
--- Point light
MATERIAL_LIGHT_POINT = 1
--- Directional light
MATERIAL_LIGHT_DIRECTIONAL = 2
--- Spot light
MATERIAL_LIGHT_SPOT = 3

--- Do not create a depth-stencil buffer. Use the default depth-stencil buffer if used as render target 0.
MATERIAL_RT_DEPTH_SHARED = 0
--- Create a depth-stencil buffer. Use the created depth-stencil buffer if used as render target 0.
MATERIAL_RT_DEPTH_SEPARATE = 1
--- Do not create a depth-stencil buffer. Disable depth and stencil buffer usage if used as render target 0.
MATERIAL_RT_DEPTH_NONE = 2
--- Create a depth-stencil buffer. Use the created depth-stencil buffer if used as render target 0. Creates a color texture despite the name. Seems to behave the same as MATERIAL_RT_DEPTH_SEPARATE.
MATERIAL_RT_DEPTH_ONLY = 3

--- Not spectating
OBS_MODE_NONE = 0
---
OBS_MODE_DEATHCAM = 1
--- TF2-like freezecam
OBS_MODE_FREEZECAM = 2
--- Same as OBS_MODE_CHASE, but you can't rotate the view
OBS_MODE_FIXED = 3
--- First person cam
OBS_MODE_IN_EYE = 4
--- Chase cam, 3rd person cam, free rotation around the spectated target
OBS_MODE_CHASE = 5
--- Free roam/noclip-alike. Does not work from GM:PlayerDeath
OBS_MODE_ROAMING = 6

--- Particle spawns in entity's origin and does not follow it
PATTACH_ABSORIGIN = 0
--- Particle attaches to entity's origin and follows the entity
PATTACH_ABSORIGIN_FOLLOW = 1
--- Create at a custom origin, but don't follow
PATTACH_CUSTOMORIGIN = 2
--- Particle attaches to passed to ParticleEffectAttach attachment id, but does not follow the entity
PATTACH_POINT = 3
--- Particle attaches to passed to ParticleEffectAttach attachment id and follows the entity
PATTACH_POINT_FOLLOW = 4
--- Particle spawns in the beginning of coordinates ( Vector( 0, 0, 0 ) ), used for control points that don't attach to an entity
PATTACH_WORLDORIGIN = 5

TEXFILTER = {}
---
TEXFILTER.NONE = 0
---
TEXFILTER.POINT = 1
---
TEXFILTER.LINEAR = 2
---
TEXFILTER.ANISOTROPIC = 3

color_white = Color(255, 255, 255, 255)
color_black = Color(0, 0, 0, 255)
color_transparent = Color(255, 255, 255, 0)
