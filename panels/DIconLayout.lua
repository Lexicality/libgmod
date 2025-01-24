--- @meta

--- @class DIconLayout : DDragBase
--- DIconLayout is what replaced DPanelList in Garry's Mod 13.  
--- DPanelList still exists in GMod but is deprecated and does not support the new GWEN skin.  
--- DIconLayout is used to make a list of panels.  
--- Unlike DPanelList, DIconLayout does not automatically add a scroll bar - the example below shows you how you can do this.  
local PANEL = {}
_G.DIconLayout = PANEL;
--- Creates a replica of the DIconLayout it is called on.  
--- @return GPanel @The replica.
function PANEL:Copy()
end

--- Copies the contents (Child elements) of another DIconLayout to itself.  
--- @param from GPanel @DIconLayout to copy from.
function PANEL:CopyContents(from)
end

--- Returns the size of the border.  
--- @return number 
function PANEL:GetBorder()
end

--- Returns the direction that it will be layed out, using the DOCK enumerations.  
--- @return number @Layout direction.
function PANEL:GetLayoutDir()
end

--- Returns the distance between two 'icons' on the X axis.  
--- @return number @Distance between two 'icons' on the X axis.
function PANEL:GetSpaceX()
end

--- Returns distance between two "Icons" on the Y axis.  
--- @return number @distance between two "Icons" on the Y axis.
function PANEL:GetSpaceY()
end

--- Returns whether the icon layout will stretch its height to fit all the children.  
--- See also DIconLayout:GetStretchWidth  
--- @return boolean 
function PANEL:GetStretchHeight()
end

--- Returns whether the icon layout will stretch its width to fit all the children.  
--- See also DIconLayout:GetStretchHeight  
--- @return boolean 
function PANEL:GetStretchWidth()
end

--- Resets layout vars before calling Panel:InvalidateLayout. This is called when children are added or removed, and must be called when the spacing, border or layout direction is changed.  
function PANEL:Layout()
end

--- Called when the panel is modified.  
function PANEL:OnModified()
end

--- Sets the internal border (padding) within the DIconLayout. This will not change its size, only the positioning of children. You must call DIconLayout:Layout in order for the changes to take effect.  
--- @param width number @The border (padding) inside the DIconLayout.
function PANEL:SetBorder(width)
end

--- Sets the direction that it will be layed out, using the Enums/DOCK.  
--- Currently only TOP and LEFT are supported.  
--- @param direction number @Enums/DOCK
function PANEL:SetLayoutDir(direction)
end

--- Sets the horizontal (x) spacing between children within the DIconLayout. You must call DIconLayout:Layout in order for the changes to take effect.  
--- @param xSpacing number @The width of the gap between child objects.
function PANEL:SetSpaceX(xSpacing)
end

--- Sets the vertical (y) spacing between children within the DIconLayout. You must call DIconLayout:Layout in order for the changes to take effect.  
--- @param ySpacing number @The vertical gap between rows in the DIconLayout.
function PANEL:SetSpaceY(ySpacing)
end

--- If set to true, the icon layout will stretch its height to fit all the children.  
--- See also DIconLayout:SetStretchWidth  
--- @param do_stretch boolean 
function PANEL:SetStretchHeight(do_stretch)
end

--- If set to true, the icon layout will stretch its width to fit all the children.  
--- See also DIconLayout:SetStretchHeight  
--- @param stretchW boolean 
function PANEL:SetStretchWidth(stretchW)
end
