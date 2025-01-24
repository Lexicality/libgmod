--- @meta

--- @class DSlider : GPanel
--- Creates a slider that can be moved along the X and/or Y axis  
local PANEL = {}
_G.DSlider = PANEL;
--- Identical to DSlider:IsEditing  
--- @return boolean 
function PANEL:GetDragging()
end

--- Returns the draggable panel's lock on the X axis.  
--- See DSlider:SetLockX for more info.  
--- @return number 
function PANEL:GetLockX()
end

--- Returns the draggable panel's lock on the Y axis.  
--- See DSlider:SetLockY for more info.  
--- @return number 
function PANEL:GetLockY()
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Does not affect anything by default.  
--- Returns the current notch color, set by DSlider:SetNotchColor  
--- @return GColor @The current color
function PANEL:GetNotchColor()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Appears to be non functioning, however is still used by panels such as DNumSlider.  
--- @return number 
function PANEL:GetNotches()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @return any 
function PANEL:GetNumSlider()
end

--- Returns the target position of the draggable "knob" panel of the slider on the X axis.  
--- Set by DSlider:SetSlideX.  
--- @return number @The value range seems to be from 0 to 1
function PANEL:GetSlideX()
end

--- Returns the target position of the draggable "knob" panel of the slider on the Y axis.  
--- Set by DSlider:SetSlideY.  
--- @return number @The value range seems to be from 0 to 1
function PANEL:GetSlideY()
end

--- Returns the value set by DSlider:SetTrapInside.  
--- @return boolean 
function PANEL:GetTrapInside()
end

--- Returns true if this element is being edited by the player.  
--- @return boolean 
function PANEL:IsEditing()
end

--- Called when the values of this slider panel were changed.  
--- @param x number @The X axis position of the slider in range 0-1
--- @param y number @The Y axis position of the slider in range 0-1
function PANEL:OnValueChanged(x, y)
end

--- This function is called by the DSlider when user middle mouse clicks on the draggable knob of the slider.  
--- You are meant to override this function to do reset the slider to desired defaults on both axes.  
--- By default, will reset the slider to `0.5` on both axes.  
function PANEL:ResetToDefaultValue()
end

--- Sets the background for the slider.  
--- @param path string @Path to the image.
function PANEL:SetBackground(path)
end

--- Sets the ConVar to be set when the slider changes on the X axis.  
--- @param convar string @Name of the convar to set.
function PANEL:SetConVarX(convar)
end

--- Sets the ConVar to be set when the slider changes on the Y axis.  
--- @param convar string @Name of the convar to set.
function PANEL:SetConVarY(convar)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
function PANEL:SetImage()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
function PANEL:SetImageColor()
end

--- Sets the lock on the X axis.  
--- For example the value 0.5 will lock the draggable panel to half the width of the slider's panel.  
--- @param lockX? number @Set to nil to reset lock
function PANEL:SetLockX(lockX)
end

--- Sets the lock on the Y axis.  
--- For example the value 0.5 will lock the draggable panel to half the height of the slider's panel.  
--- @param lockY? number @Set to nil to reset lock
function PANEL:SetLockY(lockY)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: Does not affect anything by default.  
--- Sets the current notch color, overriding the color set by the derma skin.  
--- @param clr GColor @The new color to set
function PANEL:SetNotchColor(clr)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Appears to be non functioning, however is still used by panels such as DNumSlider.  
--- @param notches number 
function PANEL:SetNotches(notches)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @param slider any 
function PANEL:SetNumSlider(slider)
end

--- Used to position the draggable panel of the slider on the X axis.  
--- @param x number @The value range seems to be from 0 to 1
function PANEL:SetSlideX(x)
end

--- Used to position the draggable panel of the slider on the Y axis.  
--- @param y number @The value range seems to be from 0 to 1
function PANEL:SetSlideY(y)
end

--- Makes the slider itself, the "knob", trapped within the bounds of the slider panel. Example:  
--- <upload src="70c/8dafb0260022da3.png" size="6257" name="image.png">  
--- </upload>  
--- @param trap boolean 
function PANEL:SetTrapInside(trap)
end

--- For override by child panels, such as DNumSlider. Allows changing the output values of the slider.  
--- @param x number @The input X coordinate, in range of 0-1.
--- @param y number @The input Y coordinate, in range of 0-1.
--- @return number @The output X coordinate, in range of 0-1.
--- @return number @The output X coordinate, in range of 0-1.
function PANEL:TranslateValues(x, y)
end
