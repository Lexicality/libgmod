--- @meta

--- @class DDrawer : GPanel
--- A simple Derma Drawer  
local PANEL = {}
_G.DDrawer = PANEL;
--- Closes the DDrawer.  
function PANEL:Close()
end

--- An Global.AccessorFunc that returns the Open Size of DDrawer.  
--- @return number @Open size.
function PANEL:GetOpenSize()
end

--- An Global.AccessorFunc that returns the Open Time of DDrawer.  
--- @return number @Time in seconds.
function PANEL:GetOpenTime()
end

--- Opens the DDrawer.  
function PANEL:Open()
end

--- An Global.AccessorFunc that sets the height of DDrawer  
--- @param Value number @Height of DDrawer
function PANEL:SetOpenSize(Value)
end

--- An Global.AccessorFunc that sets the time (in seconds) for DDrawer to open.  
--- @param value number @Length in seconds
function PANEL:SetOpenTime(value)
end

--- Toggles the DDrawer.  
function PANEL:Toggle()
end
