--- @meta

--- @class DMenuOption : DButton
--- 🚷 **INTERNAL**:   
--- Internal subpanel that represents an option used by DMenu.  
local PANEL = {}
_G.DMenuOption = PANEL;
--- Creates a sub DMenu and returns it. Has no duplicate call protection.  
--- @return GPanel @The created DMenu to add options to.
function PANEL:AddSubMenu()
end

--- Returns the checked state of DMenuOption.  
--- @return boolean @Are we checked or not
function PANEL:GetChecked()
end

--- Returns whether the DMenuOption is a checkbox option or a normal button option.  
--- @return boolean 
function PANEL:GetIsCheckable()
end

--- Returns which DMenu this option belongs.  
--- @return GPanel @A DMenu to which this panel belongs.
function PANEL:GetMenu()
end

--- Returns whether this DMenuOption should act like a radio button, set by DMenuOption:SetRadio.  
--- @return boolean @`true` to set as a radio button.
function PANEL:GetRadio()
end

--- Called whenever the DMenuOption's checked state changes.  
--- @param checked boolean @The new checked state
function PANEL:OnChecked(checked)
end

--- Sets the checked state of the DMenuOption.  
--- Invokes DMenuOption:OnChecked.  
--- @param checked boolean @`true` to set as checked.
function PANEL:SetChecked(checked)
end

--- Sets whether the DMenuOption is a checkbox option or a normal button option.  
--- Enables automatic DMenuOption:GetChecked toggling with left/right clicks.  
--- @param checkable boolean @Whether the menu option should allow the player to toggle itself.
function PANEL:SetIsCheckable(checkable)
end

--- Sets whether this DMenuOption should act like a radio button.  
--- Checking a radio button automatically unchecks all adjacent radio buttons.  
--- @param checked boolean @`true` to set as a radio button.
function PANEL:SetRadio(checked)
end

--- Toggles the checked state of DMenuOption. Does not respect DMenuOption:GetIsCheckable.  
function PANEL:ToggleCheck()
end
