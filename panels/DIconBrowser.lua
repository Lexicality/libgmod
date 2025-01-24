--- @meta

--- @class DIconBrowser : DScrollPanel
--- Simply a DIconLayout which automatically displays all of the Silkicons.  
--- Used as a way to get the user to select an icon.  
local PANEL = {}
_G.DIconBrowser = PANEL;
--- A simple unused search feature, hides all icons that do not contain given text in their file path.  
--- @param text string @The text to search for
function PANEL:FilterByText(text)
end

--- Returns whether or not the browser should fill itself with icons.  
--- @return boolean 
function PANEL:GetManual()
end

--- Returns the currently selected icon's file path.  
--- @return string @The currently selected icon's file path.
function PANEL:GetSelectedIcon()
end

--- Called when the selected icon was changed. Use DIconBrowser:GetSelectedIcon to get the selected icon's filepath.  
function PANEL:OnChange()
end

--- Scrolls the browser to the selected icon  
function PANEL:ScrollToSelected()
end

--- Selects an icon from file path  
--- @param icon string @The file path of the icon to select
function PANEL:SelectIcon(icon)
end

--- Sets whether or not the browser should automatically fill itself with icons.  
--- @param manual boolean 
function PANEL:SetManual(manual)
end
