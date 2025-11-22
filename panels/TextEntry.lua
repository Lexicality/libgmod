--- @meta

--- @class VTextEntry : GPanel
--- Basic text input field.  
--- See DTextEntry for a more advanced version.  
local PANEL = {}
--- Called from engine whenever a valid character is typed while the text entry is focused.  
--- Used internally for functionality of DTextEntry  
--- @param keyCode number @They key code of the key pressed, see Enums/KEY.
--- @return boolean @Whether you've handled the key press
function PANEL:OnKeyCodeTyped(keyCode)
end

--- Called when the text inside the TextEntry changes.  
--- You may be looking for DTextEntry:OnValueChange instead.  
function PANEL:OnTextChanged()
end
