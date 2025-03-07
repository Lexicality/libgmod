--- @meta

--- Fade out after the hold time has passed  
_G.SCREENFADE.IN = 1
--- Fade in, hold time passes, disappear  
_G.SCREENFADE.OUT = 2
--- With white color, turns the screen black  
_G.SCREENFADE.MODULATE = 4
--- No effects, never disappear  
_G.SCREENFADE.STAYOUT = 8
--- Appear, Disappear, no effects  
_G.SCREENFADE.PURGE = 16

--- Enumerations used by Player:ScreenFade.  
--- @alias ESCREENFADE `SCREENFADE.IN`|`SCREENFADE.OUT`|`SCREENFADE.MODULATE`|`SCREENFADE.STAYOUT`|`SCREENFADE.PURGE`
