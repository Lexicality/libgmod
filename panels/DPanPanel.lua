--- @meta

--- @class DPanPanel : DPanel
--- A panel similar to DScrollPanel, but that allows the player to pan around, for example a zoomed in image within a small window.  
local PANEL = {}
_G.DPanPanel = PANEL;
--- Parents the passed panel to the DPanPanel:GetCanvas.  
--- @param pnl GPanel @The panel to add.
function PANEL:AddItem(pnl)
end

--- The internal canvas panel.  
--- @return GPanel @The canvas panel.
function PANEL:GetCanvas()
end

--- Scroll to a specific child panel.  
--- @param pnl GPanel @The panel to scroll to.
function PANEL:ScrollToChild(pnl)
end
