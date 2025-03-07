--- @meta

--- Preserves the existing stencil buffer value.  
_G.STENCILOPERATION_KEEP = 1
--- Sets the value in the stencil buffer to 0.  
_G.STENCILOPERATION_ZERO = 2
--- Sets the value in the stencil buffer to the reference value, set using render.SetStencilReferenceValue.  
_G.STENCILOPERATION_REPLACE = 3
--- Increments the value in the stencil buffer by 1, clamping the result.  
_G.STENCILOPERATION_INCRSAT = 4
--- Decrements the value in the stencil buffer by 1, clamping the result.  
_G.STENCILOPERATION_DECRSAT = 5
--- Inverts the value in the stencil buffer.  
_G.STENCILOPERATION_INVERT = 6
--- Increments the value in the stencil buffer by 1, wrapping around on overflow.  
_G.STENCILOPERATION_INCR = 7
--- Decrements the value in the stencil buffer by 1, wrapping around on overflow.  
_G.STENCILOPERATION_DECR = 8

--- Enumerations for use with render.SetStencilPassOperation, render.SetStencilFailOperation and render.SetStencilZFailOperation. Clientside only.  
--- ℹ **NOTE**: These enumerations are also mirrored as Enums/STENCIL.  
--- Also see this corresponding MSDN entry: http://msdn.microsoft.com/en-us/library/windows/desktop/ff476219%28v=vs.85%29.aspx.  
--- @alias ESTENCILOPERATION `STENCILOPERATION_KEEP`|`STENCILOPERATION_ZERO`|`STENCILOPERATION_REPLACE`|`STENCILOPERATION_INCRSAT`|`STENCILOPERATION_DECRSAT`|`STENCILOPERATION_INVERT`|`STENCILOPERATION_INCR`|`STENCILOPERATION_DECR`
