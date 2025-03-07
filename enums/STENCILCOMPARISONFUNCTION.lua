--- @meta

--- Never passes.  
_G.STENCILCOMPARISONFUNCTION_NEVER = 1
--- Passes where the reference value is less than the stencil value.  
_G.STENCILCOMPARISONFUNCTION_LESS = 2
--- Passes where the reference value is equal to the stencil value.  
_G.STENCILCOMPARISONFUNCTION_EQUAL = 3
--- Passes where the reference value is less than or equal to the stencil value.  
_G.STENCILCOMPARISONFUNCTION_LESSEQUAL = 4
--- Passes where the reference value is greater than the stencil value.  
_G.STENCILCOMPARISONFUNCTION_GREATER = 5
--- Passes where the reference value is not equal to the stencil value.  
_G.STENCILCOMPARISONFUNCTION_NOTEQUAL = 6
--- Passes where the reference value is greater than or equal to the stencil value.  
_G.STENCILCOMPARISONFUNCTION_GREATEREQUAL = 7
--- Always passes.  
_G.STENCILCOMPARISONFUNCTION_ALWAYS = 8

--- Enumerations for use with render.SetStencilCompareFunction.  
--- The comparison is between the reference value set by render.SetStencilReferenceValue, and the value of each pixel in the stencil buffer.  
--- Clientside only.  
--- ℹ **NOTE**: These enumerations are also mirrored as Enums/STENCIL.  
--- Also see this corresponding MSDN entry: http://msdn.microsoft.com/en-us/library/windows/desktop/ff476101%28v=vs.85%29.aspx.  
--- @alias ESTENCILCOMPARISONFUNCTION `STENCILCOMPARISONFUNCTION_NEVER`|`STENCILCOMPARISONFUNCTION_LESS`|`STENCILCOMPARISONFUNCTION_EQUAL`|`STENCILCOMPARISONFUNCTION_LESSEQUAL`|`STENCILCOMPARISONFUNCTION_GREATER`|`STENCILCOMPARISONFUNCTION_NOTEQUAL`|`STENCILCOMPARISONFUNCTION_GREATEREQUAL`|`STENCILCOMPARISONFUNCTION_ALWAYS`
