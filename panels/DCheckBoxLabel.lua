--- @meta

--- @class DCheckBoxLabel : DPanel
--- The **DCheckBoxLabel** is a DCheckBox with a DLabel next to it.  
--- It allows you to get a boolean value from the user (true/false - yes/no)  
local PANEL = {}
_G.DCheckBoxLabel = PANEL;
--- Gets the checked state of the checkbox. This calls the checkbox's DCheckBox:GetChecked function.  
--- @return boolean @Whether the box is checked or not.
function PANEL:GetChecked()
end

--- An Global.AccessorFunc that gets the indentation of the element on the X axis. See also DCheckBoxLabel:SetIndent  
--- @return number @How much the content is moved to the right in pixels
function PANEL:GetIndent()
end

--- Called when the "checked" state is changed. This is meant to be Overriden  
--- @param bVal boolean @Whether the checkbox is checked or unchecked.
function PANEL:OnChange(bVal)
end

--- Sets the color of the DCheckBoxLabel's text to the bright text color defined in the skin.  
--- @param bright boolean @true makes the text bright.
function PANEL:SetBright(bright)
end

--- Sets the checked state of the checkbox. Does not call DCheckBoxLabel:OnChange or Panel:ConVarChanged, unlike DCheckBoxLabel:SetValue.  
--- @param checked boolean @Whether the box should be checked or not.
function PANEL:SetChecked(checked)
end

--- Sets the console variable to be set when the checked state of the DCheckBoxLabel changes.  
--- @param convar string @The name of the convar to set
function PANEL:SetConVar(convar)
end

--- Sets the text of the DCheckBoxLabel to be dark colored in accordance with the currently active Derma skin.  
--- @param darkify boolean @True to be dark, false to be default
function PANEL:SetDark(darkify)
end

--- Sets the font of the text part of the DCheckBoxLabel.  
--- @param font string @Font name
function PANEL:SetFont(font)
end

--- An Global.AccessorFunc that sets the indentation of the element on the X axis.  
--- @param ident number @How much in pixels to move the content to the right
function PANEL:SetIndent(ident)
end

--- Sets the text color for the DCheckBoxLabel.  
--- @param color table @The text color
function PANEL:SetTextColor(color)
end

--- Sets the checked state of the checkbox, and calls DCheckBoxLabel:OnChange and the checkbox's Panel:ConVarChanged methods.  
--- @param checked boolean @Whether the box should be checked or not (1 or 0 can also be used).
function PANEL:SetValue(checked)
end

--- Sizes the panel to the size of the internal DLabel and DButton  
function PANEL:SizeToContents()
end

--- Toggles the checked state of the DCheckBoxLabel.  
function PANEL:Toggle()
end
