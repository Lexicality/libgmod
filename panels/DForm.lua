--- @meta

--- @class DForm : DCollapsibleCategory
--- An easy form with functions to quickly add form elements  
local PANEL = {}
_G.DForm = PANEL;
--- Adds one or two items to the DForm.  
--- If this method is called with only one argument, it is added to the bottom of the form. If two arguments are passed, they are placed side-by-side at the bottom of the form.  
--- Internally, this function is used by the various DForm functions to, for example, add labels to the left of buttons.  
--- @param left GPanel @Left-hand element to add to the DForm.
--- @param right? GPanel @Right-hand element to add to the DForm.
function PANEL:AddItem(left, right)
end

--- Adds a DButton onto the DForm  
--- @param text string @The text on the button
--- @param concommand string @The concommand to run when the button is clicked
--- @vararg any @The arguments to pass on to the concommand when the button is clicked
--- @return GPanel @The created DButton
function PANEL:Button(text, concommand, ...)
end

--- Adds a DCheckBoxLabel onto the DForm.  
--- ℹ **NOTE**: This will run DCheckBoxLabel:OnChange when being added. This is caused by Panel:SetConVar being used when this function is used. To avoid this, use DForm:AddItem with a DCheckBoxLabel.  
--- @param label string @The label to be set next to the check box
--- @param convar string @The console variable to change when this is changed
--- @return GPanel @The created DCheckBoxLabel
function PANEL:CheckBox(label, convar)
end

--- Adds a DComboBox onto the DForm  
--- @param title string @Text to the left of the combo box
--- @param convar string @Console variable to change when the user selects something from the dropdown.
--- @return GPanel @The created DComboBox
--- @return GPanel @The created DLabel
function PANEL:ComboBox(title, convar)
end

--- Adds a DLabel onto the DForm. Unlike DForm:Help, this is indented and is colored blue, depending on the derma skin.  
--- @param help string @The help message to be displayed.
--- @return GPanel @The created DLabel
function PANEL:ControlHelp(help)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- An Accessor Function in DForm that does nothing.  
--- @return boolean 
function PANEL:GetAutoSize()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- An Global.AccessorFunc that does nothing.  
--- @return number 
function PANEL:GetSpacing()
end

--- Adds a DLabel onto the DForm as a helper  
--- @param help string @The help message to be displayed
--- @return GPanel @The created DLabel
function PANEL:Help(help)
end

--- Adds a DListBox onto the DForm  
--- @deprecated  
--- 🛑 **DEPRECATED**: Use DListView with DForm:AddItem instead.  
--- @param label string @The label to set on the DListBox
--- @return GPanel @The created DListBox
--- @return GPanel @The created DLabel
function PANEL:ListBox(label)
end

--- Adds a DNumSlider onto the DForm  
--- @param label string @The label of the DNumSlider
--- @param convar string @The console variable to change when the slider is changed
--- @param min number @The minimum value of the slider
--- @param max number @The maximum value of the slider
--- @param decimals? number @The number of decimals to allow on the slider
--- @return GPanel @The created DNumSlider
function PANEL:NumSlider(label, convar, min, max, decimals)
end

--- Adds a DNumberWang onto the DForm  
--- @param label string @The label to be placed next to the DNumberWang
--- @param convar string @The console variable to change when the slider is changed
--- @param min number @The minimum value of the slider
--- @param max number @The maximum value of the slider
--- @param decimals? number @The number of decimals to allow in the slider (Optional)
--- @return GPanel @The created DNumberWang
--- @return GPanel @The created DLabel
function PANEL:NumberWang(label, convar, min, max, decimals)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: This is derived from the deprecated DPanelSelect.  
--- Creates a DPanelSelect and docks it to the top of the DForm.  
--- @return GPanel @The created DPanelSelect.
function PANEL:PanelSelect()
end

--- Creates a PropSelect panel and docks it to the top of the DForm.  
--- @param label string @The label to display above the prop select.
--- @param convar string @The convar to set the selected model to.
--- @param models table @A table of models to display for selection
--- @param height? number @The height of the prop select panel, in 64px icon increments.
--- @return GPanel @The created PropSelect panel.
function PANEL:PropSelect(label, convar, models, height)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
function PANEL:Rebuild()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- an Global.AccessorFunc that does nothing  
--- @param arg boolean 
function PANEL:SetAutoSize(arg)
end

--- Sets the title (header) name of the DForm. This is `Label` until set.  
--- @deprecated  
--- 🛑 **DEPRECATED**: This is an alias of derived DCollapsibleCategory:SetLabel  
--- @param name string @The new header name.
function PANEL:SetName(name)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- An Global.AccessorFunc that does nothing.  
--- @param arg number 
function PANEL:SetSpacing(arg)
end

--- Adds a DTextEntry to a DForm  
--- @param label string @The label to be next to the text entry
--- @param convar string @The console variable to be changed when the text entry is changed
--- @return GPanel @The created DTextEntry
--- @return GPanel @The created DLabel
function PANEL:TextEntry(label, convar)
end
