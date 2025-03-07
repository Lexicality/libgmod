--- @meta

--- Not spectating  
_G.OBS_MODE_NONE = 0
--- Camera doesn't move, but adjusts camera angles to follow the spectated target  
_G.OBS_MODE_DEATHCAM = 1
--- TF2-like freezecam  
_G.OBS_MODE_FREEZECAM = 2
--- Same as OBS_MODE_CHASE, but you can't rotate the view  
_G.OBS_MODE_FIXED = 3
--- First person cam  
_G.OBS_MODE_IN_EYE = 4
--- Chase cam, 3rd person cam, free rotation around the spectated target  
_G.OBS_MODE_CHASE = 5
--- Free roam/noclip-alike. Does not work from GM:PlayerDeath  
_G.OBS_MODE_ROAMING = 6

--- Enumerations used by Player:SetObserverMode, Player:GetObserverMode and Player:Spectate.  
--- @alias EOBS_MODE `OBS_MODE_NONE`|`OBS_MODE_DEATHCAM`|`OBS_MODE_FREEZECAM`|`OBS_MODE_FIXED`|`OBS_MODE_IN_EYE`|`OBS_MODE_CHASE`|`OBS_MODE_ROAMING`
