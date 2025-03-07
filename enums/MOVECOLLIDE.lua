--- @meta

--- Default behavior  
_G.MOVECOLLIDE_DEFAULT = 0
--- Entity bounces, reflects, based on elasticity of surface and object - applies friction (adjust velocity)  
_G.MOVECOLLIDE_FLY_BOUNCE = 1
--- ENTITY:Touch will modify the velocity however it likes  
_G.MOVECOLLIDE_FLY_CUSTOM = 2
--- Entity slides along surfaces (no bounce) - applies friciton (adjusts velocity)  
_G.MOVECOLLIDE_FLY_SLIDE = 3
--- Number of different movecollides  
_G.MOVECOLLIDE_COUNT = 4

--- Enumerations used by Entity:SetMoveCollide and Entity:GetMoveCollide.  
--- @alias EMOVECOLLIDE `MOVECOLLIDE_DEFAULT`|`MOVECOLLIDE_FLY_BOUNCE`|`MOVECOLLIDE_FLY_CUSTOM`|`MOVECOLLIDE_FLY_SLIDE`|`MOVECOLLIDE_COUNT`
