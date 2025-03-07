--- @meta

--- The Multiplier will be `r=0`, `g=0`, `b=0`, `a=0`  
--- This is useful for removing the Source or Destination from the final pixel color.  
_G.BLEND_ZERO = 0
--- The Multiplier will be `r=1`, `g=1`, `b=1`, `a=1`  
--- This is useful for keeping the Source or Destination as their starting values.  
_G.BLEND_ONE = 1
--- The Multiplier will be the same as the Destination color and alpha.  
_G.BLEND_DST_COLOR = 2
--- Each color and alpha channel value of the Destination is subtracted from `1`.  
--- **Example:**  
--- If your Destination channels are: `r=1`, `g=0.25`, `b=0.1`, `a=1`  
--- They will be modified by: `r=1-1`, `g=1-0.25`, `b=1-0.1`, `a=1-1`  
--- The final Multiplier value will be: `r=0`, `g=0.75`, `b=0.9`, `a=0`  
_G.BLEND_ONE_MINUS_DST_COLOR = 3
--- All color and alpha channels will be the same as the Source alpha value.  
--- **Example:**  
--- If your Source channels are: `r=0.1`, `g=0`, `b=1`, `a=0.5`  
--- The final Multiplier value will be: `r=0.5`, `g=0.5`, `b=0.5`, `a=0.5`  
_G.BLEND_SRC_ALPHA = 4
--- All color and alpha channels will be set to the Source alpha value subtracted from `1`.  
--- **Example:**  
--- If your Source channels are: `r=0`, `g=0.23`, `b=1`, `a=0.6`  
--- The alpha channel will be modified by `a=1-0.6`  
--- The final Multiplier value will be: `r=0.4`, `g=0.4`, `b=0.4`, `a=0.4`  
_G.BLEND_ONE_MINUS_SRC_ALPHA = 5
--- All color and alpha channels will be set to the the Destination alpha value.  
--- **Example:**  
--- If your Destination channels are: `r=0.1`, `g=0`, `b=1`, `a=0.5`  
--- The final Multiplier value will be: `r=0.5`, `g=0.5`, `b=0.5`, `a=0.5`  
_G.BLEND_DST_ALPHA = 6
--- All color and alpha channels will be set to the Destination alpha value subtracted from `1`.  
--- **Example:**  
--- If your Destination channels are: `r=0`, `g=0.23`, `b=1`, `a=0.6`  
--- The alpha channel will be modified by `a=1-0.6`  
--- The final Multiplier value will be: `r=0.4`, `g=0.4`, `b=0.4`, `a=0.4`  
_G.BLEND_ONE_MINUS_DST_ALPHA = 7
--- First, the Source alpha is compared against the Destination alpha value subtracted from `1` and the smaller of the two is kept.  
--- Then, the Source color channels are multiplied by the value from the first step.  
--- The Source alpha channel is multiplied by `1`.  
--- **Example:**  
--- If your Source channels are: `r=1`, `g=0.25`, `b=0.1`, `a=0.6`  
--- and your Destination channels are: `r=0`, `g=1`, `b=0.5`, `a=0.75`  
--- The Destination alpha value subtracted from `1` is calculated: `1-0.75` = `0.25`  
--- The Source alpha `0.6` is compared to the subtracted Destination alpha `0.25` and the smaller of the two is kept (`0.25`)  
--- The color channels of the Source are multiplied by the smaller value: `r=1*0.25`, `g=0.25*0.25`, `b=0.1*0.25`  
--- The final Multiplier value will be `r=0.25`, `g=0.0625`, `b=0.025`, `a=0.6`  
_G.BLEND_SRC_ALPHA_SATURATE = 8
--- The Multiplier will be the same as the Source color and alpha.  
_G.BLEND_SRC_COLOR = 9
--- Each color and alpha channel value of the Source is subtracted from `1`.  
--- **Example:**  
--- If your Source channels are: `r=1`, `g=0.25`, `b=0.1`, `a=1`  
--- They will be modified by: `r=1-1`, `g=1-0.25`, `b=1-0.1`, `a=1-1`  
--- The final Multiplier value will be: `r=0`, `g=0.75`, `b=0.9`, `a=0`  
_G.BLEND_ONE_MINUS_SRC_COLOR = 10

--- These enums are used by render.OverrideBlend to determine what the Source and Destination color and alpha channel values for a given pixel will be multiplied by before they are sent to the Blend Function to calculate the pixel's final color during draw operations.  
--- For an interactive demonstration of how these enums behave, see [Anders Riggelsen's Visual glBlendFunc Tool here](https://www.andersriggelsen.dk/glblendfunc.php)  
--- <upload src="19952/8d96354db95acb4.png" size="573673" name="image.png">  
--- </upload>  
--- @alias EBLEND `BLEND_ZERO`|`BLEND_ONE`|`BLEND_DST_COLOR`|`BLEND_ONE_MINUS_DST_COLOR`|`BLEND_SRC_ALPHA`|`BLEND_ONE_MINUS_SRC_ALPHA`|`BLEND_DST_ALPHA`|`BLEND_ONE_MINUS_DST_ALPHA`|`BLEND_SRC_ALPHA_SATURATE`|`BLEND_SRC_COLOR`|`BLEND_ONE_MINUS_SRC_COLOR`
