--- @meta

--- @class DProperty_Float : DProperty_Generic
--- 🚷 **INTERNAL**:   
--- Float control for the DProperties panel.  
local PANEL = {}
_G.DProperty_Float = PANEL;
--- Called to poll the amount of digits after the decimal point. This is used internally for DProperty_Int.  
--- @return table @The amount of digits after the decimal point.
function PANEL:GetDecimals()
end
