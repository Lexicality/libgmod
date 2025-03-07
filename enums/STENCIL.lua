--- @meta

--- Never passes.  
_G.STENCIL_NEVER = 1
--- Passes where the reference value is less than the stencil value.  
_G.STENCIL_LESS = 2
--- Passes where the reference value is equal to the stencil value.  
_G.STENCIL_EQUAL = 3
--- Passes where the reference value is less than or equal to the stencil value.  
_G.STENCIL_LESSEQUAL = 4
--- Passes where the reference value is greater than the stencil value.  
_G.STENCIL_GREATER = 5
--- Passes where the reference value is not equal to the stencil value.  
_G.STENCIL_NOTEQUAL = 6
--- Passes where the reference value is greater than or equal to the stencil value.  
_G.STENCIL_GREATEREQUAL = 7
--- Always passes.  
_G.STENCIL_ALWAYS = 8
--- Preserves the existing stencil buffer value.  
_G.STENCIL_KEEP = 1
--- Sets the value in the stencil buffer to 0.  
_G.STENCIL_ZERO = 2
--- Sets the value in the stencil buffer to the reference value, set using render.SetStencilReferenceValue.  
_G.STENCIL_REPLACE = 3
--- Increments the value in the stencil buffer by 1, clamping the result.  
_G.STENCIL_INCRSAT = 4
--- Decrements the value in the stencil buffer by 1, clamping the result.  
_G.STENCIL_DECRSAT = 5
--- Inverts the value in the stencil buffer.  
_G.STENCIL_INVERT = 6
--- Increments the value in the stencil buffer by 1, wrapping around on overflow.  
_G.STENCIL_INCR = 7
--- Decrements the value in the stencil buffer by 1, wrapping around on overflow.  
_G.STENCIL_DECR = 8

--- Enumerations for use with render.SetStencilCompareFunction.  
--- The comparison is between the reference value set by render.SetStencilReferenceValue, and the value of each pixel in the stencil buffer.  
--- These enumerations are mirrors of Enums/STENCILCOMPARISONFUNCTION.  
--- Also see this corresponding MSDN entry: https://msdn.microsoft.com/en-us/library/windows/desktop/ff476101%28v=vs.85%29.aspx.  
--- @alias ESTENCIL `STENCIL_NEVER`|`STENCIL_LESS`|`STENCIL_EQUAL`|`STENCIL_LESSEQUAL`|`STENCIL_GREATER`|`STENCIL_NOTEQUAL`|`STENCIL_GREATEREQUAL`|`STENCIL_ALWAYS`|`STENCIL_KEEP`|`STENCIL_ZERO`|`STENCIL_REPLACE`|`STENCIL_INCRSAT`|`STENCIL_DECRSAT`|`STENCIL_INVERT`|`STENCIL_INCR`|`STENCIL_DECR`
