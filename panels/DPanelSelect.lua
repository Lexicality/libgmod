--- @meta

--- @class DPanelSelect : DPanelList
--- @deprecated  
--- 🛑 **DEPRECATED**: This is derived from the deprecated DPanelList.  
--- A base panel for things like DModelSelect.  
--- Basically, a list of panels that can be selected.  
--- Selected panel can be retrieved and has visual indication of being selected.  
local PANEL = {}
_G.DPanelSelect = PANEL;
--- Adds a panel to be selectable.  
--- @param pnl GPanel @The panel to add.
--- @param conVars? table @ConVars to set when this panel is selected
function PANEL:AddPanel(pnl, conVars)
end

--- Called when the selected panel changes.  
--- @param oldPnl GPanel @Old selected panel.
--- @param newPnl GPanel @New selected panel.
function PANEL:OnActivePanelChanged(oldPnl, newPnl)
end

--- Selects a given panel.  
--- @param pnl GPanel @Panel to select
function PANEL:SelectPanel(pnl)
end
