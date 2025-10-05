--- @meta

--- None. No change.  
_G.kRenderFxNone = 0
--- Slowly pulses the entitys transparency, +-15 to the current alpha.  
_G.kRenderFxPulseSlow = 1
--- Quickly pulses the entitys transparency, +-15 to the current alpha.  
_G.kRenderFxPulseFast = 2
--- Slowly pulses the entitys transparency, +-60 to the current alpha.  
_G.kRenderFxPulseSlowWide = 3
--- Quickly pulses the entitys transparency, +-60 to the current alpha.  
_G.kRenderFxPulseFastWide = 4
--- Slowly fades away the entity, making it completely invisible.  
--- Starts from whatever alpha the entity currently has set.  
_G.kRenderFxFadeSlow = 5
--- Quickly fades away the entity, making it completely invisible.  
--- Starts from whatever alpha the entity currently has set.  
_G.kRenderFxFadeFast = 6
--- Slowly solidifies the entity, making it fully opaque.  
--- Starts from whatever alpha the entity currently has set.  
_G.kRenderFxSolidSlow = 7
--- Quickly solidifies the entity, making it fully opaque.  
--- Starts from whatever alpha the entity currently has set.  
_G.kRenderFxSolidFast = 8
--- Slowly switches the entitys transparency between its alpha and 0.  
_G.kRenderFxStrobeSlow = 9
--- Quickly switches the entitys transparency between its alpha and 0.  
_G.kRenderFxStrobeFast = 10
--- Very quickly switches the entitys transparency between its alpha and 0.  
_G.kRenderFxStrobeFaster = 11
--- Same as Strobe Slow, but the interval is more randomized.  
_G.kRenderFxFlickerSlow = 12
--- Same as Strobe Fast, but the interval is more randomized.  
_G.kRenderFxFlickerFast = 13
_G.kRenderFxNoDissipation = 14
--- Flickers ( randomizes ) the entitys transparency  
_G.kRenderFxDistort = 15
--- Same as Distort, but fades the entity away the farther you are from it.  
_G.kRenderFxHologram = 16
_G.kRenderFxExplode = 17
_G.kRenderFxGlowShell = 18
_G.kRenderFxClampMinScale = 19
_G.kRenderFxEnvRain = 20
_G.kRenderFxEnvSnow = 21
_G.kRenderFxSpotlight = 22
--- Is ragdoll, can be set to force an entity to create a clientside ragdoll.  
_G.kRenderFxRagdoll = 23
--- Quickly pulses the entitys transparency, from 0 to 255.  
_G.kRenderFxPulseFastWider = 24

--- Used by Entity:SetRenderFX and returned by Entity:GetRenderFX.  
--- Most of these require alpha value of entitys color to be less than 255 to have any visible effect.  
--- @alias EkRenderFx `kRenderFxNone`|`kRenderFxPulseSlow`|`kRenderFxPulseFast`|`kRenderFxPulseSlowWide`|`kRenderFxPulseFastWide`|`kRenderFxFadeSlow`|`kRenderFxFadeFast`|`kRenderFxSolidSlow`|`kRenderFxSolidFast`|`kRenderFxStrobeSlow`|`kRenderFxStrobeFast`|`kRenderFxStrobeFaster`|`kRenderFxFlickerSlow`|`kRenderFxFlickerFast`|`kRenderFxNoDissipation`|`kRenderFxDistort`|`kRenderFxHologram`|`kRenderFxExplode`|`kRenderFxGlowShell`|`kRenderFxClampMinScale`|`kRenderFxEnvRain`|`kRenderFxEnvSnow`|`kRenderFxSpotlight`|`kRenderFxRagdoll`|`kRenderFxPulseFastWider`
