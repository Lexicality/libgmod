--- @meta

--- @class DCollapsibleCategory : GPanel
--- The collapsible category allows you to create numerous sections of controls, and have the ability to contract/expand them.  
--- Consider using DCategoryList if you plan on using more than 1 of these.  
local PANEL = {}
_G.DCollapsibleCategory = PANEL;
--- Adds a new text button to the collapsible category, like the tool menu in Spawnmenu.  
--- @param name string @The name of the button
--- @return GPanel @The DButton
function PANEL:Add(name)
end

--- Forces the category to open or collapse  
--- @param expand boolean @True to open, false to collapse
function PANEL:DoExpansion(expand)
end

--- An Global.AccessorFunc that returns the expand/collapse animation time set by DCollapsibleCategory:SetAnimTime.  
--- @return number @The animation time in seconds
function PANEL:GetAnimTime()
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use DCollapsibleCategory:GetPaintBackground instead.  
--- Returns whether or not the panel background is being drawn. Alias of DCollapsibleCategory:GetPaintBackground.  
--- @return boolean @True if the panel background is drawn, false otherwise.
function PANEL:GetDrawBackground()
end

--- Returns whether the DCollapsibleCategory is expanded or not.  
--- @return boolean @If expanded it will return true.
function PANEL:GetExpanded()
end

--- Returns the header height of the DCollapsibleCategory.  
--- See also DCollapsibleCategory:SetHeaderHeight.  
--- @return number @The current height of the header.
function PANEL:GetHeaderHeight()
end

--- If set, the DCategoryList that created this panel.  
--- See also DCollapsibleCategory:SetList.  
--- @return GPanel @The DCategoryList that created us.
function PANEL:GetList()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Doesn't actually do anything.  
--- Returns the number set by DCollapsibleCategory:SetPadding.  
--- @return number 
function PANEL:GetPadding()
end

--- An Global.AccessorFunc that returns whether or not the background should be painted.  
--- @return boolean @If the background is painted or not
function PANEL:GetPaintBackground()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Returns whatever was set by DCollapsibleCategory:SetStartHeight  
--- @return number 
function PANEL:GetStartHeight()
end

--- Called by DCollapsibleCategory:Toggle. This function does nothing by itself, as you're supposed to overwrite it.  
--- @param expanded boolean @If it was expanded or not
function PANEL:OnToggle(expanded)
end

--- Sets the time in seconds it takes to expand the DCollapsibleCategory  
--- @param time number @The time in seconds it takes to expand
function PANEL:SetAnimTime(time)
end

--- Sets the contents of the DCollapsibleCategory.  
--- @param pnl GPanel @The panel, containing the contents for the DCollapsibleCategory, mostly an DScrollPanel
function PANEL:SetContents(pnl)
end

--- @deprecated  
--- 🛑 **DEPRECATED**: You should use DCollapsibleCategory:SetPaintBackground instead.  
--- Sets whether or not to draw the panel background. Alias of DCollapsibleCategory:SetPaintBackground.  
--- @param draw boolean @True to show the panel's background, false to hide it.
function PANEL:SetDrawBackground(draw)
end

--- Sets whether the DCollapsibleCategory is expanded or not upon opening the container.  
--- You should use DCollapsibleCategory:Toggle or DCollapsibleCategory:DoExpansion instead.  
--- @param expanded? boolean @Whether it shall be expanded or not by default
function PANEL:SetExpanded(expanded)
end

--- Sets the header height of the DCollapsibleCategory.  
--- See also DCollapsibleCategory:GetHeaderHeight.  
--- @param height number @The new height to set
function PANEL:SetHeaderHeight(height)
end

--- Sets the name of the DCollapsibleCategory.  
--- @param label string @The label/name of the DCollapsibleCategory.
function PANEL:SetLabel(label)
end

--- Used internally by DCategoryList when it creates a DCollapsibleCategory during DCategoryList:Add.  
--- If set, Panel:UnselectAll will be called on the list, instead of calling it on the category panel itself when a category is clicked.  
--- @param pnl GPanel @The Panel:UnselectAll that is the "parent" of this panel.
function PANEL:SetList(pnl)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Doesn't actually do anything.  
--- @param padding number 
function PANEL:SetPadding(padding)
end

--- Sets whether or not the background should be painted.  
--- @param paint boolean 
function PANEL:SetPaintBackground(paint)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @param height number 
function PANEL:SetStartHeight(height)
end

--- Toggles the expanded state of the DCollapsibleCategory.  
--- See DCollapsibleCategory:GetExpanded for a function to retrieve the expanded state.  
function PANEL:Toggle()
end
