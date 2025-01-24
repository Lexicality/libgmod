--- @meta

--- @class DScrollPanel : DPanel
--- DScrollPanel is a VGUI Element similar to DPanel however it has a vertical scrollbar docked to the right which can be used to put more content in a smaller area. DScrollPanels are essentially DPanels with the Scroll Bar.  
--- This can be used to replace the DPanelList with DPanelList:EnableVerticalScrollbar and get similar functionality as well as using a non-deprecated element.  
--- If you would like to paint or edit the elements of the scrollbar use DScrollPanel:GetVBar. If you want to see if the scrollbar is visible then use the VBar.Enabled variable on the scrollbar's VBar.  
--- ℹ **NOTE**: Panel:DockPadding will not have an effect on children of this panel. Use the function on DScrollPanel:GetCanvas instead.  
local PANEL = {}
_G.DScrollPanel = PANEL;
--- Parents the passed panel to the DScrollPanel's canvas.  
--- @param pnl GPanel @The panel to add.
function PANEL:AddItem(pnl)
end

--- Returns the canvas ( The panel all child panels are parented to ) of the DScrollPanel.  
--- @return GPanel @The canvas
function PANEL:GetCanvas()
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Gets the DScrollPanels padding, set by DScrollPanel:SetPadding.  
--- @return number @DScrollPanels padding
function PANEL:GetPadding()
end

--- Returns the vertical scroll bar of the panel.  
--- @return GPanel @The DVScrollBar.
function PANEL:GetVBar()
end

--- Return the width of the DScrollPanel's canvas.  
--- @return number @The width of the DScrollPanel's canvas
function PANEL:InnerWidth()
end

--- Scrolls to the given child  
--- @param panel GPanel @The panel to scroll to, must be a child of the DScrollPanel.
function PANEL:ScrollToChild(panel)
end

--- @deprecated  
--- 🛑 **DEPRECATED**:   
--- Sets the DScrollPanel's padding. This function appears to be unused.  
--- @param padding number @The padding of the DScrollPanel.
function PANEL:SetPadding(padding)
end
