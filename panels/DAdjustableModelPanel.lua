--- @meta

--- @class DAdjustableModelPanel : DModelPanel
--- A derivative of the DModelPanel in which the user may modify the perspective of the model with their mouse and keyboard by clicking and dragging.  
--- The keyboard keys `W` `S` `A` `D` `Up` `Down` `Left` `Right` `Space` and `Ctrl` can be used when the right mouse is held down, with `Shift` acting as a speed multiplier. When the left mouse is used, the Shift key holds the current `y` angle steady.  
--- This is used by IconEditor for modifying spawn icons.  
local PANEL = {}
_G.DAdjustableModelPanel = PANEL;
--- Gets whether mouse and keyboard-based adjustment of the perspective has been enabled. See DAdjustableModelPanel:SetFirstPerson for more information.  
--- This is an Global.AccessorFunc  
--- @return boolean @Whether first person controls are enabled
function PANEL:GetFirstPerson()
end

--- Returns the movement speed multiplier set by DAdjustableModelPanel:SetMovementScale.  
--- An Global.AccessorFunc  
--- @return number @The movement scale, where `1` is normal, `2` is double, etc.
function PANEL:GetMovementScale()
end

--- Enables mouse and keyboard-based adjustment of the perspective.  
--- This is set to `true` automatically each time mouse capture is enabled, and hence doesn't serve as a usable setting, other than to disable this functionality after the PANEL:OnMousePressed event.  
--- An Global.AccessorFunc  
--- @param enable boolean @Whether to enable/disable first person controls
function PANEL:SetFirstPerson(enable)
end

--- Sets the movement speed multiplier. Currently this only affects first person camera controls.  
--- @param arg number @The movement scale, where `1` is normal, `2` is double, etc.
function PANEL:SetMovementScale(arg)
end
