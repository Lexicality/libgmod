--- @meta

--- @class DProperty_Combo : DProperty_Generic
--- 🚷 **INTERNAL**:   
--- DComboBox control for a DProperties panel.  
local PANEL = {}
_G.DProperty_Combo = PANEL;
--- Add a choice to your combo control.  
--- @param Text string @Shown text.
--- @param data any @Stored Data.
--- @param select? boolean @Select this element?
function PANEL:AddChoice(Text, data, select)
end

--- Called after the user selects a new value.  
--- @param data any @The new data that was selected.
function PANEL:DataChanged(data)
end

--- Set the selected option.  
--- @param Id number @Id of the choice to be selected.
function PANEL:SetSelected(Id)
end
