--- @meta

--- Instant fade in, slowly fade out (based on fade time given) after the hold time has passed  
_G.SCREENFADE.IN = 1
--- Slowly fade in (based on fade time given), hold time passes, instantly disappear  
_G.SCREENFADE.OUT = 2
--- Instead of blending multiple active screen fades, modulate them. (TODO: What does this mean?) Internally this flag switches what material will be used to render the screen fade. Practically it forces the color to black.  
_G.SCREENFADE.MODULATE = 4
--- Never disappear. Does nothing by itself, as if no flags were given.  
_G.SCREENFADE.STAYOUT = 8
--- Used to purge all currently active screen fade effects, meant to be used in conjunction with flags above as a "priority effect".  
--- Does nothing by itself, acts as if no flags were given  
_G.SCREENFADE.PURGE = 16

--- Bitflags used by Player:ScreenFade.  
--- @alias ESCREENFADE `SCREENFADE.IN`|`SCREENFADE.OUT`|`SCREENFADE.MODULATE`|`SCREENFADE.STAYOUT`|`SCREENFADE.PURGE`
