--- @meta

--- **Source + Destination**  
--- Adds each channel of the Source with the same channel of the Destination.  
--- **Example:**  
--- Using the Source channels: `r=0.0`, `g=0.25`, `b=0.1`, `a=0.9`  
--- With Destination channels: `r=0.25`, `g=0.25`, `b=1.0`, `a=0.0`  
--- The final pixel channels are: `r=0.25`, `g=0.5`, `b=1.0`, `a=0.9`  
_G.BLENDFUNC_ADD = 0
--- **Source - Destination**  
--- Subtracts each channel of the Destination from the same channel of the Source.  
--- **Example:**  
--- Using the Source channels: `r=0.0`, `g=0.25`, `b=1.0`, `a=0.9`  
--- With Destination channels: `r=0.25`, `g=0.1`, `b=0.4`, `a=0.0`  
--- The final pixel channels are: `r=0.0`, `g=0.0`, `b=0.6`, `a=0.9`  
_G.BLENDFUNC_SUBTRACT = 1
--- **Destination - Source**  
--- Subtracts each channel of the Source from the same channel of the Destination.  
--- **Example:**  
--- Using the Source channels: `r=0.0`, `g=0.25`, `b=1.0`, `a=0.9`  
--- With Destination channels: `r=0.25`, `g=0.1`, `b=0.4`, `a=0.0`  
--- The final pixel channels are: `r=0.0`, `g=0.75`, `b=0.0`, `a=0.0`  
_G.BLENDFUNC_REVERSE_SUBTRACT = 2
--- **Min(Source, Destination**  
--- All of the Source channels are added together and compared to all of the Destination channels added together and the smaller of the two is used as the final pixel color.  
_G.BLENDFUNC_MIN = 3
--- **Max(Source, Destination**  
--- All of the Source channels are added together and compared to all of the Destination channels added together and the larger of the two is used as the final pixel color.  
_G.BLENDFUNC_MAX = 4

--- These enums are used by render.OverrideBlend to combine the Source and Destination color and alpha into a final pixel color after they have been multiplied by their corresponding Blend Multiplier.  
--- All results will be clamped in the range `(0-1)` and will produce final pixel channel values in the range `(0-255)`.  
--- For an interactive demonstration of how these enums behave, see [Anders Riggelsen's Visual glBlendFunc Tool here](https://www.andersriggelsen.dk/glblendfunc.php)  
--- @alias EBLENDFUNC `BLENDFUNC_ADD`|`BLENDFUNC_SUBTRACT`|`BLENDFUNC_REVERSE_SUBTRACT`|`BLENDFUNC_MIN`|`BLENDFUNC_MAX`
