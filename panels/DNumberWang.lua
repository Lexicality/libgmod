--- @meta

--- @class DNumberWang : DTextEntry
--- DNumberWang is a VGUI element that allows you to input a numeric value using up and down arrows or direct entry.  
local PANEL = {}
_G.DNumberWang = PANEL;
--- Returns the amount of decimal places allowed in the number selector, set by DNumberWang:SetDecimals  
--- @return number @The amount of decimal places allowed in the number selector.
function PANEL:GetDecimals()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Returns whatever is set by DNumberWang:SetFloatValue or 0.  
--- @return number 
function PANEL:GetFloatValue()
end

--- Returns a fraction representing the current number selector value to number selector min/max range ratio. If argument `val` is supplied, that number will be computed instead.  
--- @param val number @The fraction numerator.
function PANEL:GetFraction(val)
end

--- Returns interval at which the up and down buttons change the current value.  
--- @return number @The current interval.
function PANEL:GetInterval()
end

--- Returns the maximum numeric value allowed by the number selector.  
--- @return number @The maximum value.
function PANEL:GetMax()
end

--- Returns the minimum numeric value allowed by the number selector.  
--- @return number @The minimum number.
function PANEL:GetMin()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- This function returns the panel it is used on.  
--- @return GPanel @self
function PANEL:GetTextArea()
end

--- Returns the numeric value inside the number selector.  
--- @return number @The numeric value.
function PANEL:GetValue()
end

--- Hides the number selector arrows.  
function PANEL:HideWang()
end

--- Called when the number selector value is changed.  
--- @param val number @The new value of the number selector.
function PANEL:OnValueChanged(val)
end

--- Sets the amount of decimal places allowed in the number selector.  
--- @param num number @The amount of decimal places.
function PANEL:SetDecimals(num)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Appears to do nothing.  
--- @param val number 
function PANEL:SetFloatValue(val)
end

--- Sets the value of the number selector based on the given fraction number.  
--- @param val number @The fraction of the number selector's range.
function PANEL:SetFraction(val)
end

--- Sets interval at which the up and down buttons change the current value.  
--- @param min number @The new interval.
function PANEL:SetInterval(min)
end

--- Sets the maximum numeric value allowed by the number selector.  
--- @param max number @The maximum value.
function PANEL:SetMax(max)
end

--- Sets the minimum numeric value allowed by the number selector.  
--- @param min number @The minimum value.
function PANEL:SetMin(min)
end

--- Sets the minimum and maximum value allowed by the number selector.  
--- @param min number @The minimum value.
--- @param max number @The maximum value.
function PANEL:SetMinMax(min, max)
end

--- Sets the value of the DNumberWang and triggers DNumberWang:OnValueChanged  
--- @param val number @The value to set.
function PANEL:SetValue(val)
end
