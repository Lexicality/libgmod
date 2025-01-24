--- @meta

--- @class DCheckBox : DButton
--- The DCheckBox is a checkbox. It allows you to get a boolean value from the user (true/false - yes/no)  
local PANEL = {}
_G.DCheckBox = PANEL;
--- Calls DCheckBox:Toggle  
function PANEL:DoClick()
end

--- An Global.AccessorFunc that gets the checked state of the checkbox.  
--- @return boolean @Whether the box is checked or not.
function PANEL:GetChecked()
end

--- Returns whether the state of the checkbox is being edited. This means whether the user is currently clicking (mouse-down) on the checkbox, and applies to both the left and right mouse buttons.  
--- @return boolean @Whether the checkbox is being clicked.
function PANEL:IsEditing()
end

--- Called when the "checked" state is changed. This is for Overriding  
--- @param bVal boolean @Whether the CheckBox is checked or not.
function PANEL:OnChange(bVal)
end

--- An Global.AccessorFunc that sets the checked state of the checkbox. Does not call the checkbox's DCheckBox:OnChange and Panel:ConVarChanged methods, unlike DCheckBox:SetValue.  
--- @param checked boolean @Whether the box should be checked or not.
function PANEL:SetChecked(checked)
end

--- Sets the checked state of the checkbox, and calls the checkbox's DCheckBox:OnChange and Panel:ConVarChanged methods.  
--- @param checked boolean @Whether the box should be checked or not.
function PANEL:SetValue(checked)
end

--- Toggles the checked state of the checkbox, and calls the checkbox's DCheckBox:OnChange and Panel:ConVarChanged methods. DCheckBox:DoClick is an alias of this function.  
function PANEL:Toggle()
end
