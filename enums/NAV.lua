--- @meta

--- Error condition.  
_G.NAV_NONE = -1
--- walk/run  
_G.NAV_GROUND = 0
--- jump/leap  
_G.NAV_JUMP = 1
--- can fly, move all around  
_G.NAV_FLY = 2
--- climb ladders  
_G.NAV_CLIMB = 3

--- Used by NPC:SetNavType and NPC:GetNavType.  
--- @alias ENAV `NAV_NONE`|`NAV_GROUND`|`NAV_JUMP`|`NAV_FLY`|`NAV_CLIMB`
